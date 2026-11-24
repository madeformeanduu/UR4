local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local HttpService = cloneref(game:GetService("HttpService"))
local LocalPlayer = Players.LocalPlayer

if _G.ESPPreview and _G.ESPPreview.Unload then
    local old = _G.ESPPreview
    pcall(function() old:Unload() end)
end

local M = {
    Library = nil,
    Target = nil,
    Config = {
        Enabled = true,
        Side = "Right",
        Gap = 6,
        Width = 250,
        Height = 330,
        Spin = true,
        SpinSpeed = 40,
        Zoom = 8,
        Pitch = 6,
        Yaw = 25,
        Reroll = 0,
    },
    _conns = {},
    _ui = nil,
    _holder = nil,
    _gui = nil,
    _clone = nil,
    _parts = {},
    _orbit = false,
    _hover = false,
    _lastRoll = 0,
    _lastCheck = 0,
    _charConn = nil,
    _attachToken = 0,
}

local BONES = {
    { "Head", "UpperTorso" },
    { "UpperTorso", "LowerTorso" },
    { "UpperTorso", "LeftUpperArm" },
    { "LeftUpperArm", "LeftLowerArm" },
    { "LeftLowerArm", "LeftHand" },
    { "UpperTorso", "RightUpperArm" },
    { "RightUpperArm", "RightLowerArm" },
    { "RightLowerArm", "RightHand" },
    { "LowerTorso", "LeftUpperLeg" },
    { "LeftUpperLeg", "LeftLowerLeg" },
    { "LeftLowerLeg", "LeftFoot" },
    { "LowerTorso", "RightUpperLeg" },
    { "RightUpperLeg", "RightLowerLeg" },
    { "RightLowerLeg", "RightFoot" },
}

local WHITE = Color3.fromRGB(255, 255, 255)
local BLACK = Color3.fromRGB(0, 0, 0)

local function themed(name, fallback)
    local l = M.Library
    return (l and l[name]) or fallback
end

local function register(inst, props)
    local l = M.Library
    if l and l.AddToRegistry then
        pcall(l.AddToRegistry, l, inst, props)
    end
end

local function fontOf()
    local l = M.Library
    return (l and l.Font) or Enum.Font.Code
end

local function toggleOf(name, default)
    local t = Toggles and Toggles[name]
    if t then return t.Value == true end
    return default
end

local function optionOf(name)
    local o = Options and Options[name]
    if o then return o.Value end
    return nil
end

local function colorOf(name, default)
    local v = optionOf(name)
    if typeof(v) == "Color3" then return v end
    return default
end

local function make(class, props, parent)
    local i = Instance.new(class)
    for k, v in pairs(props) do
        i[k] = v
    end
    i.Parent = parent
    return i
end

local function makeText(parent, str, props)
    local base = {
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Font = fontOf(),
        Text = str,
        TextSize = 13,
        TextColor3 = themed("FontColor", WHITE),
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextStrokeTransparency = 0.5,
        ZIndex = 16,
    }
    for k, v in pairs(props or {}) do
        base[k] = v
    end
    return make("TextLabel", base, parent)
end

local function project(cam, pos, size)
    local rel = cam.CFrame:PointToObjectSpace(pos)
    local depth = -rel.Z
    if depth <= 0.05 then return nil end
    local f = 1 / math.tan(math.rad(cam.FieldOfView) / 2)
    local aspect = size.X / size.Y
    local nx = (rel.X * f / aspect) / depth
    local ny = (rel.Y * f) / depth
    return Vector2.new((nx * 0.5 + 0.5) * size.X, (0.5 - ny * 0.5) * size.Y)
end

local function resolveHolder(window)
    if typeof(window) == "Instance" and window:IsA("GuiObject") then
        return window
    end
    if type(window) == "table" then
        for _, key in ipairs({ "Holder", "Outer", "Main", "Frame", "Window", "Gui" }) do
            local v = window[key]
            if typeof(v) == "Instance" and v:IsA("GuiObject") then
                return v
            end
        end
    end
    local gui = M.Library and M.Library.ScreenGui
    if gui then
        local best, area = nil, 0
        for _, c in ipairs(gui:GetChildren()) do
            if c:IsA("Frame") and c.Name ~= "\0ESPPreview" then
                local a = c.AbsoluteSize.X * c.AbsoluteSize.Y
                if a > area then
                    best, area = c, a
                end
            end
        end
        return best
    end
    return nil
end

local function makeBar(parent)
    local outline = make("Frame", {
        BackgroundColor3 = BLACK,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 14,
    }, parent)
    local fill = make("Frame", {
        BackgroundColor3 = WHITE,
        BorderSizePixel = 0,
        ZIndex = 15,
    }, outline)
    return { outline = outline, fill = fill }
end

local function buildESP(overlay)
    local esp = {}

    esp.fill = make("Frame", {
        BackgroundColor3 = WHITE,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 13,
    }, overlay)
    esp.fillGrad = make("UIGradient", { Rotation = 90 }, esp.fill)

    esp.outline = make("Frame", {
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 14,
    }, overlay)
    make("UIStroke", {
        Color = BLACK,
        Thickness = 3,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    }, esp.outline)

    esp.inline = make("Frame", {
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 15,
    }, overlay)
    esp.inlineStroke = make("UIStroke", {
        Color = WHITE,
        Thickness = 1,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    }, esp.inline)
    esp.inlineGrad = make("UIGradient", { Rotation = 90 }, esp.inlineStroke)

    esp.corners = {}
    for i = 1, 8 do
        local f = make("Frame", {
            BackgroundColor3 = WHITE,
            BorderSizePixel = 0,
            Visible = false,
            ZIndex = 15,
        }, overlay)
        make("UIStroke", {
            Color = BLACK,
            Thickness = 1,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        }, f)
        esp.corners[i] = f
    end

    esp.name = makeText(overlay, "", {
        Size = UDim2.fromOffset(220, 14),
        AnchorPoint = Vector2.new(0.5, 1),
        TextXAlignment = Enum.TextXAlignment.Center,
        TextStrokeTransparency = 0,
        TextSize = 13,
        Visible = false,
        ZIndex = 16,
    })

    esp.health = makeBar(overlay)
    esp.armor = makeBar(overlay)

    esp.skeleton = {}
    for i = 1, #BONES do
        esp.skeleton[i] = make("Frame", {
            BackgroundColor3 = WHITE,
            BorderSizePixel = 0,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Size = UDim2.fromOffset(0, 1),
            Visible = false,
            ZIndex = 15,
        }, overlay)
    end

    return esp
end

local function hideESP(esp)
    if not esp then return end
    esp.fill.Visible = false
    esp.outline.Visible = false
    esp.inline.Visible = false
    for _, c in ipairs(esp.corners) do c.Visible = false end
    esp.name.Visible = false
    esp.health.outline.Visible = false
    esp.armor.outline.Visible = false
    for _, s in ipairs(esp.skeleton) do s.Visible = false end
end

local function clearClone()
    if M._clone then
        pcall(function() M._clone:Destroy() end)
    end
    M._clone = nil
    M._parts = {}
end

local function buildClone(plr)
    clearClone()
    local ui = M._ui
    if not ui or not plr then return false end

    local char = plr.Character
    if not char then return false end

    local ok, clone = pcall(function()
        local old = char.Archivable
        char.Archivable = true
        local c = char:Clone()
        char.Archivable = old
        return c
    end)
    if not ok or not clone then return false end

    local hrp = clone:FindFirstChild("HumanoidRootPart")
    if not hrp or not clone:FindFirstChild("Head") then
        clone:Destroy()
        return false
    end

    local parts = {}
    for _, d in ipairs(clone:GetDescendants()) do
        if d:IsA("BaseScript") or d:IsA("ModuleScript") or d:IsA("Animator")
            or d:IsA("ForceField") or d:IsA("Highlight") or d:IsA("BillboardGui")
            or d:IsA("SurfaceGui") or d:IsA("ParticleEmitter") or d:IsA("Trail")
            or d:IsA("Beam") or d:IsA("Sound") or d:IsA("Light") then
            pcall(function() d:Destroy() end)
        elseif d:IsA("BasePart") then
            d.Anchored = true
            d.CanCollide = false
            d.CanQuery = false
            d.CanTouch = false
            if d ~= hrp and d.Transparency < 1 then
                parts[#parts + 1] = d
            end
        end
    end

    if #parts < 6 then
        clone:Destroy()
        return false
    end

    local hum = clone:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        hum.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
    end

    clone.Name = "\0"
    clone.PrimaryPart = hrp
    clone.Parent = ui.world
    clone:PivotTo(CFrame.new(0, 0, 0))

    M._clone = clone
    M._parts = parts
    return true
end

local function validCandidate(p)
    if p == LocalPlayer then return false end
    local char = p.Character
    if not char then return false end
    if not char:FindFirstChild("HumanoidRootPart") or not char:FindFirstChild("Head") then return false end
    local hum = char:FindFirstChildOfClass("Humanoid")
    return hum ~= nil and hum.Health > 0
end

function M:SetPlayer(plr)
    if self._charConn then
        pcall(function() self._charConn:Disconnect() end)
        self._charConn = nil
    end
    self.Target = plr
    self._lastRoll = os.clock()
    if not plr then
        clearClone()
        return false
    end

    local ok = buildClone(plr)
    self._charConn = plr.CharacterAdded:Connect(function()
        task.wait(0.8)
        if M.Target == plr then
            if not buildClone(plr) then
                M:Reroll()
            end
        end
    end)
    return ok
end

function M:Reroll()
    local list = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if validCandidate(p) and (p ~= self.Target or false) then
            list[#list + 1] = p
        end
    end
    if #list == 0 then
        for _, p in ipairs(Players:GetPlayers()) do
            if validCandidate(p) then list[#list + 1] = p end
        end
    end

    for _ = 1, math.min(#list, 6) do
        local idx = math.random(#list)
        local pick = table.remove(list, idx)
        if self:SetPlayer(pick) then
            return pick
        end
    end

    if LocalPlayer.Character and self:SetPlayer(LocalPlayer) then
        return LocalPlayer
    end
    return nil
end

local function syncMenu()
    local cfg = M.Config
    local en = Toggles and Toggles.ESPPreviewEnabled
    if en then cfg.Enabled = en.Value == true end
    local sp = Toggles and Toggles.ESPPreviewSpin
    if sp then cfg.Spin = sp.Value == true end
    local speed = optionOf("ESPPreviewSpeed")
    if tonumber(speed) then cfg.SpinSpeed = speed end
    local side = optionOf("ESPPreviewSide")
    if type(side) == "table" then side = side[1] end
    if side == "Left" or side == "Right" then cfg.Side = side end
    local rr = optionOf("ESPPreviewReroll")
    if tonumber(rr) then cfg.Reroll = rr end
end

local function espText(plr)
    local name = plr.DisplayName or plr.Name
    local color = colorOf("ESPNameColor", WHITE)

    local friend = shared and shared.FriendsCache and shared.FriendsCache[plr.UserId]
    local team = false
    if type(isSameTeam) == "function" then
        local ok, res = pcall(isSameTeam, plr)
        team = ok and res == true
    end

    if team then
        name = "◉ " .. name .. " ◉"
        color = Color3.fromRGB(0, 255, 0)
    elseif friend then
        name = "★ " .. name .. " ★"
        color = Color3.fromRGB(0, 200, 255)
    end

    local text = name
    if _G.j2h5g8f1 and _G.j2h5g8f1[plr.UserId] then
        text = text .. " [MOD]"
    end

    local char = plr.Character
    if toggleOf("ESPShowDistance", false) then
        local head = char and char:FindFirstChild("Head")
        local cam = Workspace.CurrentCamera
        if head and cam then
            text = text .. " [" .. math.floor((cam.CFrame.Position - head.Position).Magnitude) .. "m]"
        end
    end
    if toggleOf("ESPShowHealth", false) then
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if hum then
            text = text .. " " .. math.floor(hum.Health) .. " HP"
        end
    end

    return text, color
end

local function placeBar(bar, side, slot, minX, minY, maxX, maxY, pct, color)
    local thick = 3
    local gap = 4 + slot * (thick + 3)
    local x, y, w, h
    if side == "Left" or side == "Right" then
        h = maxY - minY
        w = thick
        y = minY
        x = (side == "Left") and (minX - gap - thick) or (maxX + gap)
    else
        w = maxX - minX
        h = thick
        x = minX
        y = (side == "Top") and (minY - gap - thick) or (maxY + gap)
    end

    bar.outline.Position = UDim2.fromOffset(x - 1, y - 1)
    bar.outline.Size = UDim2.fromOffset(w + 2, h + 2)
    bar.outline.Visible = true

    if side == "Left" or side == "Right" then
        local len = math.max(1, math.floor(h * pct))
        bar.fill.Position = UDim2.fromOffset(1, 1 + h - len)
        bar.fill.Size = UDim2.fromOffset(w, len)
    else
        local len = math.max(1, math.floor(w * pct))
        bar.fill.Position = UDim2.fromOffset(1, 1)
        bar.fill.Size = UDim2.fromOffset(len, h)
    end
    bar.fill.BackgroundColor3 = color
end

local function updateESP()
    local ui = M._ui
    local esp = ui.esp
    local clone = M._clone
    local plr = M.Target

    if not clone or not plr or not clone.Parent then
        hideESP(esp)
        return
    end

    local cam = ui.cam
    local size = ui.viewport.AbsoluteSize
    if size.X < 8 or size.Y < 8 then
        hideESP(esp)
        return
    end

    local minX, minY, maxX, maxY = math.huge, math.huge, -math.huge, -math.huge
    for _, part in ipairs(M._parts) do
        if part.Parent then
            local cf, sz = part.CFrame, part.Size
            local hx, hy, hz = sz.X / 2, sz.Y / 2, sz.Z / 2
            for sx = -1, 1, 2 do
                for sy = -1, 1, 2 do
                    for sz2 = -1, 1, 2 do
                        local p = project(cam, cf * Vector3.new(hx * sx, hy * sy, hz * sz2), size)
                        if p then
                            if p.X < minX then minX = p.X end
                            if p.Y < minY then minY = p.Y end
                            if p.X > maxX then maxX = p.X end
                            if p.Y > maxY then maxY = p.Y end
                        end
                    end
                end
            end
        end
    end

    if minX == math.huge then
        hideESP(esp)
        return
    end

    minX, minY, maxX, maxY = math.floor(minX), math.floor(minY), math.floor(maxX), math.floor(maxY)
    local w, h = maxX - minX, maxY - minY

    local boxOn = toggleOf("BoxESPEnabled", true)
    local boxType = optionOf("BoxESPType")
    if type(boxType) == "table" then boxType = boxType[1] end
    boxType = boxType or "2D"

    local c1 = colorOf("BoxESPColor", WHITE)
    local gradOn = toggleOf("BoxESPGradient", false)
    local c2 = gradOn and colorOf("BoxESPColor2", c1) or c1
    local seq = ColorSequence.new(c1, c2)

    local is2D = boxOn and boxType == "2D"
    local isCorner = boxOn and boxType == "Corner"

    esp.outline.Visible = is2D
    esp.inline.Visible = is2D
    esp.fill.Visible = is2D and gradOn
    if is2D then
        esp.outline.Position = UDim2.fromOffset(minX, minY)
        esp.outline.Size = UDim2.fromOffset(w, h)
        esp.inline.Position = UDim2.fromOffset(minX - 1, minY - 1)
        esp.inline.Size = UDim2.fromOffset(w + 2, h + 2)
        esp.inlineGrad.Color = seq
        if gradOn then
            esp.fill.Position = UDim2.fromOffset(minX, minY)
            esp.fill.Size = UDim2.fromOffset(w, h)
            esp.fillGrad.Color = seq
            esp.fillGrad.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 1),
                NumberSequenceKeypoint.new(1, 0.5),
            })
        end
    end

    local cl = math.max(4, math.floor(w * 0.3))
    local ch = math.max(4, math.floor(h * 0.3))
    local layout = {
        { minX, minY, cl, 1 }, { minX, minY, 1, ch },
        { maxX - cl, minY, cl, 1 }, { maxX - 1, minY, 1, ch },
        { minX, maxY - 1, cl, 1 }, { minX, maxY - ch, 1, ch },
        { maxX - cl, maxY - 1, cl, 1 }, { maxX - 1, maxY - ch, 1, ch },
    }
    for i, c in ipairs(esp.corners) do
        c.Visible = isCorner
        if isCorner then
            local l = layout[i]
            c.Position = UDim2.fromOffset(l[1], l[2])
            c.Size = UDim2.fromOffset(l[3], l[4])
            c.BackgroundColor3 = c1
        end
    end

    local masterOn = toggleOf("ESPEnabled", true)
    local showName = masterOn and toggleOf("ESPShowNames", true)
    if showName then
        local text, color = espText(plr)
        esp.name.Text = text
        esp.name.TextColor3 = color
        esp.name.Position = UDim2.fromOffset((minX + maxX) / 2, minY - 4)
        esp.name.Visible = true
    else
        esp.name.Visible = false
    end

    local barTypes = optionOf("BoxESPBarType")
    local healthOn, armorOn = false, false
    if type(barTypes) == "table" then
        healthOn = barTypes.Health == true
        armorOn = barTypes.Armor == true
    elseif _G.box_esp_bar_types then
        healthOn = _G.box_esp_bar_types.Health == true
        armorOn = _G.box_esp_bar_types.Armor == true
    end

    local hpSide = optionOf("BoxESPHealthPosition")
    if type(hpSide) == "table" then hpSide = hpSide[1] end
    hpSide = hpSide or "Left"
    local arSide = optionOf("BoxESPArmorPosition")
    if type(arSide) == "table" then arSide = arSide[1] end
    arSide = arSide or "Left"

    local realChar = plr.Character
    local realHum = realChar and realChar:FindFirstChildOfClass("Humanoid")
    local cloneHum = clone:FindFirstChildOfClass("Humanoid")
    local hum = realHum or cloneHum

    if healthOn and hum then
        local pct = math.clamp(hum.Health / math.max(1, hum.MaxHealth), 0, 1)
        local color
        if pct > 0.5 then
            color = Color3.fromRGB(255, 255, 0):Lerp(Color3.fromRGB(131, 245, 78), (pct - 0.5) * 2)
        else
            color = Color3.fromRGB(252, 71, 77):Lerp(Color3.fromRGB(255, 255, 0), pct * 2)
        end
        placeBar(esp.health, hpSide, 0, minX, minY, maxX, maxY, pct, color)
    else
        esp.health.outline.Visible = false
    end

    if armorOn then
        local armor = 0
        local fx = realChar and realChar:FindFirstChild("BodyEffects")
        local av = fx and fx:FindFirstChild("Armor")
        if av and tonumber(av.Value) then armor = av.Value end
        local slot = (healthOn and hpSide == arSide) and 1 or 0
        placeBar(esp.armor, arSide, slot, minX, minY, maxX, maxY, math.clamp(armor / 200, 0, 1), Color3.fromRGB(52, 131, 235))
    else
        esp.armor.outline.Visible = false
    end

    local skelOn = toggleOf("ESPShowSkeleton", false)
    local skelColor = colorOf("SkeletonColor", WHITE)
    for i, bone in ipairs(BONES) do
        local line = esp.skeleton[i]
        local a, b = clone:FindFirstChild(bone[1]), clone:FindFirstChild(bone[2])
        if skelOn and a and b then
            local p1, p2 = project(cam, a.Position, size), project(cam, b.Position, size)
            if p1 and p2 then
                local d = p2 - p1
                line.Position = UDim2.fromOffset((p1.X + p2.X) / 2, (p1.Y + p2.Y) / 2)
                line.Size = UDim2.fromOffset(d.Magnitude, 1)
                line.Rotation = math.deg(math.atan2(d.Y, d.X))
                line.BackgroundColor3 = skelColor
                line.Visible = true
            else
                line.Visible = false
            end
        else
            line.Visible = false
        end
    end
end

local function step(dt)
    local ui = M._ui
    if not ui then return end

    syncMenu()
    local cfg = M.Config
    local holder = M._holder

    local show = cfg.Enabled and holder ~= nil and holder.Parent ~= nil
        and holder.Visible and holder.AbsoluteSize.X > 10
    ui.panel.Visible = show == true
    if not show then return end

    local W, H = cfg.Width, cfg.Height
    if ui.lastW ~= W or ui.lastH ~= H then
        ui.lastW, ui.lastH = W, H
        ui.panel.Size = UDim2.fromOffset(W, H)
    end

    local abs, sz = holder.AbsolutePosition, holder.AbsoluteSize
    local gui = M._gui
    local origin = gui.AbsolutePosition
    local screen = gui.AbsoluteSize
    local x
    local side = cfg.Side
    if side == "Right" and abs.X + sz.X + cfg.Gap + W > origin.X + screen.X then
        side = "Left"
    end
    if side == "Left" then
        x = abs.X - cfg.Gap - W
    else
        x = abs.X + sz.X + cfg.Gap
    end
    ui.panel.Position = UDim2.fromOffset(x - origin.X, abs.Y - origin.Y)

    if cfg.Spin and not M._orbit then
        cfg.Yaw = (cfg.Yaw + cfg.SpinSpeed * dt) % 360
    end

    local clone = M._clone
    if clone and clone.Parent then
        clone:PivotTo(CFrame.Angles(0, math.rad(cfg.Yaw), 0))
    end

    local focus = Vector3.new(0, -0.1, 0)
    local off = CFrame.Angles(-math.rad(cfg.Pitch), 0, 0):VectorToWorldSpace(Vector3.new(0, 0, cfg.Zoom))
    ui.cam.CFrame = CFrame.lookAt(focus + off, focus)

    local now = os.clock()
    if now - M._lastCheck >= 1 then
        M._lastCheck = now
        local t = M.Target
        local bad = not t or t.Parent ~= Players
        if not bad and t ~= LocalPlayer and not validCandidate(t) then
            bad = true
        end
        if bad or not M._clone then
            M:Reroll()
        elseif cfg.Reroll > 0 and now - M._lastRoll >= cfg.Reroll then
            M:Reroll()
        end
    end

    ui.title.Text = "ESP Preview"
    ui.target.Text = M.Target and M.Target.Name or "none"
    ui.spinBtn.Text = cfg.Spin and "Spin: On" or "Spin: Off"

    updateESP()
end

local function buildUI(gui)
    local cfg = M.Config
    local ui = {}

    ui.panel = make("Frame", {
        Name = "\0ESPPreview",
        Size = UDim2.fromOffset(cfg.Width, cfg.Height),
        BackgroundColor3 = themed("BackgroundColor", Color3.fromRGB(20, 20, 20)),
        BorderColor3 = themed("OutlineColor", Color3.fromRGB(50, 50, 50)),
        BorderMode = Enum.BorderMode.Inset,
        Visible = false,
        ZIndex = 10,
    }, gui)
    register(ui.panel, { BackgroundColor3 = "BackgroundColor", BorderColor3 = "OutlineColor" })

    ui.inner = make("Frame", {
        Position = UDim2.fromOffset(1, 1),
        Size = UDim2.new(1, -2, 1, -2),
        BackgroundColor3 = themed("BackgroundColor", Color3.fromRGB(20, 20, 20)),
        BorderColor3 = BLACK,
        BorderMode = Enum.BorderMode.Inset,
        ZIndex = 11,
    }, ui.panel)
    register(ui.inner, { BackgroundColor3 = "BackgroundColor" })

    ui.accent = make("Frame", {
        Size = UDim2.new(1, 0, 0, 2),
        BackgroundColor3 = themed("AccentColor", Color3.fromRGB(153, 188, 255)),
        BorderSizePixel = 0,
        ZIndex = 12,
    }, ui.inner)
    register(ui.accent, { BackgroundColor3 = "AccentColor" })

    ui.title = makeText(ui.inner, "ESP Preview", {
        Position = UDim2.fromOffset(6, 4),
        Size = UDim2.new(0.5, -6, 0, 16),
        ZIndex = 13,
    })
    register(ui.title, { TextColor3 = "FontColor" })

    ui.target = makeText(ui.inner, "", {
        Position = UDim2.new(0.5, 0, 0, 4),
        Size = UDim2.new(0.5, -6, 0, 16),
        TextXAlignment = Enum.TextXAlignment.Right,
        TextColor3 = Color3.fromRGB(140, 143, 153),
        ZIndex = 13,
    })

    ui.stage = make("Frame", {
        Position = UDim2.fromOffset(4, 24),
        Size = UDim2.new(1, -8, 1, -56),
        BackgroundColor3 = themed("MainColor", Color3.fromRGB(28, 28, 28)),
        BorderColor3 = themed("OutlineColor", Color3.fromRGB(50, 50, 50)),
        BorderMode = Enum.BorderMode.Inset,
        ClipsDescendants = true,
        ZIndex = 12,
    }, ui.inner)
    register(ui.stage, { BackgroundColor3 = "MainColor", BorderColor3 = "OutlineColor" })

    ui.viewport = make("ViewportFrame", {
        Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = themed("MainColor", Color3.fromRGB(28, 28, 28)),
        BorderSizePixel = 0,
        Ambient = Color3.fromRGB(165, 165, 165),
        LightColor = WHITE,
        LightDirection = Vector3.new(-1, -2, -1),
        ZIndex = 12,
    }, ui.stage)
    register(ui.viewport, { BackgroundColor3 = "MainColor" })

    ui.world = make("WorldModel", {}, ui.viewport)
    ui.cam = make("Camera", { FieldOfView = 50 }, ui.viewport)
    ui.viewport.CurrentCamera = ui.cam

    ui.overlay = make("Frame", {
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ZIndex = 13,
    }, ui.stage)
    ui.esp = buildESP(ui.overlay)

    ui.hit = make("TextButton", {
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false,
        ZIndex = 20,
    }, ui.stage)

    local function button(text, anchorX, callback)
        local b = make("TextButton", {
            AnchorPoint = Vector2.new(anchorX, 1),
            Position = UDim2.new(anchorX, anchorX == 0 and 4 or -4, 1, -4),
            Size = UDim2.new(0.5, -6, 0, 20),
            BackgroundColor3 = themed("MainColor", Color3.fromRGB(28, 28, 28)),
            BorderColor3 = BLACK,
            BorderMode = Enum.BorderMode.Inset,
            AutoButtonColor = false,
            Font = fontOf(),
            Text = text,
            TextSize = 13,
            TextColor3 = themed("FontColor", WHITE),
            ZIndex = 13,
        }, ui.inner)
        register(b, { BackgroundColor3 = "MainColor", TextColor3 = "FontColor" })
        table.insert(M._conns, b.MouseButton1Click:Connect(callback))
        return b
    end

    ui.rerollBtn = button("Reroll", 0, function()
        M:Reroll()
    end)
    ui.spinBtn = button("Spin: On", 1, function()
        local t = Toggles and Toggles.ESPPreviewSpin
        if t and t.SetValue then
            t:SetValue(not t.Value)
        else
            M.Config.Spin = not M.Config.Spin
        end
    end)

    table.insert(M._conns, ui.hit.MouseEnter:Connect(function() M._hover = true end))
    table.insert(M._conns, ui.hit.MouseLeave:Connect(function() M._hover = false end))
    table.insert(M._conns, ui.hit.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            M._orbit = true
        end
    end))
    table.insert(M._conns, UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            M._orbit = false
        end
    end))
    table.insert(M._conns, UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and M._orbit then
            local cfg2 = M.Config
            cfg2.Yaw = (cfg2.Yaw + input.Delta.X * 0.6) % 360
            cfg2.Pitch = math.clamp(cfg2.Pitch + input.Delta.Y * 0.3, -15, 60)
        elseif input.UserInputType == Enum.UserInputType.MouseWheel and M._hover then
            local cfg2 = M.Config
            cfg2.Zoom = math.clamp(cfg2.Zoom - input.Position.Z * 0.8, 3, 22)
        end
    end))

    return ui
end

function M:SetLibrary(lib)
    self.Library = lib
end

function M:Attach(window)
    self:Detach()
    self._attachToken = self._attachToken + 1
    local token = self._attachToken

    local function finish(holder)
        local gui = holder:FindFirstAncestorWhichIsA("ScreenGui") or (self.Library and self.Library.ScreenGui)
        if not gui then
            warn("[ESPPreview] no ScreenGui found")
            return false
        end
        self._holder = holder
        self._gui = gui
        self._ui = buildUI(gui)
        table.insert(self._conns, RunService.RenderStepped:Connect(function(dt)
            local ok, err = pcall(step, dt)
            if not ok and not self._warned then
                self._warned = true
                warn("[ESPPreview] " .. tostring(err))
            end
        end))
        self:Reroll()
        return true
    end

    local holder = resolveHolder(window)
    if holder then
        return finish(holder)
    end

    task.spawn(function()
        for _ = 1, 20 do
            task.wait(0.5)
            if self._attachToken ~= token then return end
            local h = resolveHolder(window)
            if h then
                finish(h)
                return
            end
        end
        warn("[ESPPreview] could not find the menu window")
    end)
    return false
end

function M:Detach()
    for _, c in ipairs(self._conns) do
        pcall(function() c:Disconnect() end)
    end
    self._conns = {}
    if self._charConn then
        pcall(function() self._charConn:Disconnect() end)
        self._charConn = nil
    end
    clearClone()
    if self._ui and self._ui.panel then
        pcall(function() self._ui.panel:Destroy() end)
    end
    self._ui = nil
    self._holder = nil
    self._gui = nil
    self._orbit = false
    self._hover = false
    self._warned = nil
    self.Target = nil
end

function M:BuildSection(tab, side)
    if not tab then return nil end
    if Toggles and Toggles.ESPPreviewEnabled then return nil end

    local group
    if side == "Left" then
        group = tab:AddLeftGroupbox("ESP Preview")
    else
        group = tab:AddRightGroupbox("ESP Preview")
    end

    group:AddToggle("ESPPreviewEnabled", { Text = "Show Preview", Default = true })
    group:AddToggle("ESPPreviewSpin", { Text = "Spin", Default = true })
    group:AddSlider("ESPPreviewSpeed", {
        Text = "Spin Speed", Default = self.Config.SpinSpeed,
        Min = 0, Max = 360, Rounding = 0, Suffix = "°/s",
    })
    group:AddDropdown("ESPPreviewSide", {
        Text = "Dock Side", Values = { "Right", "Left" }, Default = "Right",
    })
    group:AddSlider("ESPPreviewReroll", {
        Text = "Auto Reroll", Default = 0,
        Min = 0, Max = 60, Rounding = 0, Suffix = "s",
    })
    group:AddButton("Reroll Player", function()
        M:Reroll()
    end)

    return group
end

function M:Unload()
    self:Detach()
    if _G.ESPPreview == self then
        _G.ESPPreview = nil
    end
end

_G.ESPPreview = M
return M
