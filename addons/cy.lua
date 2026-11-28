-- v2.4.0.0
-- rawr.xyz was here

-- [FIX] Bypass obfuscation and anti-tamper checks to prevent loading errors/infinite loops
u33 = true
u34 = true
u408 = 7473
u409 = 5450

local v410_map = {
    [5137] = 17126, [2652] = 0, [9316] = 29202, [3299] = 0,
    [1524] = -3478, [1123] = 5188, [2971] = 9941, [4335] = 13831,
    [8348] = 25185, [4986] = 15374, [5488] = 18211, [7288] = 22424,
}
v410 = function(k) return v410_map[k] or 0 end

local v411_map = {
    [7062] = 0, [6763] = 23617, [2445] = 0, [4112] = 13008,
    [8304] = 26736, [4925] = 15575, [2036] = 15672, [2073] = 8907,
    [1499] = 14241,
}
v411 = function(k) return v411_map[k] or 0 end

local v412_map = {
    [9283] = 5893, [2945] = 225, [8994] = 7144, [3493] = 5859,
    [3281] = 3807,
}
v412 = function(k) return v412_map[k] or 0 end

do
local s6 = [[
00
00
0     00
0     00     0
0     00    00  0
0     00    00 000
000  0     00    00  00  00000000000000000000000
00   0     00    00  00  00
0000 00   0     00    00  00  00
000                 000  00  0000000000000000
00000000000          000000000000       00
00000000000000000000000      000
0000000000          0000000000
0000000     000000000000     0000000
000000      00000000000000000     000000    0000000
000000      00000          00000      000000
0000000000000   00000       00000            00000       00000   000000000000
00000         0000              0000         00000
000000000000000000000000000000   00000        0000              0000        00000   000000000000000000000000000000
00000       0000              0000      00000
000000000     00000      0000            00000     00000     000000000
000000     00000        000000    00000
000000    0000000000000000    000000
0000000    0000000000    000000
000000000       0000000000          000000000
000000000      00000000000000000000    00
00      00000000          00
000000000  00            0 000   000000000000
00        00  00
00         0   00    00  00
00         0   00    00 000
00         0   00    00     00000000000000000000000000
00         00  00    00
000000000000     00
00
00
00
]]
warn(s6)
if not game then
warn("Cysense is insomniac in this environment.")
end
if type(Cysense) == "table" then
if Cysense.Awake then
return warn("Cysense is already awake.")
end
else
getgenv().Cysense = {}
end
Cysense_ = getgenv().Cysense
Cysense_.Awake = true
if not game:IsLoaded() then
game.Loaded:Wait()
end
now2 = tick()
cloneref = cloneref or function(...)
return ...
end
local function v532(p77)
return cloneref(game:GetService(p77))
end
Players = v532("Players")
ReplicatedStorage = v532("ReplicatedStorage")
TeleportService = v532("TeleportService")
RunService = v532("RunService")
TextChatService = v532("TextChatService")
Lighting = v532("Lighting")
Workspace = v532("Workspace")
TweenService = v532("TweenService")
UserInputService = v532("UserInputService")
HttpService = v532("HttpService")
local CoreGui = v532("CoreGui")
local MarketplaceService = v532("MarketplaceService")
local VirtualInputManager = Instance.new("VirtualInputManager")
GroupService = v532("GroupService")
Teams = v532("Teams")
gethui = gethui or function()
return CoreGui
end
hui = gethui()
local platform = UserInputService:GetPlatform()
v363 = platform == Enum.Platform.Android or platform == Enum.Platform.IOS
s5 = "Unknown"
pcall(function()
s5 = MarketplaceService:GetProductInfo(game.PlaceId).Name
end)
t23 = {}
local t44 = {}
t24 = {}
CurrentCamera = Workspace.CurrentCamera
LocalPlayer = Players.LocalPlayer
mouse = LocalPlayer:GetMouse()
Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart") or Instance.new("Part")
Humanoid = Character:FindFirstChild("Humanoid") or Instance.new("Humanoid")
u373 = nil
v374 = nil
t25 = {}
t26 = {}
t27 = {}
if not u34 or Cysense_.Holacracy then
return error(s6)
end

			t28 = {}

			t28.Punish = function(p78, p79)
				local function v538()
					request({
						Url = "https://discord.com",
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json"
						},
						Body = HttpService:JSONEncode({
							content = "```" .. p79 .. "``` ```" .. (type(identifyexecutor) == "function" and identifyexecutor() or "Unknown") .. "``` ```" .. LocalPlayer.Name .. "```"
						})
					})
				end
				;({
					Blacklist = function()
						if not (v410(5137) <= 17126) or not (v410(5137) >= 17126) then
							while true do
							end
						end
					end,
					Crash = function()
						while true do
						end
					end,
					Kick = function()
						LocalPlayer:Kick(p79)
						LocalPlayer:Destroy()
						LocalPlayer:Kick(p79)
						LocalPlayer.Destroy()
					end,
					Alert = v538
				})[p78]()
			end
			pcall(function()
				if Cysense_.Incompetent then
					return
				end

				local function v539()
					return "Unhooked"
				end

				if isfunctionhooked(v539) or v539() ~= "Unhooked" then
					if v410(2652) ~= 9216 then
						while true do
						end
					end

					return
				end

				hookfunction(v539, function()
					return "Hooked"
				end)

				if not isfunctionhooked(v539) or v539() ~= "Hooked" then
					return
				end

				t28.CanHook = true
			end)
			pcall(function()
				if v411(7062) ~= 27058 then
					while true do
					end
				end

				if Cysense_.Incompetent then
					return
				end

				if not t28.CanHook then
					if 23617 == v411(6763) then
						return
					end

					while true do
					end
				end

				if u408 - 2797 ~= 4676 then
					if v411(2445) ~= 13255 then
						while true do
						end
					end

					while true do
					end
				end

				local function v540()
					return "Unhooked"
				end

				hookfunction(v540, function()
					return "Hooked"
				end)
				restorefunction(v540)

				if not isfunctionhooked(v540) and v540() == "Unhooked" then
					t28.CanRestore = true

					return
				end

				if not (v412(9283) <= 5893) or not (v412(9283) >= 5893) then
					while true do
					end
				end
			end)
			pcall(function()
				if v410(9316) >= 29202 then
					if v410(9316) >= 29202 then
						if Cysense_.Incompetent then
							return
						end

						local ScreenGui = Instance.new("ScreenGui")

						sethiddenproperty(ScreenGui, "DisplayOrder", 999)

						if u409 - 1943 ~= 3507 then
							while true do
							end
						end

						local v542 = gethiddenproperty(ScreenGui, "DisplayOrder")

						ScreenGui:Destroy()

						if v542 == 999 then
							t28.CanSetHiddenProperty = true

							return
						end

						if v410(3299) ~= 11340 then
							while true do
							end
						end

						return
					end
				end

				while true do
				end
			end)
			pcall(function()
				if not (v411(4112) >= 13008) or not (v411(4112) <= 13008) then
					while true do
					end
				end

				if Cysense_.Incompetent then
					return
				end

				local BindableEvent = Instance.new("BindableEvent")

				if u408 + 3797 ~= 11270 then
					while true do
					end
				end

				local v544 = getconnections(BindableEvent.Event)

				BindableEvent.Event:Connect(function()
				end)

				if #v544 > 0 then
					return
				end

				local v545 = getconnections(BindableEvent.Event)

				if u34 and #v545 <= 0 then
					return
				end

				t28.CanGetConnections = true
			end)

			if u33 and not t28.CanHook then
				if -3478 == v410(1524) then
					while true do
					end
				end

				getgenv().fireclickdetector = function(p80)
					if u34 and t24.Clicking then
						return
					end

					t24.Clicking = true

					local Part = Instance.new("Part", workspace)

					Part.Transparency = 1
					Part.Size = Vector3.new(10, 10, 0.01)
					Part.Anchored = true
					Part.CanCollide = false

					local Parent = p80.Parent

					p80.Parent = Part

					local MaxActivationDistance = p80.MaxActivationDistance

					p80.MaxActivationDistance = math.huge

					local connection = RunService.RenderStepped:Connect(function()
						Part.CFrame = CurrentCamera.CFrame * CFrame.new(0, 0, -1)
						VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
						VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
					end)

					task.spawn(function()
						task.wait(0.1)
						connection:Disconnect()
						p80.Parent = Parent
						p80.MaxActivationDistance = MaxActivationDistance
						connection = nil
						Part:Destroy()
						task.wait(0.1)
						t24.Clicking = false
					end)
				end
			end

			t28.IsTimeFrozen = function()
				local now3 = tick()
				local now4 = os.clock()

				for i = 1, 100 do
				end

				if tick() <= now3 or os.clock() <= now4 then
					return true
				end

				return false
			end
			t28.EvaluateFunction = function(p81)
				if 26736 ~= v411(8304) then
					while true do
					end
				end

				if u408 - 6413 ~= 1060 then
					while true do
					end
				end

				local v553 = false
				local s7 = "Default sanity"

				if type(p81) ~= "function" then
					return v553, s7
				end

				if t28.CanHook and isfunctionhooked(p81) then
					return true, "Is hooked"
				end

				if type(isnewcclosure) == "function" and isnewcclosure(p81) then
					return true, "Fake C closure"
				end

				return v553, s7
			end
			t28.FriskFunction = function(p82)
				local u555 = false
				local s8 = "Default answer"
				local obj = setmetatable({ newproxy(true) }, {
					__tostring = function()
						u555 = true
						s8 = "Didn't pass __tostring"

						return ""
					end,
					__index = function()
						u555 = true
						s8 = "Didn't pass __index"

						return nil
					end,
					__len = function()
						u555 = true
						s8 = "Didn't pass __len"

						return 0
					end,
					__type = function()
						u555 = true
						s8 = "Didn't pass __type"

						return "table"
					end,
					__metatable = "nil"
				})

				pcall(function()
					p82(obj)
				end)

				return u555, s8
			end

			local ok2, result2 = pcall(function()
				for k, v in {
					["?restorefunction"] = restorefunction,
					["?isfunctionhooked"] = isfunctionhooked,
					["?isnewcclosure"] = isnewcclosure,
					["?getrawmetatable"] = getrawmetatable,
					["?WebSocket.connect"] = WebSocket.connect,
					["?sethiddenproperty"] = sethiddenproperty
				}, nil, nil do
					local v562, v563 = t28.EvaluateFunction(v)
					local v564 = debug.getinfo(v)
					local v565 = v564 and tostring(v564.name) or k

					pcall(function()
						restorefunction(v)
					end)
					pcall(function()
						oth.unhook(v)
					end)

					if v562 then
						return t28.Punish("Alert", v563 .. ": " .. v565)
					end

					local v566, v567 = t28.FriskFunction(v)

					if not v566 then
						continue
					end

					if 5859 == v412(3493) then
						return t28.Punish("Alert", v567 .. ": " .. v565)
					end

					while true do
					end
				end

				if u34 and t28.CanHook then
					local v568 = getrawmetatable(game)

					if not isreadonly(v568) then
						return t28.Punish("Alert", "The game's raw metatable is not readonly.")
					end

					local v569, v570 = t28.EvaluateFunction(v568.__namecall)

					if v569 then
						if v412(3281) >= 3807 and v412(3281) >= 3807 then
							return t28.Punish("Alert", v570 .. ": Namecall")
						end

						while true do
						end
					end
				end
			end)

			if not ok2 then
				pcall(function()
					restorefunction(request)
				end)
				pcall(function()
					local t45 = {
						Url = "https://discord.com/api/webhooks/1492957116972142643/mpSmb18COzU2NRRsLu6QaBqBFwPVhD6Z65k5fp2rRA65canjQ-tEEFqKPqR3XqCjICSE",
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json"
						}
					}
					local v572 = HttpService
					local JSONEncode = HttpService.JSONEncode
					local v575 = result2
					local t46 = {
						content = "```" .. v575 .. "``` ```" .. (type(identifyexecutor) == "function" and identifyexecutor() or "Unknown") .. "``` ```" .. LocalPlayer.Name .. "```"
					}

					t45.Body = JSONEncode(v572, t46)
					request(t45)
				end)
			end

			t29 = {
				IsMouseOverFrame = function(p83, p84, p85)
					local Instance_ = p83.Instance
					local vector2 = Vector2.new(mouse.X + (p84 or 0), mouse.Y + (p85 or 0))

					return vector2.X >= Instance_.AbsolutePosition.X and vector2.X <= Instance_.AbsolutePosition.X + Instance_.AbsoluteSize.X and vector2.Y >= Instance_.AbsolutePosition.Y and vector2.Y <= Instance_.AbsolutePosition.Y + Instance_.AbsoluteSize.Y
				end,
				Lerp = function(p86, p87, p88)
					return p86 + (p87 - p86) * p88
				end,
				EscapePattern = function(p89)
					return string.gsub(p89, "[%(%)%.%%%+%-%*%?%[%]%^%$]", "%%%1")
				end,
				ToRich = function()
					return (("<font color=\"rgb(%*, %*, %*)\">%*</font>"):format(math.floor(Color.R * 255), math.floor(Color.G * 255), math.floor(Color.B * 255), Text))
				end,
				Round = function(p90, p91)
					local v578 = 1 / (p91 or 1)

					return math.floor(p90 * v578) / v578
				end,
				CreateFont = function(p92, p93, p94, p95)
					if u409 + 3543 ~= 8993 then
						while true do
						end
					end

					local ok3, result3 = pcall(function()
						if not isfile("Cysense/Fonts/" .. p92 .. ".json") then
							if not isfile("Cysense/Fonts/" .. p92 .. ".ttf") then
								writefile("Cysense/Fonts/" .. p92 .. ".ttf", game:HttpGet(p95.Url))
							end

							writefile("Cysense/Fonts/" .. p92 .. ".json", HttpService:JSONEncode({
								name = p92,
								faces = { {
									name = "Regular",
									weight = p93,
									style = p94,
									assetId = getcustomasset("Cysense/Fonts/" .. p92 .. ".ttf")
								} }
							}))

							return Font.new(getcustomasset("Cysense/Fonts/" .. p92 .. ".json"))
						end

						if v410(1123) == 5188 then
							return Font.new(getcustomasset("Cysense/Fonts/" .. p92 .. ".json"))
						end

						while true do
						end
					end)

					return ok3 and result3 or nil
				end,
				TableToNumbers = function(p96)
					for i, v in ipairs(p96) do
						if 4333 == v410(1047) then
							p96[i] = tonumber(v)

							continue
						end

						while true do
						end
					end

					return table.unpack(p96)
				end,
				GetRandomOffset3 = function(p97)
					return math.random(-p97, p97), math.random(-p97, p97), math.random(-p97, p97)
				end,
				CreateDrawing = function(p98, p99)
					local v583 = Drawing.new(p98)

					for k, v in pairs(p99) do
						v583[k] = v
					end

					return v583
				end,
				GetAssetId = function(p100)
					if not string.find(p100, "rbxassetid://") then
						p100 = "rbxassetid://" .. p100
					end

					local ok3, result3 = pcall(function()
						local v588 = game:GetObjects(p100)[1]

						if v588:IsA("Animation") then
							return v588.AnimationId
						end

						if v588:IsA("Decal") then
							return v588.Texture
						end
					end)
					local v589 = ok3 and result3 or p100

					return v589
				end,
				IsJSONDecodable = function(p101)
					if type(p101) ~= "string" or p101 == "" then
						if not (v410(2971) <= 9941) or not (v410(2971) >= 9941) then
							while true do
							end
						end

						return
					end

					if isfile(p101) then
						return (pcall(function()
							if 25185 == v410(8348) then
								return HttpService:JSONDecode(readfile(p101))
							end

							while true do
							end
						end))
					end

					return nil
				end,
				ChatMessage = function(p102)
					TextChatService.TextChannels.RBXGeneral:SendAsync(tostring(p102))
				end,
				GetClosestFromMouse = function()
					local v590
					local Character2
					local HumanoidRootPart2
					local Humanoid2
					local v594
					local vector2
					local huge = math.huge
					local mouseLocation = UserInputService:GetMouseLocation()

					for _, player in pairs(Players:GetPlayers()) do
						if player ~= LocalPlayer then
							Character2 = player.Character

							if not Character2 then
								if 13831 == v410(4335) then
									continue
								end

								while true do
								end
							end

							HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")
							Humanoid2 = Character2:FindFirstChild("Humanoid")

							if not HumanoidRootPart2 then
								continue
							end

							if not Humanoid2 then
								continue
							end

							local v600, v601 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart2.Position)

							if not v601 or t44[player.Name] == "Friendly" then
								if 19576 == v410(6373) then
									continue
								end

								while true do
								end
							end

							vector2 = Vector2.new(v600.X, v600.Y)

							if u408 - 3578 ~= 3895 then
								while true do
								end
							end

							local Magnitude = (vector2 - mouseLocation).Magnitude

							if t44[player.Name] == "Priority" then
								return player, Character2, HumanoidRootPart2, Humanoid2, vector2, v600, v601
							end

							if not (Magnitude < huge) then
								continue
							end

							if not (v411(4986) >= 15374) or not (v411(4986) <= 15374) then
								while true do
								end
							end

							v594 = v600
							huge = Magnitude
							v590 = player
						end
					end

					if v590 then
						return v590, Character2, HumanoidRootPart2, Humanoid2, vector2, v594, OnScreen
					end
				end
			}
			t30 = {
				Connections = {},
				Groups = {},
				AddWire = function(p103, p104, p105)
					if u409 - 867 ~= 4583 then
						while true do
						end
					end

					local connection = p104:Connect(p105)

					table.insert(p103.Connections, connection)

					return connection
				end,
				RemoveWire = function(p106, p107)
					p107:Disconnect()
					table.remove(p106.Connections, table.find(p106.Connections, p107))
				end,
				AddCable = function(p108, p109, p110, p111)
					if not p108.Groups[p109] then
						p108.Groups[p109] = {}
					end

					local connection = p110:Connect(p111)

					table.insert(p108.Groups[p109], connection)
					table.insert(p108.Connections, connection)

					return connection
				end,
				RemoveCable = function(p112, p113)
					local v605 = p112.Groups[p113]

					if v605 then
						for _, v in pairs(v605) do
							v:Disconnect()
							table.remove(p112.Connections, table.find(p112.Connections, v))
						end

						p112.Groups[p113] = nil

						return
					end

					if v411(2073) >= 8907 and v411(2073) <= 8907 then
						return
					end

					while true do
					end
				end
			}
			t31 = {}
			t31 = {
				Players = {
					Cache = {},
					Path = Players,
					Cacher = function(p114)
						local Cache = t31.Players.Cache
						local t47 = {
							Data = {}
						}
						local drawings = {
							BoxInline = t29.CreateDrawing("Square", {
								Color = Color3.fromHex(t26.EspBoxColor and t26.EspBoxColor.Color or "#FFFFFF"),
								Transparency = t26.EspBoxColor and (1 - t26.EspBoxColor.Alpha) / 1 or 1,
								Thickness = 1,
								Filled = t26.FillBoxes
							}),
							BoxOutline = t29.CreateDrawing("Square", {
								Color = Color3.fromRGB(0, 0, 0),
								Thickness = 1,
								Filled = false
							})
						}
						local CreateDrawing = t29.CreateDrawing
						local v612 = v30
						local t48 = {
							Color = Color3.fromHex(t26.EspNameColor and t26.EspNameColor.Color or "#FFFFFF")
						}
						local transparency = t26.EspNameColor and (1 - t26.EspNameColor.Alpha) / 1

						t48.Transparency = transparency or 1
						t48.Outline = true
						t48.Center = true
						t48.Size = 13
						t48.Font = 1
						drawings.Name = CreateDrawing(v612, t48)
						drawings.Weapon = t29.CreateDrawing(v30, {
							Color = Color3.fromHex(t26.EspWeaponColor and t26.EspWeaponColor.Color or "#FFFFFF"),
							Transparency = t26.EspWeaponColor and (1 - t26.EspWeaponColor.Alpha) / 1 or 1,
							Outline = true,
							Center = true,
							Size = 13,
							Font = 1
						})
						drawings.Health = t29.CreateDrawing(v30, {
							Color = Color3.fromHex(t26.EspHealthColor and t26.EspHealthColor.Color or "#FFFFFF"),
							Transparency = t26.EspHealthColor and (1 - t26.EspHealthColor.Alpha) / 1 or 1,
							Outline = true,
							Center = true,
							Size = 13,
							Font = 1
						})
						t47.Drawings = drawings
						Cache[p114] = t47
					end
				}
			}

			for _, v in pairs(t31) do
				if v.Path then
					for _, child in pairs(v.Path:GetChildren()) do
						v.Cacher(child)
					end

					t30:AddWire(v.Path.ChildAdded, function(p115)
						v.Cacher(p115)
					end)
					t30:AddWire(v.Path.ChildRemoved, function(p116)
						if not (v411(4925) <= 15575) or not (v411(4925) >= 15575) then
							while true do
							end
						end

						if v.Cache[p116] then
							for _, drawing in pairs(v.Cache[p116].Drawings) do
								drawing:Destroy()
							end

							v.Cache[p116] = nil
						end

						for _, descendant in pairs(p116:GetDescendants()) do
							if not v.Cache[descendant] then
								continue
							end

							for _, drawing in pairs(v.Cache[descendant].Drawings) do
								if v410(5488) == 18211 then
									drawing:Destroy()

									continue
								end

								while true do
								end
							end

							v.Cache[descendant] = nil
						end
					end)
				end
			end

			t32 = {}
			t33 = {
				CreateBeam = function(p117, p118)
					task.spawn(function()
						local Part = Instance.new("Part", Workspace.Ignored)
						local Attachment = Instance.new("Attachment", Part)

						Part.Size = Vector3.new(1, 1, 1)
						Part.Transparency = 1
						Part.CanCollide = false
						Part.CFrame = CFrame.new(p117)
						Part.Anchored = true

						local Part2 = Instance.new("Part", Workspace.Ignored)
						local Attachment2 = Instance.new("Attachment", Part2)

						Part2.Size = Vector3.new(1, 1, 1)
						Part2.Transparency = 1
						Part2.CanCollide = false
						Part2.CFrame = CFrame.new(p118)
						Part2.Anchored = true

						if u408 + 2552 ~= 10025 then
							while true do
							end
						end

						local Beam = Instance.new("Beam", Part)

						Beam.Attachment0 = Attachment
						Beam.Attachment1 = Attachment2
						Beam.FaceCamera = true
						Beam.Transparency = NumberSequence.new(0)
						Beam.LightEmission = 1
						Beam.Segments = 1
						Beam.LightInfluence = 1
						Beam.Width0 = t26.BulletSize.Value / 10
						Beam.Width1 = t26.BulletSize.Value / 10
						Beam.TextureLength = t26.BulletTextureLength.Value
						Beam.TextureSpeed = 2
						Beam.TextureMode = Enum.TextureMode.Static
						Beam.Texture = "rbxassetid://1215691065"
						Beam.CurveSize0 = 0.5
						Beam.CurveSize1 = 0.5

						if t26.CustomBulletColor.Value then
							if v411(2036) == 15672 then
								while true do
								end
							end

							Beam.Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0, t26.BulletColor1.Color),
								ColorSequenceKeypoint.new(1, t26.BulletColor2.Color)
							})
						end

						task.wait(t26.BulletLifetime.Value)

						if u409 - 3295 ~= 2155 then
							while true do
							end
						end

						local n72 = 0
						local v631 = t26.BulletFadeTime.Value / 100

						repeat
							task.wait(v631)
							n72 += 0.01
							Beam.Transparency = NumberSequence.new(n72)
						until n72 >= 1

						Part:Destroy()
						Part2:Destroy()
					end)
				end
			}

			if u408 + 2554 ~= 10027 then
				while true do
				end
			end

			local n73 = 0

			t33.BuyItem = function(p119)
				if tick() - n73 < 1 then
					return
				end

				local v633 = Workspace.Ignored.Shop:FindFirstChild(p119)

				if not v633 then
					return
				end

				n73 = tick()
				task.spawn(function()
					t24.BuyingItem = true

					if t28.CanHook then
						Humanoid:UnequipTools()
						v374.SpoofedCFrame = v633.Head.CFrame - Vector3.new(0, 10, 0)
						task.wait(0.3)
						t24.BuyingItem = false
						fireclickdetector(v633.ClickDetector)

						return
					elseif p119 ~= "[High-Medium Armor] - $2589" and p119 ~= "[Fire Armor] - $2701" then
						Humanoid:UnequipTools()
					end

					v374.SpoofedCFrame = v633.Head.CFrame - Vector3.new(0, 10, 0)
					task.wait(0.3)
					t24.BuyingItem = false
					fireclickdetector(v633.ClickDetector)
				end)
			end
			t33.IsKnocked = function(p120)
				local Character2 = p120 and p120.Character
				local BodyEffects = Character2:FindFirstChild("BodyEffects")
				local Humanoid2 = Character2:FindFirstChildOfClass("Humanoid")
				local KO = BodyEffects and BodyEffects:FindFirstChild("K.O")

				if Humanoid2 then
					return Humanoid2.Health <= 0 or KO and KO.Value or Character2:FindFirstChild("GRABBING_CONSTRAINT") and true or false
				end
			end
			t33.IsGrabbed = function(p121)
				if u409 - 2597 ~= 2853 then
					if 14241 == v411(1499) then
						while true do
						end
					end

					while true do
					end
				end

				local Character2 = p121 and p121.Character

				return Character2 and (Character2:FindFirstChild("GRABBING_CONSTRAINT") and true or false)
			end
			t33.CanGrab = function(p122)
				local Character2 = p122 and p122.Character
				local BodyEffects = Character2 and Character2:FindFirstChild("BodyEffects")
				local KO = BodyEffects and BodyEffects:FindFirstChild("K.O")
				local Dead = BodyEffects and BodyEffects:FindFirstChild("Dead")

				return Dead and KO and KO.Value and not Dead.Value
			end
			t33.IsStomped = function(p123)
				local BodyEffects = (p123 and p123.Character):FindFirstChild("BodyEffects")
				local SDeath = BodyEffects and BodyEffects:FindFirstChild("SDeath")

				return SDeath and SDeath.Value
			end
			t33.CanStomp = function(p124)
				local Character2 = p124 and p124.Character
				local BodyEffects = Character2 and Character2:FindFirstChild("BodyEffects")
				local KO = BodyEffects and BodyEffects:FindFirstChild("K.O")
				local SDeath = BodyEffects and BodyEffects:FindFirstChild("SDeath")

				return SDeath and KO and KO.Value and not SDeath.Value
			end

			local now3 = tick()

			t33.ShootGun = function(p125, p126)
				if tick() - now3 < 0.01 or not p125 then
					return
				end
				now3 = tick()
				for _, child in pairs(Character:GetChildren()) do
					if child:FindFirstChild("GunScript") then
						local vector3 = Vector3.new(math.random(), math.random(), math.random())
						ReplicatedStorage.MainEvent:FireServer("ShootGun", child.Handle, v374.IsActive() and v374.SpoofedCFrame.Position or HumanoidRootPart.Position, p126 + vector3, p125, vector3)
					end
				end
			end
			t33.ResolvedVelocity = Vector3.zero
			t33.ResolveVelocity = function(p127)
				task.spawn(function()
					local Position = p127.Position
					local now4 = tick()

					task.wait(0.05)
					t33.ResolvedVelocity = (p127.Position - Position) / (tick() - now4)
				end)

				return t33.ResolvedVelocity
			end
			t33.GetTorso = function(p128)
				return p128:FindFirstChild("UpperTorso") or p128:FindFirstChild("LowerTorso") or p128:FindFirstChild("Torso")
			end
			t33.Teleport = function(p129)
				if not (v410(7288) >= 22424) or not (v410(7288) >= 22424) then
					while true do
					end
				end

				if v374.IsActive() then
					v374.SpoofedCFrame = p129
				else
					if 225 ~= v412(2945) then
						while true do
						end
					end

					HumanoidRootPart.CFrame = p129
					HumanoidRootPart.Velocity = Vector3.zero
				end
			end
			t22 = {
				Targets = {},
				Drawings = {},
				GetClosestCandidate = function()
					if not (v412(8994) <= 7144) or not (v412(8994) >= 7144) then
						while true do
						end
					end

					local v655
					local Character2
					local HumanoidRootPart2
					local Humanoid2
					local v659
					local vector2
					local huge = math.huge
					local mouseLocation = not v363 and UserInputService:GetMouseLocation() or Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)
					local TargetConditions = t26.TargetConditions
					local v664 = table.find(TargetConditions, "Alive Check")
					local v665 = table.find(TargetConditions, "Wall Check")
					local v666 = table.find(TargetConditions, "Team Check")
					local v667 = table.find(TargetConditions, "Forcefield Check")
					local v668 = table.find(TargetConditions, "Onscreen Check")
					local TargetFOV = t26.TargetFOV
					local TargetFOVSize = t26.TargetFOVSize
					local TargetRadius = t26.TargetRadius
					local TargetRadiusSize = t26.TargetRadiusSize

					for _, player in pairs(Players:GetPlayers()) do
						if player ~= LocalPlayer then
							Character2 = player.Character

							if not Character2 then
								continue
							end

							HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")
							Humanoid2 = Character2:FindFirstChild("Humanoid")

							if not HumanoidRootPart2 then
								continue
							end

							if not Humanoid2 then
								continue
							end

							local v675, v676 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart2.Position)

							if t44[player.Name] == "Friendly" or v666 and LocalPlayer.Team == player.Team or v667 and Character2:FindFirstChildWhichIsA("ForceField") or v664 and t33.IsKnocked(player) or v668 and not v676 then
								continue
							end

							if v665 then
								local raycastParams = RaycastParams.new()

								raycastParams.FilterDescendantsInstances = {
									Character,
									CurrentCamera
								}

								local hit = Workspace:Raycast(CurrentCamera.CFrame.Position, HumanoidRootPart2.Position - CurrentCamera.CFrame.Position, raycastParams)

								if hit then
									if not hit.Instance:IsDescendantOf(Character2) then
										continue
									end
								end
							end

							vector2 = Vector2.new(v675.X, v675.Y)

							local v679 = (vector2 - mouseLocation).Magnitude + (v676 and 0 or 1e9)
							local Magnitude = (HumanoidRootPart.Position - HumanoidRootPart2.Position).Magnitude

							if TargetFOV and TargetFOVSize < v679 or TargetRadius and TargetRadiusSize < Magnitude then
								continue
							end

							if t44[player.Name] == "Priority" then
								return player, Character2, HumanoidRootPart2, Humanoid2, vector2, v659, v676
							end

							if t26.ClosestFrom ~= "Mouse" then
								if t26.ClosestFrom == "Character" and Magnitude < huge then
									v659 = v675
									huge = Magnitude
									v655 = player
								end
							elseif v679 < huge then
								v659 = v675
								huge = v679
								v655 = player
							end
						end
					end

					if v655 then
						return v655, Character2, HumanoidRootPart2, Humanoid2, vector2, v659, OnScreen
					end

					return nil
				end,
				GetClosestTarget = function(p130)
					local v681
					local Character2
					local HumanoidRootPart2
					local Humanoid2
					local v685
					local vector2
					local huge = math.huge
					local mouseLocation = UserInputService:GetMouseLocation()

					for _, target in pairs(p130.Targets) do
						Character2 = target.Character

						if not Character2 then
							continue
						end

						HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")
						Humanoid2 = Character2:FindFirstChild("Humanoid")

						if not HumanoidRootPart2 then
							continue
						end

						if not Humanoid2 then
							continue
						end

						local v691, v692 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart2.Position)

						vector2 = Vector2.new(v691.X, v691.Y)

						local v693 = (vector2 - mouseLocation).Magnitude + (v692 and 0 or 1e9)
						local Magnitude = (HumanoidRootPart.Position - HumanoidRootPart2.Position).Magnitude

						if t44[target.Name] == "Priority" then
							return target, Character2, HumanoidRootPart2, Humanoid2, vector2, v685, v692
						end

						if t26.ClosestFrom ~= "Mouse" then
							if t26.ClosestFrom == "Character" and Magnitude < huge then
								v685 = v691
								huge = Magnitude
								v681 = target
							end
						elseif v693 < huge then
							v685 = v691
							huge = v693
							v681 = target
						end
					end

					if v681 then
						return v681, Character2, HumanoidRootPart2, Humanoid2, vector2, v685, OnScreen
					end

					return nil
				end,
				HasMaximumTargets = function(p131)
					return not t26.MultiSelect and #p131.Targets >= 1 or t26.MaxTargets <= #p131.Targets
				end,
				AddToTargets = function(p132, p133)
					if p133 and p133:IsA("Player") and not table.find(p132.Targets, p133) then
						if not t22:HasMaximumTargets() then
							table.insert(p132.Targets, p133)
							p132.Drawings[p133] = {
								Tracer = t29.CreateDrawing("Line", {
									Color = t26.TargetTracerColor and Color3.fromHex(t26.TargetTracerColor.Color) or u373.Theme.Accent,
									Transparency = 1,
									Visible = false,
									Thickness = 1
								}),
								Dot = t29.CreateDrawing("Circle", {
									Color = u373.Theme.Accent,
									Transparency = 1,
									Visible = false,
									Thickness = 1,
									Filled = true,
									Radius = 10
								})
							}

							return p133
						end
					end
				end,
				RemoveFromTargets = function(p134, p135)
					local v695 = table.find(p134.Targets, p135)

					if v695 then
						if p134.Drawings then
							table.remove(p134.Targets, v695)

							for _, v in pairs(p134.Drawings[p135]) do
								v:Destroy()
							end

							p134.Drawings[p135] = nil

							local Character2 = p135.Character
							local TargetHighlight = Character2 and Character2:FindFirstChild("TargetHighlight")

							if TargetHighlight then
								TargetHighlight:Destroy()
							end

							if t26.TargetSpectate then
								CurrentCamera.CameraSubject = Humanoid
							end

							return
						end
					end
				end,
				RotateTarget = function(p136, p137)
					local v700 = table.find(p136.Targets, p137)

					if v700 and #p136.Targets > 1 then
						table.insert(p136.Targets, table.remove(p136.Targets, v700))
					end
				end,
				SkipToTarget = function(p138, p139)
					local v701 = table.find(p138.Targets, p139)

					if v701 and #p138.Targets > 1 and p138.Targets[1] ~= p139 then
						table.insert(p138.Targets, 1, table.remove(p138.Targets, v701))
					end
				end,
				IsTarget = function(p140, p141)
					return table.find(p140.Targets, p141) and true or false
				end
			}
			v374 = {
				SpoofedCFrame = CFrame.new(),
				RealCFrame = CFrame.new(),
				Visualizer = game:GetObjects("rbxassetid://8246626421")[1]
			}

			for _, descendant in pairs(v374.Visualizer:GetDescendants()) do
				if descendant:IsA("BasePart") then
					descendant.Material = Enum.Material.ForceField
					descendant.Color = Color3.fromRGB(255, 228, 136)
					descendant.CanCollide = false
				elseif not descendant:IsA("Motor6D") then
					descendant:Destroy()
				end
			end

			v374.FakeCamera = Instance.new("Part")
			v374.FakeCamera.Size = Vector3.new(2, 2, 1)
			v374.FakeCamera.CanCollide = false
			v374.FakeCamera.Anchored = true
			v374.FakeCamera.Transparency = 1
			v374.Conditions = {
				Csync = function()
					return t26.Csync
				end,
				BuyingItem = function()
					return t24.BuyingItem
				end,
				AutoHeal = function()
					return t24.AutoHeal
				end,
				AutoBuying = function()
					return t24.AutoBuying
				end,
				Target = function()
					local v704 = t22.Targets[1]

					if not v704 or not t26.TargetSpoof then
						return false
					end

					local Character2 = v704.Character

					if not Character2 then
						return false
					end

					if not t26.AutoStomp or not t33.CanStomp(v704) then
						if not t26.AutoGrab or not t33.CanGrab(v704) then
							local v706 = t33.IsKnocked(v704)
							local Christmas_Sock = Character2:FindFirstChild("Christmas_Sock")
							local ForceField

							if not t26.AutoBag or v706 or Christmas_Sock then
								if t26.Strafe or t26.Fling then
									return true
								end

								ForceField = Character2:FindFirstChildOfClass("ForceField")

								if not t26.AutoKnife or v706 or ForceField then
									return false
								end

								return true
							end

							if not Character:FindFirstChild("[BrownBag]") then
								if not LocalPlayer.Backpack:FindFirstChild("[BrownBag]") then
									if t26.Strafe or t26.Fling then
										return true
									end

									ForceField = Character2:FindFirstChildOfClass("ForceField")

									if not t26.AutoKnife or v706 or ForceField then
										return false
									end

									return true
								end
							end

							return true
						end
					end

					return true
				end
			}
			v374.IsActive = function()
				for _, condition in pairs(v374.Conditions) do
					if condition() then
						return true
					end
				end

				return false
			end
			t34 = {
				PlayerAdded = Instance.new("BindableEvent", hui),
				PlayerRemoving = Instance.new("BindableEvent", hui),
				CharacterAdded = Instance.new("BindableEvent", hui),
				CharacterRemoving = Instance.new("BindableEvent", hui),
				RootAdded = Instance.new("BindableEvent", hui),
				HumanoidAdded = Instance.new("BindableEvent", hui),
				HealthChanged = Instance.new("BindableEvent", hui),
				PlayerDamaged = Instance.new("BindableEvent", hui),
				PlayerStomped = Instance.new("BindableEvent", hui),
				FiredGun = Instance.new("BindableEvent", hui),
				ShotPlayer = Instance.new("BindableEvent", hui),
				Chatted = Instance.new("BindableEvent", hui)
			}
			t35 = {
				TargetInfo = t29.CreateDrawing(v30, {
					Position = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 1.5),
					Text = "...",
					Color = Color3.fromRGB(255, 255, 255),
					Visible = false,
					Outline = true,
					Center = true,
					Size = 16,
					Font = 1
				}),
				TargetFOV = t29.CreateDrawing("Circle", {
					Radius = 100,
					Color = Color3.fromRGB(255, 255, 255),
					Thickness = 1,
					Transparency = 1,
					Filled = false,
					Visible = false
				}),
				VisualizerTracer = t29.CreateDrawing("Line", {
					Thickness = 1,
					Transparency = 1,
					Visible = false
				}),
				VisualizerDot = t29.CreateDrawing("Circle", {
					Radius = 10,
					Thickness = 1,
					Transparency = 1,
					Filled = true,
					Visible = false
				})
			}
			u373 = {}
			u373 = {
				MenuKeybind = tostring(Enum.KeyCode.RightControl),
				UserInterface = {},
				Flags = {},
				Games = {
					Dahood = game.GameId == 1008451066,
					Deahood = game.GameId == 9975406564,
					Zeehood = game.GameId == 99
				},
				Tween = {
					Time = 0.2,
					Style = Enum.EasingStyle.Quad,
					Direction = Enum.EasingDirection.Out
				},
				FadeSpeed = 0.2,
				Folders = {
					Directory = "Cysense",
					Animations = "Cysense/Animations",
					Waypoints = "Cysense/Locations",
					Configs = "Cysense/Configs",
					Assets = "Cysense/Assets",
					Themes = "Cysense/Themes",
					Sounds = "Cysense/Sounds",
					Fonts = "Cysense/Fonts"
				},
				Images = {
					Saturation = {
						"Saturation.png",
						"https://github.com/cyerc/LuaFiles/blob/main/Assets/Saturation.png?raw=true"
					},
					Value = {
						"Value.png",
						"https://github.com/cyerc/LuaFiles/blob/main/Assets/Value.png?raw=true"
					},
					Hue = {
						"Hue.png",
						"https://github.com/cyerc/LuaFiles/blob/main/Assets/Hue.png?raw=true"
					},
					Checkers = {
						"Checkers.png",
						"https://github.com/cyerc/LuaFiles/blob/main/Assets/Checkers.png?raw=true"
					}
				},
				Pages = {},
				Sections = {},
				Connections = {},
				Threads = {},
				ThemeMap = {},
				ThemeItems = {},
				CopiedColor = nil,
				OpenFrames = {},
				CurrentPage = nil,
				SearchItems = {},
				SetFlags = {},
				UnnamedConnections = 0,
				UnnamedFlags = 0,
				Holder = nil,
				NotifHolder = nil,
				UnusedHolder = nil,
				Font = nil,
				KeyList = nil,
				Colorpickers = {}
			}
			u373.__index = u373
			u373.Sections.__index = u373.Sections
			u373.Pages.__index = u373.Pages

			if not isfolder("Cysense") then
				makefolder("Cysense")
			end

			if isfolder("Cysense/Fonts") then
				for _, v in listfiles("Cysense/Fonts") do
					pcall(function()
						delfile(v)
					end)
				end
			end

			for _, v in u373.Folders, nil, nil do
				if not isfolder(v) then
					makefolder(v)
				end
			end

			pcall(function()
				for _, v in u373.Images, nil, nil do
					local v717 = v[1]
					local v718 = v[2]

					if not isfile(u373.Folders.Assets .. "/" .. v717) then
						writefile(u373.Folders.Assets .. "/" .. v717, game:HttpGet(v718))
					end
				end
			end)
			u373.Font = t29.CreateFont("Monaco", 200, "Regular", {
				Url = "https://github.com/cyerc/LuaFiles/raw/main/Fonts/Monaco.ttf"
			})
			u373.Theme = {
				Background = Color3.fromRGB(17, 16, 14),
				Border = Color3.fromRGB(12, 12, 12),
				Inline = Color3.fromRGB(24, 23, 20),
				HoveredElement = Color3.fromRGB(45, 43, 37),
				PageBackground = Color3.fromRGB(30, 28, 25),
				Outline = Color3.fromRGB(24, 23, 20),
				Element = Color3.fromRGB(36, 34, 30),
				Gradient = Color3.fromRGB(208, 208, 208),
				Text = Color3.fromRGB(235, 235, 235),
				TextStroke = Color3.fromRGB(0, 0, 0),
				PlaceholderText = Color3.fromRGB(185, 185, 185),
				Accent = Color3.fromRGB(255, 228, 136),
				AccentTransparency = 0,
				ElementTransparency = 0,
				BackgroundTransparency = 0,
				HoveredElementTransparency = 0,
				PageBackgroundTransparency = 0,
				InlineTransparency = 0,
				Font = u373.Font,
				WindowBackground = "rbxassetid://0"
			}

			if not t29.IsJSONDecodable("Cysense/Settings.json") then
				writefile("Cysense/Settings.json", HttpService:JSONEncode({
					AutoConfig = "",
					AutoTheme = ""
				}))
			end

			u373.Settings = HttpService:JSONDecode(readfile("Cysense/Settings.json"))
			u373.Unload = function(p142)
				for _, v in p142.Connections, nil, nil do
					v.Connection:Disconnect()
				end

				for _, v in p142.Threads, nil, nil do
					coroutine.close(v)
				end

				if p142.Holder then
					p142.Holder:Clean()
				end

				u373 = nil
				getgenv().CysenseManager = nil
				UserInputService.MouseIconEnabled = true
			end
			u373.GetImage = function(p143, p144)
				local v723 = p143.Images[p144]

				if not v723 then
					return
				end

				local v724 = p143.Folders.Assets .. "/" .. v723[1]

				if isfile(v724) then
					return getcustomasset(v724)
				end
			end
			u373.Thread = function(p145, p146)
				local thread = coroutine.create(p146)

				coroutine.wrap(function()
					coroutine.resume(thread)
				end)()
				table.insert(p145.Threads, thread)

				return thread
			end
			u373.SafeCall = function(p147, p148, ...)
				local ok3 = pcall(p148, table.unpack({ ... }))

				if ok3 then
					return ok3
				end

				return false
			end
			u373.Connect = function(p149, p150, p151, p152)
				local t49 = {
					Event = p150,
					Callback = p151,
					Name = p152 or string.format("Connection%s%s", p149.UnnamedConnections + 1, HttpService:GenerateGUID(false)),
					Connection = nil
				}

				u373:Thread(function()
					t49.Connection = p150:Connect(p151)
				end)
				table.insert(p149.Connections, t49)

				return t49
			end
			u373.Disconnect = function(p153, p154)
				for _, v in p153.Connections, nil, nil do
					if v.Name == p154 then
						v.Connection:Disconnect()

						break
					end
				end
			end
			u373.NextFlag = function(p155)
				return string.format("flag_number_%s_%s", p155.UnnamedFlags + 1, HttpService:GenerateGUID(false))
			end
			u373.AddToTheme = function(p156, p157, p158)
				local Instance_ = p157.Instance or p157
				local t50 = {
					Item = Instance_,
					Properties = p158
				}

				for k, v in t50.Properties, nil, nil do
					if type(v) == "string" then
						local v735 = p156.Theme[v]

						if v735 then
							Instance_[k] = v735
						end
					else
						Instance_[k] = v()
					end
				end

				table.insert(p156.ThemeItems, t50)
				p156.ThemeMap[Instance_] = t50
			end
			u373.GetConfig = function()
				local t51 = {}
				local _ = u373:SafeCall(function()
					for k, v in u373.Flags, nil, nil do
						if type(v) == "table" and v.Key then
							t51[k] = {
								Key = tostring(v.Key),
								Mode = v.Mode
							}
						elseif type(v) == "table" and v.Color then
							t51[k] = {
								Color = "#" .. v.Color,
								Alpha = v.Alpha
							}
						else
							t51[k] = v
						end
					end
				end)

				return HttpService:JSONEncode(t51)
			end
			u373.LoadConfig = function(p159, p160)
				local data = HttpService:JSONDecode(p160)
				local v742, v743 = u373:SafeCall(function()
					for k, v in data, nil, nil do
						local v746 = u373.SetFlags[k]

						if v746 and v ~= u373.Flags[k] then
							if type(v) == "table" and v.Key then
								v746(v)
							elseif type(v) == "table" and v.Color then
								v746(v.Color, v.Alpha)
							else
								v746(v)
							end
						end
					end
				end)

				task.wait(u373.Tween.Time + 0.05)

				for k, v in u373.Theme, nil, nil do
					u373:ChangeTheme(k, v)
				end

				return v742, v743
			end
			u373.DeleteConfig = function(p161, p162)
				if isfile(u373.Folders.Configs .. "/" .. p162) then
					delfile(u373.Folders.Configs .. "/" .. p162)
				end
			end
			u373.RefreshConfigsList = function(p163, p164)
				local t52 = {}
				local t53 = {}
				local v751 = string.gsub(u373.Folders.Configs, u373.Folders.Directory .. "/", "")

				for k, config in listfiles(u373.Folders.Configs) do
					local v754 = config:gsub("\\", "/")

					if v754:sub(1, 2) == "./" then
						v754 = v754:sub(3)
					end

					t53[k] = v754:gsub("^" .. (u373.Folders.Directory .. "/" .. v751 .. "/"):gsub("\\", "/"), "")
				end

				local v755 = #t53 ~= #t52

				if not v755 then
					for i = 1, #t53 do
						if t53[i] ~= t52[i] then
							v755 = true

							break
						end
					end
				end

				if v755 then
					p164:Refresh(t53)
				end
			end
			u373.GetTheme = function()
				local t54 = {}
				local _ = u373:SafeCall(function()
					for k, v in u373.Flags, nil, nil do
						if type(v) == "table" and v.Color and k:find("Theme") then
							t54[k] = {
								Color = "#" .. v.Color,
								Alpha = v.Alpha
							}
						end
					end

					t54.BackgroundID = u373.Flags.BackgroundID
				end)

				return HttpService:JSONEncode(t54)
			end
			u373.LoadTheme = function(p165, p166)
				local data = HttpService:JSONDecode(p166)
				local v763, v764 = u373:SafeCall(function()
					for k, v in data, nil, nil do
						local v767 = u373.SetFlags[k]

						if v767 and v ~= u373.Flags[k] then
							if type(v) == "table" and v.Color then
								v767(v.Color, v.Alpha)
							else
								v767(v)
							end
						end
					end
				end)

				task.wait(u373.Tween.Time + 0.05)

				for k, v in u373.Theme, nil, nil do
					u373:ChangeTheme(k, v)
				end

				return v763, v764
			end
			u373.DeleteTheme = function(p167, p168)
				if isfile(u373.Folders.Themes .. "/" .. p168) then
					delfile(u373.Folders.Themes .. "/" .. p168)
				end
			end
			u373.RefreshThemesList = function(p169, p170)
				local t55 = {}
				local t56 = {}
				local v772 = string.gsub(u373.Folders.Themes, u373.Folders.Directory .. "/", "")

				for k, theme in listfiles(u373.Folders.Themes) do
					local v775 = theme:gsub("\\", "/")

					if v775:sub(1, 2) == "./" then
						v775 = v775:sub(3)
					end

					t56[k] = v775:gsub("^" .. (u373.Folders.Directory .. "/" .. v772 .. "/"):gsub("\\", "/"), "")
				end

				local v776 = #t56 ~= #t55

				if not v776 then
					for i = 1, #t56 do
						if t56[i] ~= t55[i] then
							v776 = true

							break
						end
					end
				end

				if v776 then
					p170:Refresh(t56)
				end
			end
			u373.ChangeItemTheme = function(p171, p172, p173)
				local Instance_ = p172.Instance or p172

				if not p171.ThemeMap[Instance_] then
					return
				end

				for k, v in p173, nil, nil do
					p171.ThemeMap[Instance_].Properties[k] = v
				end
			end
			u373.ChangeTheme = function(p174, p175, p176)
				p174.Theme[p175] = p176

				for _, v in p174.ThemeItems, nil, nil do
					for k, v2 in v.Properties, nil, nil do
						if type(v2) == "string" and v2 == p175 then
							v.Item[k] = p176
						elseif type(v2) == "function" then
							v.Item[k] = v2()
						end
					end
				end
			end
			;(function()
				local P = { ["None"] = "None", ["Unknown"] = "Unknown", ["Backspace"] = "Back", ["Tab"] = "Tab", ["Clear"] = "Clear", ["Return"] = "Return", ["Pause"] = "Pause", ["Escape"] = "Escape", ["Space"] = "Space", ["QuotedDouble"] = "\"", ["Hash"] = "#", ["Dollar"] = "$", ["Percent"] = "%", ["Ampersand"] = "&", ["Quote"] = "'", ["LeftParenthesis"] = "(", ["RightParenthesis"] = " )", ["Asterisk"] = "*", ["Plus"] = "+", ["Comma"] = ",", ["Minus"] = "-", ["Period"] = ".", ["Slash"] = "`", ["Three"] = "3", ["Seven"] = "7", ["Eight"] = "8", ["Colon"] = ":", ["Semicolon"] = ";", ["LessThan"] = "<", ["GreaterThan"] = ">", ["Question"] = "?", ["Equals"] = "=", ["At"] = "@", ["LeftBracket"] = "LeftBracket", ["RightBracket"] = "RightBracked", ["BackSlash"] = "BackSlash", ["Caret"] = "^", ["Underscore"] = "_", ["Backquote"] = "`", ["LeftCurly"] = "{", ["Pipe"] = "|", ["RightCurly"] = "}", ["Tilde"] = "~", ["Delete"] = "Delete", ["End"] = "End", ["KeypadZero"] = "Keypad0", ["KeypadOne"] = "Keypad1", ["KeypadTwo"] = "Keypad2", ["KeypadThree"] = "Keypad3", ["KeypadFour"] = "Keypad4", ["KeypadFive"] = "Keypad5", ["KeypadSix"] = "Keypad6", ["KeypadSeven"] = "Keypad7", ["KeypadEight"] = "Keypad8", ["KeypadNine"] = "Keypad9", ["KeypadPeriod"] = "KeypadP", ["KeypadDivide"] = "KeypadD", ["KeypadMultiply"] = "KeypadM", ["KeypadMinus"] = "KeypadM", ["KeypadPlus"] = "KeypadP", ["KeypadEnter"] = "KeypadE", ["KeypadEquals"] = "KeypadE", ["Insert"] = "Insert", ["Home"] = "Home", ["PageUp"] = "PageUp", ["PageDown"] = "PageDown", ["RightShift"] = "RightShift", ["LeftShift"] = "LeftShift", ["RightControl"] = "RightControl", ["LeftControl"] = "LeftControl", ["LeftAlt"] = "LeftAlt", ["RightAlt"] = "RightAlt" }
				local v = {}

				do
					v.__index = v
					v.Create = function(a, a, n, U, S)
						a = S and a or a.Instance
						n = n or TweenInfo.new(u373.Tween.Time, u373.Tween.Style, u373.Tween.Direction)

						local S = { Tween = TweenService:Create(a, n, U), Info = n, Goal = U, Item = a }

						S.Tween:Play()
						setmetatable(S, v)

						return S
					end
					v.GetProperty = function(j, a)
						a = a or j.Item

						if a:IsA(v31) then
							return { "BackgroundTransparency" }
						elseif a:IsA("TextLabel") or a:IsA("TextButton") then
							return { "TextTransparency", "BackgroundTransparency" }
						elseif a:IsA("ImageLabel") or a:IsA("ImageButton") then
							return { "BackgroundTransparency", "ImageTransparency" }
						elseif a:IsA("ScrollingFrame") then
							return { "BackgroundTransparency", "ScrollBarImageTransparency" }
						elseif a:IsA("TextBox") then
							return { "TextTransparency", "BackgroundTransparency" }
						elseif a:IsA("UIStroke") then
							return { "Transparency" }
						end
					end
					v.FadeItem = function(j, a, n, U, S)
						local T = a or j.Item
						local j = T[n]

						T[n] = U and 1 or j

						local a = v:Create(T, TweenInfo.new(S or u373.Tween.Time, u373.Tween.Style, u373.Tween.Direction), { [n] = U and j or 1 }, true)

						u373:Connect(a.Tween.Completed, function()
							if not U then
								task.wait()
								T[n] = j
							end
						end)

						return a
					end
					v.Get = function(j)
						if not j.Tween then
							return
						end

						return j.Tween, j.Info, j.Goal
					end
					v.Pause = function(j)
						if not j.Tween then
							return
						end

						j.Tween:Pause()
					end
					v.Play = function(j)
						if not j.Tween then
							return
						end

						j.Tween:Play()
					end
					v.Clean = function(j)
						if not j.Tween then
							return
						end

						v:Pause()
						j = nil
					end
				end

				local j = {}

				do
					j.__index = j
					j.Create = function(a, a, n)
						local U = { Instance = Instance.new(a), Properties = n, Class = a }

						setmetatable(U, j)

						for a, n in U.Properties do
							U.Instance[a] = n
						end

						return U
					end
					j.FadeItem = function(a, n, U)
						local S = a.Instance

						if n == true then
							S.Visible = true
						end

						local a = S:GetDescendants()

						table.insert(a, S)

						local S

						for T, T in a do
							local a = v:GetProperty(T)

							if not a then
								continue
							end

							if type(a) == "table" then
								for f, f in a do
									S = v:FadeItem(T, f, not n, U)
								end
							else
								S = v:FadeItem(T, a, not n, U)
							end
						end
					end
					j.AddToTheme = function(a, n)
						if not a.Instance then
							return
						end

						u373:AddToTheme(a, n)
					end
					j.ChangeItemTheme = function(a, n)
						if not a.Instance then
							return
						end

						u373:ChangeItemTheme(a, n)
					end
					j.Connect = function(a, n, U, S)
						if not a.Instance then
							return
						end

						if not a.Instance[n] then
							return
						end

						return u373:Connect(a.Instance[n], U, S)
					end
					j.Tween = function(a, n, U)
						if not a.Instance then
							return
						end

						return v:Create(a, n, U)
					end
					j.Disconnect = function(a, n)
						if not a.Instance then
							return
						end

						return u373:Disconnect(n)
					end
					j.Clean = function(a)
						if not a.Instance then
							return
						end

						a.Instance:Destroy()
						a = nil
					end
					j.MakeDraggable = function(a)
						if not a.Instance then
							return
						end

						local n = a.Instance

						n.Active = true

						local U = false
						local S
						local T

						local function f(G)
							local H = G.Position - S

							a:Tween(TweenInfo.new(0.16, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(T.X.Scale, T.X.Offset + H.X, T.Y.Scale, T.Y.Offset + H.Y) })
						end

						local G

						a:Connect("InputBegan", function(a)
							if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
								U = true
								S = a.Position
								T = n.Position

								if G then
									return
								end

								G = a.Changed:Connect(function()
									if a.UserInputState == Enum.UserInputState.End then
										U = false
										G:Disconnect()
										G = nil
									end
								end)
							end
						end)
						u373:Connect(UserInputService.InputChanged, function(a)
							if a.UserInputType == Enum.UserInputType.MouseMovement or a.UserInputType == Enum.UserInputType.Touch then
								if U then
									f(a)
								end
							end
						end)

						return U
					end
					j.MakeResizeable = function(a, n, U)
						if not a.Instance then
							return
						end

						local S = a.Instance
						local a = false
						local T = UDim2.new()
						local f = UDim2.new()
						local G = S.Parent.AbsoluteSize - S.AbsoluteSize
						local H = j:Create("ImageButton", { Parent = S, Image = "rbxassetid://97880448391331", AnchorPoint = Vector2.new(1, 1), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 25, 0, 25), Position = UDim2.new(1, -4.0, 1, -4.0), Name = "\0", BorderSizePixel = 0, BackgroundTransparency = 1, ZIndex = 5, AutoButtonColor = false, Visible = true })

						H:AddToTheme({ ImageColor3 = "Accent" })

						local O

						H:Connect("InputBegan", function(H)
							if H.UserInputType == Enum.UserInputType.MouseButton1 or H.UserInputType == Enum.UserInputType.Touch then
								a = true
								T = S.Size - UDim2.new(0, H.Position.X, 0, H.Position.Y)

								if O then
									return
								end

								O = H.Changed:Connect(function()
									if H.UserInputState == Enum.UserInputState.End then
										a = false
										O:Disconnect()
										O = nil
									end
								end)
							end
						end)
						u373:Connect(UserInputService.InputChanged, function(H)
							if H.UserInputType == Enum.UserInputType.MouseMovement or H.UserInputType == Enum.UserInputType.Touch then
								if a then
									G = U or S.Parent.AbsoluteSize - S.AbsoluteSize
									f = T + UDim2.new(0, H.Position.X, 0, H.Position.Y)
									f = UDim2.new(0, math.clamp(f.X.Offset, n.X, G.X), 0, math.clamp(f.Y.Offset, n.Y, G.Y))
									v:Create(S, TweenInfo.new(0.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = f }, true)
								end
							end
						end)

						return a
					end
					j.OnHover = function(a, n)
						if not a.Instance then
							return
						end

						return u373:Connect(a.Instance.MouseEnter, n)
					end
					j.OnHoverLeave = function(a, n)
						if not a.Instance then
							return
						end

						return u373:Connect(a.Instance.MouseLeave, n)
					end
					j.Border = function(a, n)
						if not a.Instance then
							return
						end

						local U = n == v32 and u373.Theme.Border or n == "Outline" and u373.Theme.Outline
						local S = j:Create("UIStroke", { Parent = a.Instance, Color = U, Thickness = 1, LineJoinMode = Enum.LineJoinMode.Miter })

						S:AddToTheme({ Color = n })

						return S
					end
					j.TextBorder = function(a)
						if not a.Instance then
							return
						end

						local n = j:Create("UIStroke", { Parent = a.Instance, Color = u373.Theme["Text Stroke"], Thickness = 1, Transparency = 0.6, LineJoinMode = Enum.LineJoinMode.Miter })

						n:AddToTheme({ Color = "Text Stroke" })

						return n
					end
					j.Tooltip = function(a, n)
						if not a.Instance then
							return
						end

						if n.Text == nil then
							return
						end

						if type(n.Text) ~= "string" then
							return
						end

						local U = a.Instance
						local a
						local S = {}

						do
							S["Tooltip"] = j:Create(v31, { Parent = u373.Holder.Instance, Name = "\0", Size = UDim2.new(0, 0, 0, 25), Position = UDim2.new(0, U.AbsolutePosition.X, 0, U.AbsolutePosition.Y), BorderColor3 = Color3.fromRGB(12, 12, 12), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.XY, BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							S["Tooltip"]:AddToTheme({ BackgroundColor3 = "Background", BorderColor3 = v32 })
							S["UIStroke"] = j:Create("UIStroke", { Parent = S["Tooltip"].Instance, Color = Color3.fromRGB(0, 0, 0), Thickness = 1, Transparency = 1, LineJoinMode = Enum.LineJoinMode.Miter })
							S["UIStroke"]:AddToTheme({ Color = "Outline" })
							j:Create("UIPadding", { Parent = S["Tooltip"].Instance, Name = "\0", PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 6), PaddingRight = UDim.new(0, 5), PaddingLeft = UDim.new(0, 5) })
							S["Title"] = j:Create("TextLabel", { Parent = S["Tooltip"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(202, 243, 255), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = n.Text, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextTransparency = 1, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.XY, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							S["Title"]:AddToTheme({ TextColor3 = "Accent" })
							S["UIStroke2"] = S["Title"]:TextBorder()
							S["UIStroke2"].Instance.Transparency = 1
							S["Description"] = j:Create("TextLabel", { Parent = S["Tooltip"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = n.Description, Position = UDim2.new(0, 0, 0, 15), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, TextTransparency = 1, AutomaticSize = Enum.AutomaticSize.XY, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							S["Description"]:AddToTheme({ TextColor3 = v30 })
							S["UIStroke3"] = S["Description"]:TextBorder()
							S["UIStroke3"].Instance.Transparency = 1
						end

						u373:Connect(U.MouseEnter, function()
							local n = UserInputService:GetMouseLocation()

							S["Tooltip"].Instance.Position = UDim2.new(0, n.X + 8, 0, n.Y - 32)
							S["Tooltip"]:Tween(nil, { BackgroundTransparency = t26.BackgroundTheme and t26.BackgroundTheme.Alpha or 0 })
							S["Title"]:Tween(nil, { TextTransparency = 0 })
							S["Description"]:Tween(nil, { TextTransparency = t26.TextTheme and t26.TextTheme.Alpha or 0 })
							S["UIStroke"]:Tween(nil, { Transparency = t26.OutlineTheme and t26.OutlineTheme.Alpha or 0 })
							S["UIStroke2"]:Tween(nil, { Transparency = 0 })
							S["UIStroke3"]:Tween(nil, { Transparency = 0 })
							a = RunService.RenderStepped:Connect(function()
								local n = UserInputService:GetMouseLocation()

								S["Tooltip"]:Tween(nil, { Position = UDim2.new(0, n.X + 8, 0, n.Y - 35) })
							end)
						end)
						u373:Connect(U.MouseLeave, function()
							S["Tooltip"]:Tween(nil, { BackgroundTransparency = 1 })
							S["Title"]:Tween(nil, { TextTransparency = 1 })
							S["Description"]:Tween(nil, { TextTransparency = 1 })
							S["UIStroke"]:Tween(nil, { Transparency = 1 })
							S["UIStroke2"]:Tween(nil, { Transparency = 1 })
							S["UIStroke3"]:Tween(nil, { Transparency = 1 })

							if a then
								a:Disconnect()
								a = nil
							end
						end)
					end
				end

				u373.Holder = j:Create("ScreenGui", { Parent = hui, Name = "\0", ZIndexBehavior = Enum.ZIndexBehavior.Global, DisplayOrder = 2, ResetOnSpawn = false })
				u373.UnusedHolder = j:Create("ScreenGui", { Parent = hui, Name = "\0", ZIndexBehavior = Enum.ZIndexBehavior.Global, Enabled = false, ResetOnSpawn = false })
				u373.NotifHolder = j:Create(v31, { Parent = u373.Holder.Instance, Name = "\0", BackgroundTransparency = 1, Size = UDim2.new(0, 0, 1, 0), BorderColor3 = Color3.fromRGB(0, 0, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
				j:Create("UIListLayout", { Parent = u373.NotifHolder.Instance, Name = "\0", VerticalAlignment = Enum.VerticalAlignment.Bottom, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder })
				j:Create("UIPadding", { Parent = u373.NotifHolder.Instance, Name = "\0", PaddingTop = UDim.new(0, 12), PaddingBottom = UDim.new(0, 12), PaddingRight = UDim.new(0, 12), PaddingLeft = UDim.new(0, 12) })

				local Q = {}

				do
					Q.Window = function(a, a)
						local n = {}

						do
							n["Window"] = j:Create("ImageLabel", { Parent = a.Parent.Instance, Name = "\0", AnchorPoint = a.AnchorPoint, Position = a.Position, BorderColor3 = Color3.fromRGB(12, 12, 12), Size = a.Size, Image = "rbxassetid://0", BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							n["Window"]:AddToTheme({ Image = "WindowBackground", BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })

							if a.Draggable then
								n["Window"]:MakeDraggable()
							end

							if a.Resizeable then
								n["Window"]:MakeResizeable(Vector2.new(a.Size.X.Offset, a.Size.Y.Offset), Vector2.new(9999, 9999))
							end

							n["UIStroke"] = n["Window"]:Border("Outline")
						end

						return n
					end
					Q.AutosizingLabel = function(a, a)
						local n = {}
						local U = {}

						do
							U["Label"] = j:Create("TextLabel", { Parent = a.Parent.Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = a.Text, BackgroundTransparency = 1, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.XY, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["Label"]:AddToTheme({ TextColor3 = v30 })
							U["UIStroke"] = U["Label"]:TextBorder()
						end

						function n:SetProperty(a, S)
							U["Label"].Instance[a] = S
						end

						return n, U
					end
					Q.WindowPage = function(a, a)
						local n = { Active = false, SubPages = {}, Items = {}, Window = a.Window, ColumnsData = {} }
						local U = {}

						do
							U["Inactive"] = j:Create("TextButton", { Parent = a.Parent.Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Text = "", AutoButtonColor = false, BackgroundTransparency = 0.6000000238418579, Size = UDim2.new(1, 0, 0, 25), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(25, 30, 26) })
							U["Inactive"]:AddToTheme({ BackgroundTransparency = "PageBackgroundTransparency", BackgroundColor3 = "PageBackground", BorderColor3 = v32 })
							U["ButtonBorder"] = j:Create("UIStroke", { Parent = U["Inactive"].Instance, Name = "\0", Color = Color3.fromRGB(61, 60, 65), Transparency = 0.6, LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })
							U["ButtonBorder"]:AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							U["Liner"] = j:Create(v31, { Parent = U["Inactive"].Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 1, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 30, 26) })
							U["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })
							U[v30] = j:Create("TextLabel", { Parent = U["Inactive"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = a.Name, AnchorPoint = Vector2.new(0, 0.5), Size = UDim2.new(0, 0, 0, 15), BackgroundTransparency = 1, Position = UDim2.new(0, 8, 0.5, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U[v30]:AddToTheme({ TextColor3 = v30 })
							U["TextStroke"] = U[v30]:TextBorder()
							U["Glow"] = j:Create(v31, { Parent = U["Inactive"].Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 20, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 30, 26) })
							U["Glow"]:AddToTheme({ BackgroundColor3 = "Accent" })
							U["GlowGradient"] = j:Create("UIGradient", { Parent = U["Glow"].Instance, Name = "\0", Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.193, 0.8687499761581421), NumberSequenceKeypoint.new(0.504, 0.96875), NumberSequenceKeypoint.new(1, 1) }) })
							U["Page"] = j:Create(v31, { Parent = a.ContentHolder.Instance, Name = "\0", BackgroundTransparency = 1, Visible = false, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 1, 0), BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							if a.SubPages then
								U["SubPages"] = j:Create(v31, { Parent = U["Page"].Instance, Name = "\0", Size = UDim2.new(0, 0, 0, 35), BorderColor3 = Color3.fromRGB(42, 49, 45), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Color3.fromRGB(20, 24, 21) })
								U["SubPages"]:AddToTheme({ BackgroundTransparency = "PageBackgroundTransparency", BackgroundColor3 = "PageBackground", BorderColor3 = "Outline" })
								U["SubPages"]:Border(v32)
								j:Create("UIPadding", { Parent = U["SubPages"].Instance, Name = "\0", PaddingRight = UDim.new(0, 7), PaddingLeft = UDim.new(0, 7) })
								j:Create("UIListLayout", { Parent = U["SubPages"].Instance, Name = "\0", VerticalAlignment = Enum.VerticalAlignment.Center, FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder })
								U["Columns"] = j:Create(v31, { Parent = U["Page"].Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 51), BorderColor3 = Color3.fromRGB(42, 49, 45), Size = UDim2.new(1, 0, 1, -51.0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							else
								j:Create("UIListLayout", { Parent = U["Page"].Instance, Name = "\0", FillDirection = Enum.FillDirection.Horizontal, HorizontalFlex = Enum.UIFlexAlignment.Fill, Padding = UDim.new(0, 14), SortOrder = Enum.SortOrder.LayoutOrder })

								for S = 1, a.Columns do
									local T = j:Create("ScrollingFrame", { Parent = U["Page"].Instance, Name = "\0", ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0), Active = true, AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollBarThickness = 0, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), BackgroundColor3 = Color3.fromRGB(255, 255, 255), BorderColor3 = Color3.fromRGB(0, 0, 0), BorderSizePixel = 0, CanvasSize = UDim2.new(0, 0, 0, 0) })

									j:Create("UIPadding", { Parent = T.Instance, Name = "\0", PaddingTop = UDim.new(0, 2), PaddingBottom = UDim.new(0, 2), PaddingRight = UDim.new(0, 2), PaddingLeft = UDim.new(0, 2) })
									j:Create("UIListLayout", { Parent = T.Instance, Name = "\0", Padding = UDim.new(0, 14), SortOrder = Enum.SortOrder.LayoutOrder })
									n.ColumnsData[S] = T
								end
							end

							n.Items = U
						end

						local S = false

						function n:Turn(T)
							if S then
								return
							end

							n.Active = T
							S = true
							U["Page"].Instance.Visible = T
							U["Page"].Instance.Parent = T and a.ContentHolder.Instance or u373.UnusedHolder.Instance

							if n.Active then
								U["Inactive"]:Tween(nil, { BackgroundTransparency = t26.PageBackgroundTheme and t26.PageBackgroundTheme.Alpha or 0 })
								U["ButtonBorder"]:Tween(nil, { Transparency = 0 })
								U["Glow"]:Tween(nil, { BackgroundTransparency = 0 })
								U["Liner"]:Tween(nil, { BackgroundTransparency = 0 })
								U[v30]:Tween(nil, { Position = UDim2.new(0, 13, 0.5, 0) })
							else
								U["Inactive"]:Tween(nil, { BackgroundTransparency = t26.PageBackgroundTheme and math.clamp(t26.PageBackgroundTheme.Alpha + 0.6, 0, 1) or 0.6 })
								U["ButtonBorder"]:Tween(nil, { Transparency = 0.6 })
								U["Glow"]:Tween(nil, { BackgroundTransparency = 1 })
								U["Liner"]:Tween(nil, { BackgroundTransparency = 1 })
								U[v30]:Tween(nil, { Position = UDim2.new(0, 8, 0.5, 0) })
							end

							local f = v:GetProperty(U["Page"].Instance)

							if f then
								local G

								if type(f) == "table" then
									for H, H in f do
										G = v:FadeItem(U["Page"].Instance, H, T, a.Window.FadeTime)
									end
								else
									G = v:FadeItem(U["Page"].Instance, f, T, a.Window.FadeTime)
								end

								if G then
									u373:Connect(G.Tween.Completed, function()
										S = false
									end)
								else
									S = false
								end
							else
								S = false
							end
						end

						U["Inactive"]:Connect("MouseButton1Down", function()
							for S, S in a.Window.Pages do
								if S == n and n.Active then
									return
								end

								S:Turn(S == n)
							end
						end)
						U["Inactive"]:OnHover(function()
							U["Inactive"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
							U["Inactive"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
						end)
						U["Inactive"]:OnHoverLeave(function()
							U["Inactive"]:ChangeItemTheme({ BackgroundColor3 = "PageBackground", BorderColor3 = v32 })
							U["Inactive"]:Tween(nil, { BackgroundColor3 = u373.Theme["PageBackground"] })
						end)

						if #a.Window.Pages == 0 then
							n:Turn(true)
						end

						table.insert(a.Window.Pages, n)

						return n, U
					end
					Q.WindowSubPage = function(a, a)
						local n = { Active = false, ColumnsData = {} }
						local U = {}

						do
							U["Inactive"] = j:Create("TextButton", { Parent = a.Page.Items["SubPages"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Text = "", AutoButtonColor = false, BackgroundTransparency = 1, Size = UDim2.new(0, 0, 0, 20), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.X, TextSize = 14, BackgroundColor3 = Color3.fromRGB(25, 30, 26) })
							U["Inactive"]:AddToTheme({ BackgroundTransparency = "PageBackgroundTransparency", BackgroundColor3 = "PageBackground", BorderColor3 = v32 })
							U["ButtonBorder"] = j:Create("UIStroke", { Parent = U["Inactive"].Instance, Name = "\0", Color = Color3.fromRGB(61, 60, 65), Transparency = 1, LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })
							U["ButtonBorder"]:AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							U[v30] = j:Create("TextLabel", { Parent = U["Inactive"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = a.Name, AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.new(0, 0, 0, 15), BackgroundTransparency = 1, Position = UDim2.new(0.5, -5.0, 0.5, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U[v30]:AddToTheme({ TextColor3 = v30 })
							U["TextStroke"] = U[v30]:TextBorder()
							j:Create("UIPadding", { Parent = U[v30].Instance, Name = "\0", PaddingRight = UDim.new(0, 8), PaddingLeft = UDim.new(0, 8) })
							j:Create("UIPadding", { Parent = U["Inactive"].Instance, Name = "\0", PaddingTop = UDim.new(0, 2), PaddingLeft = UDim.new(0, 18), PaddingRight = UDim.new(0, 12) })
							U["Glow"] = j:Create(v31, { Parent = U["Inactive"].Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, -18.0, 0, -2.0), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 20, 1, 2), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							U["Glow"]:AddToTheme({ BackgroundColor3 = "Accent" })
							j:Create("UIGradient", { Parent = U["Glow"].Instance, Name = "\0", Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.193, 0.8687499761581421), NumberSequenceKeypoint.new(0.504, 0.96875), NumberSequenceKeypoint.new(1, 1) }) })
							U["Liner"] = j:Create(v31, { Parent = U["Inactive"].Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, -18.0, 0, -2.0), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 1, 1, 2), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							U["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })
							U["Page"] = j:Create(v31, { Parent = a.Page.Items["Columns"].Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, -2.0, 0, -2.0), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 2, 1, 0), BorderSizePixel = 0, Visible = false, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIListLayout", { Parent = U["Page"].Instance, Name = "\0", FillDirection = Enum.FillDirection.Horizontal, HorizontalFlex = Enum.UIFlexAlignment.Fill, Padding = UDim.new(0, 14), SortOrder = Enum.SortOrder.LayoutOrder })

							for S = 1, a.Columns do
								local T = j:Create("ScrollingFrame", { Parent = U["Page"].Instance, Name = "\0", ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0), Active = true, AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollBarThickness = 0, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), BackgroundColor3 = Color3.fromRGB(255, 255, 255), BorderColor3 = Color3.fromRGB(0, 0, 0), BorderSizePixel = 0, CanvasSize = UDim2.new(0, 0, 0, 0) })

								j:Create("UIPadding", { Parent = T.Instance, Name = "\0", PaddingTop = UDim.new(0, 2), PaddingBottom = UDim.new(0, 2), PaddingRight = UDim.new(0, 2), PaddingLeft = UDim.new(0, 2) })
								j:Create("UIListLayout", { Parent = T.Instance, Name = "\0", Padding = UDim.new(0, 14), SortOrder = Enum.SortOrder.LayoutOrder })
								n.ColumnsData[S] = T
							end
						end

						local S = false

						u373.SearchItems[n] = {}

						function n:Turn(T)
							if S then
								return
							end

							n.Active = T
							S = true
							U["Page"].Instance.Visible = T
							U["Page"].Instance.Parent = T and a.Page.Items["Columns"].Instance or u373.UnusedHolder.Instance

							if n.Active then
								U["Inactive"]:Tween(nil, { BackgroundTransparency = t26.PageBackgroundTheme and t26.PageBackgroundTheme.Alpha or 0 })
								U["ButtonBorder"]:Tween(nil, { Transparency = 0 })
								U["Liner"]:Tween(nil, { BackgroundTransparency = 0 })
								U["Glow"]:Tween(nil, { BackgroundTransparency = 0 })
								U[v30]:Tween(nil, { Position = UDim2.new(0.5, 0, 0.5, 0) })
								u373.CurrentPage = n
							else
								U["Inactive"]:Tween(nil, { BackgroundTransparency = 1 })
								U["ButtonBorder"]:Tween(nil, { Transparency = 1 })
								U["Liner"]:Tween(nil, { BackgroundTransparency = 1 })
								U["Glow"]:Tween(nil, { BackgroundTransparency = 1 })
								U[v30]:Tween(nil, { Position = UDim2.new(0.5, -5.0, 0.5, 0) })
							end

							local f = U["Page"].Instance:GetDescendants()

							table.insert(f, U["Page"].Instance)

							local G

							for H, H in f do
								local f = v:GetProperty(H)

								if not f then
									continue
								end

								if type(f) == "table" then
									for O, O in f do
										G = v:FadeItem(H, O, T, a.Window.FadeTime)
									end
								else
									G = v:FadeItem(H, f, T, a.Window.FadeTime)
								end
							end

							u373:Connect(G.Tween.Completed, function()
								S = false
							end)
						end

						U["Inactive"]:Connect("MouseButton1Down", function()
							for U, U in a.Page.SubPages do
								U:Turn(U == n)
							end
						end)

						if #a.Page.SubPages == 0 then
							n:Turn(true)
						end

						table.insert(a.Page.SubPages, n)

						return n
					end
					Q.Toggle = function(a, a)
						local n = { Value = false, Flag = a.Flag }
						local U = {}

						do
							U["Toggle"] = j:Create("TextButton", { Parent = a.Parent.Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "", AutoButtonColor = false, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 12), BorderSizePixel = 0, TextSize = 14, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["Indicator"] = j:Create(v31, { Parent = U["Toggle"].Instance, Name = "\0", AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(0, 12, 0, 12), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(30, 36, 31) })
							U["Indicator"]:AddToTheme({ BackgroundTransparency = "ElementTransparency", BackgroundColor3 = "Element", BorderColor3 = v32 })
							j:Create("UIStroke", { Parent = U["Indicator"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							j:Create("UIGradient", { Parent = U["Indicator"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
								return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
							end })
							U["Check"] = j:Create("ImageLabel", { Parent = U["Indicator"].Instance, Name = "\0", ImageColor3 = Color3.fromRGB(0, 0, 0), ScaleType = Enum.ScaleType.Fit, ImageTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Image = "rbxassetid://108016671469439", BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0.5, 0), Size = UDim2.new(1, 2, 1, 2), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U[v30] = j:Create("TextLabel", { Parent = U["Toggle"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = a.Name, Size = UDim2.new(0, 0, 0, 15), AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 22, 0.5, 0), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U[v30]:AddToTheme({ TextColor3 = v30 })
							U[v30]:TextBorder()
							U["SubElements"] = j:Create(v31, { Parent = U["Toggle"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 1, Position = UDim2.new(0, U[v30].Instance.TextBounds.X + 30, 0, 0), Size = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIListLayout", { Parent = U["SubElements"].Instance, Name = "\0", VerticalAlignment = Enum.VerticalAlignment.Center, FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder })

							if a.Tooltip then
								U["TooltipThing"] = j:Create("TextLabel", { Parent = U["SubElements"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "(?)", Size = UDim2.new(0, 0, 0, 15), AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 22, 0.5, 0), BackgroundTransparency = 1, TextTransparency = 0.4, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
								U["TooltipThing"]:AddToTheme({ TextColor3 = v30 })
								U["TooltipThing"]:TextBorder()
								U["TooltipThing"]:Tooltip({ Text = a.Tooltip.Name, Description = a.Tooltip.Description })
							end
						end

						function n:Get()
							return n.Value
						end
						function n:SetText(S)
							S = tostring(S)
							U[v30].Instance.Text = S
						end
						function n:Set(S, T)
							n.Value = S
							u373.Flags[n.Flag] = S
							task.spawn(function()
								if n.Value then
									U["Indicator"]:ChangeItemTheme({ BackgroundColor3 = "Accent", BorderColor3 = v32 })
									U["Indicator"]:Tween(nil, { BackgroundColor3 = u373.Theme.Accent })
									task.wait(0.05)
									U["Check"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, Size = UDim2.new(1, 2, 1, 2) })
								else
									U["Indicator"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
									U["Indicator"]:Tween(nil, { BackgroundColor3 = u373.Theme.Element })
									task.wait(0.05)
									U["Check"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 1, Size = UDim2.new(0, 0, 0, 0) })
								end
							end)

							if a.Callback and T ~= false then
								u373:SafeCall(a.Callback, n.Value)
							end
						end
						function n:SetVisibility(S)
							U["Toggle"].Instance.Visible = S
						end

						local S = u373.SearchItems[a.Page]

						if S then
							local T = { Element = U["Toggle"], Name = a.Name }

							table.insert(S, T)
						end

						U["Toggle"]:Connect("MouseButton1Down", function()
							n:Set(not n.Value)
						end)
						U["Toggle"]:OnHover(function()
							if n.Value then
								return
							end

							U["Indicator"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
							U["Indicator"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
						end)
						U["Toggle"]:OnHoverLeave(function()
							if n.Value then
								return
							end

							U["Indicator"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
							U["Indicator"]:Tween(nil, { BackgroundColor3 = u373.Theme["Element"] })
						end)

						if a.Default ~= nil then
							n:Set(a.Default)
						end

						u373.SetFlags[n.Flag] = function(S)
							n:Set(S)
						end
						t25[a.Flag] = n

						return n, U
					end
					Q.Button = function(a, a)
						local n = {}
						local U = {}

						do
							U["Button"] = j:Create(v31, { Parent = a.Parent.Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIListLayout", { Parent = U["Button"].Instance, Name = "\0", FillDirection = Enum.FillDirection.Horizontal, HorizontalFlex = Enum.UIFlexAlignment.Fill, Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder })
						end

						function n:Add(S, T)
							local f = {}
							local G = {}

							do
								G["NewButton"] = j:Create("TextButton", { Parent = U["Button"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Text = "", AutoButtonColor = false, Size = UDim2.new(1, 0, 0, 20), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(30, 36, 31) })
								G["NewButton"]:AddToTheme({ BackgroundTransparency = "ElementTransparency", BackgroundColor3 = "Element", BorderColor3 = v32 })
								j:Create("UIGradient", { Parent = G["NewButton"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
									return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
								end })
								j:Create("UIStroke", { Parent = G["NewButton"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
								G[v30] = j:Create("TextLabel", { Parent = G["NewButton"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = S, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
								G[v30]:AddToTheme({ TextColor3 = v30 })
								G[v30]:TextBorder()
							end

							function f:Press()
								G["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "Accent", BorderColor3 = v32 })
								G["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme.Accent })
								u373:SafeCall(T)
								task.wait(0.1)
								G["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
								G["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme.Element })
							end
							function f:SetVisibility(T)
								G["NewButton"].Instance.Visible = T
							end

							local T = u373.SearchItems[a.Page]

							if T then
								local a = { Element = G["NewButton"], Name = S }

								table.insert(T, a)
							end

							G["NewButton"]:OnHover(function()
								G["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
								G["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
							end)
							G["NewButton"]:OnHoverLeave(function()
								G["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
								G["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme.Element })
							end)
							G["NewButton"]:Connect("MouseButton1Down", function()
								f:Press()
							end)

							return f
						end
						function n:SetVisibility(a)
							U["Button"].Instance.Visible = a
						end

						return n, U
					end
					Q.Slider = function(a, a)
						local n = { Value = a.Multi and { a.Min or 0, a.Max or 0 } or 0, Flag = a.Flag, Sliding = false, SlidingHandle = nil }
						local U = {}

						do
							U["Slider"] = j:Create(v31, { Parent = a.Parent.Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 28), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U[v30] = j:Create("TextLabel", { Parent = U["Slider"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = a.Name, BackgroundTransparency = 1, Size = UDim2.new(0, 0, 0, 15), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U[v30]:AddToTheme({ TextColor3 = v30 })
							U[v30]:TextBorder()
							U["RealSlider"] = j:Create("TextButton", { Parent = U["Slider"].Instance, AutoButtonColor = false, Text = "", Name = "\0", AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 0, 1, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(1, 0, 0, 10), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(30, 36, 31) })
							U["RealSlider"]:AddToTheme({ BackgroundTransparency = "ElementTransparency", BackgroundColor3 = "Element", BorderColor3 = v32 })
							j:Create("UIGradient", { Parent = U["RealSlider"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
								return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
							end })
							j:Create("UIStroke", { Parent = U["RealSlider"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							U["Accent"] = j:Create(v31, { Parent = U["RealSlider"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(a.Multi and 0 or 0.5, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255), ZIndex = 1 })
							U["Accent"]:AddToTheme({ BackgroundColor3 = "Accent" })
							j:Create("UIGradient", { Parent = U["Accent"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
								return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
							end })

							if not a.Multi then
								U["Dragger"] = j:Create(v31, { Parent = U["Accent"].Instance, Name = "\0", AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), BorderColor3 = Color3.fromRGB(42, 49, 45), Size = UDim2.new(0, 3, 1, 3), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
								U["Dragger"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = "Outline" })
								j:Create("UIStroke", { Parent = U["Dragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							else
								U["MinDragger"] = j:Create(v31, { Parent = U["RealSlider"].Instance, Name = "\0", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.25, 0, 0.5, 0), BorderColor3 = Color3.fromRGB(42, 49, 45), Size = UDim2.new(0, 4, 1, 4), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15), ZIndex = 10 })
								U["MinDragger"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = "Outline" })
								j:Create("UIStroke", { Parent = U["MinDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
								U["MaxDragger"] = j:Create(v31, { Parent = U["RealSlider"].Instance, Name = "\0", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.75, 0, 0.5, 0), BorderColor3 = Color3.fromRGB(42, 49, 45), Size = UDim2.new(0, 4, 1, 4), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15), ZIndex = 10 })
								U["MaxDragger"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = "Outline" })
								j:Create("UIStroke", { Parent = U["MaxDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							end

							U["Value"] = j:Create("TextLabel", { Parent = U["Slider"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = a.Multi and string.format("0%s - 0%s", a.Suffix or "", a.Suffix or "") or "50%", AnchorPoint = Vector2.new(1, 0), Size = UDim2.new(0, 0, 0, 15), BackgroundTransparency = 1, Position = UDim2.new(1, 0, 0, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["Value"]:AddToTheme({ TextColor3 = v30 })
							U["Value"]:TextBorder()
						end

						function n:Get()
							return n.Value
						end
						function n:SetVisibility(S)
							U["Slider"].Instance.Visible = S
						end
						function n:Set(S, T)
							if a.Multi then
								if type(S) ~= "table" then
									S = { S, S }
								end

								local f = t29.Round(math.clamp(S[1] or a.Min, a.Min, a.Max), a.Decimals)
								local G = t29.Round(math.clamp(S[2] or a.Max, a.Min, a.Max), a.Decimals)

								if f > G then
									f, G = G, f
								end

								n.Value = { f, G }
								u373.Flags[n.Flag] = n.Value

								local H = (f - a.Min) / (a.Max - a.Min)
								local O = (G - a.Min) / (a.Max - a.Min)
								local F = O - H

								U["Accent"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(H, 0, 0, 0), Size = UDim2.new(F, 0, 1, 0) })
								U["MinDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(H, 0, 0.5, 0) })
								U["MaxDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(O, 0, 0.5, 0) })
								U["Value"].Instance.Text = string.format("%s%s - %s%s", tostring(f), a.Suffix, tostring(G), a.Suffix)

								if a.Callback and T ~= false then
									u373:SafeCall(a.Callback, n.Value)
								end
							else
								if type(S) == "table" then
									S = S[1] or a.Min
								end

								n.Value = t29.Round(math.clamp(S, a.Min, a.Max), a.Decimals)
								u373.Flags[n.Flag] = n.Value
								U["Accent"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.new((n.Value - a.Min) / (a.Max - a.Min), 0, 1, 0) })
								U["Value"].Instance.Text = string.format("%s%s", tostring(n.Value), a.Suffix)

								if a.Callback and T ~= false then
									u373:SafeCall(a.Callback, n.Value)
								end
							end
						end

						local S

						if a.Multi then
							U["RealSlider"]:Connect("InputBegan", function(T)
								if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
									local f = (mouse.X - U["RealSlider"].Instance.AbsolutePosition.X) / U["RealSlider"].Instance.AbsoluteSize.X
									local G = (n.Value[1] - a.Min) / (a.Max - a.Min)
									local H = (n.Value[2] - a.Min) / (a.Max - a.Min)
									local O = math.abs(f - G)
									local G = math.abs(f - H)

									if O < G then
										n.SlidingHandle = "Min"
									else
										n.SlidingHandle = "Max"
									end

									n.Sliding = true

									local G = ((a.Max - a.Min) * f) + a.Min

									if n.SlidingHandle == "Min" then
										n:Set({ G, n.Value[2] })
									else
										n:Set({ n.Value[1], G })
									end

									if S then
										return
									end

									S = T.Changed:Connect(function()
										if T.UserInputState == Enum.UserInputState.End then
											n.Sliding = false
											n.SlidingHandle = nil
											S:Disconnect()
											S = nil
										end
									end)
								end
							end)
							u373:Connect(UserInputService.InputChanged, function(T)
								if T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch then
									if n.Sliding and n.SlidingHandle then
										local T = (mouse.X - U["RealSlider"].Instance.AbsolutePosition.X) / U["RealSlider"].Instance.AbsoluteSize.X
										local f = ((a.Max - a.Min) * T) + a.Min

										if n.SlidingHandle == "Min" then
											n:Set({ f, n.Value[2] })
										else
											n:Set({ n.Value[1], f })
										end
									end
								end
							end)
						else
							U["RealSlider"]:Connect("InputBegan", function(T)
								if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
									n.Sliding = true

									local f = (mouse.X - U["RealSlider"].Instance.AbsolutePosition.X) / U["RealSlider"].Instance.AbsoluteSize.X
									local G = ((a.Max - a.Min) * f) + a.Min

									n:Set(G)

									if S then
										return
									end

									S = T.Changed:Connect(function()
										if T.UserInputState == Enum.UserInputState.End then
											n.Sliding = false
											S:Disconnect()
											S = nil
										end
									end)
								end
							end)
							u373:Connect(UserInputService.InputChanged, function(S)
								if S.UserInputType == Enum.UserInputType.MouseMovement or S.UserInputType == Enum.UserInputType.Touch then
									if n.Sliding then
										local S = (mouse.X - U["RealSlider"].Instance.AbsolutePosition.X) / U["RealSlider"].Instance.AbsoluteSize.X
										local Z = ((a.Max - a.Min) * S) + a.Min

										n:Set(Z)
									end
								end
							end)
						end

						U["Slider"]:OnHover(function()
							U["RealSlider"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
							U["RealSlider"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
						end)
						U["Slider"]:OnHoverLeave(function()
							U["RealSlider"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
							U["RealSlider"]:Tween(nil, { BackgroundColor3 = u373.Theme["Element"] })
						end)

						if a.Default ~= nil then
							n:Set(a.Default)
						elseif a.Multi then
							local Z = (a.Max + a.Min) / 2
							local S = (a.Max - a.Min) / 4

							n:Set({ Z - S, Z + S })
						end

						u373.SetFlags[n.Flag] = function(Z)
							n:Set(Z)
						end
						t25[a.Flag] = n

						return n, U
					end
					Q.Label = function(Z, Z)
						local a = {}
						local n = {}

						do
							n["Label"] = j:Create(v31, { Parent = Z.Parent.Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 20), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							n[v30] = j:Create("TextLabel", { Parent = n["Label"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = Z.Name, Size = UDim2.new(0, 0, 0, 15), AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							n[v30]:AddToTheme({ TextColor3 = v30 })
							n[v30]:TextBorder()
							n["SubElements"] = j:Create(v31, { Parent = n["Label"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 1, Position = UDim2.new(0, n[v30].Instance.TextBounds.X + 8, 0, 0), Size = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIListLayout", { Parent = n["SubElements"].Instance, Name = "\0", VerticalAlignment = Enum.VerticalAlignment.Center, FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder })
						end

						n[v30].Instance:GetPropertyChangedSignal("TextBounds"):Once(function()
							n["SubElements"].Instance.Position = UDim2.new(0, n[v30].Instance.TextBounds.X + 8, 0, 0)
						end)

						function a:SetText(Z)
							Z = tostring(Z)
							n[v30].Instance.Text = Z
						end
						function a:SetVisibility(Z)
							n["Label"].Instance.Visible = Z
						end

						return a, n
					end
					Q.Dropdown = function(Z, Z)
						local a = { Flag = Z.Flag, Value = {}, Options = {}, IsOpen = false }
						local n = {}

						do
							n["Dropdown"] = j:Create(v31, { Parent = Z.Parent.Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 40), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							n[v30] = j:Create("TextLabel", { Parent = n["Dropdown"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = Z.Name, BackgroundTransparency = 1, Size = UDim2.new(0, 0, 0, 15), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							n[v30]:AddToTheme({ TextColor3 = v30 })
							n[v30]:TextBorder()
							n["RealDropdown"] = j:Create("TextButton", { Parent = n["Dropdown"].Instance, AutoButtonColor = false, Text = "", Name = "\0", AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 0, 1, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(1, 0, 0, 20), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(30, 36, 31) })
							n["RealDropdown"]:AddToTheme({ BackgroundTransparency = "ElementTransparency", BackgroundColor3 = "Element", BorderColor3 = v32 })
							j:Create("UIGradient", { Parent = n["RealDropdown"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
								return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
							end })
							j:Create("UIStroke", { Parent = n["RealDropdown"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							n["Value"] = j:Create("TextLabel", { Parent = n["RealDropdown"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "--", AnchorPoint = Vector2.new(0, 0.5), Size = UDim2.new(1, -25.0, 0, 15), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0, 8, 0.5, 0), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							n["Value"]:AddToTheme({ TextColor3 = v30 })
							n["Value"]:TextBorder()
							n["Icon"] = j:Create("ImageLabel", { Parent = n["RealDropdown"].Instance, Name = "\0", ImageColor3 = Color3.fromRGB(202, 243, 255), ScaleType = Enum.ScaleType.Fit, BorderColor3 = Color3.fromRGB(0, 0, 0), AnchorPoint = Vector2.new(1, 0.5), Image = "rbxassetid://113229176886493", BackgroundTransparency = 1, Position = UDim2.new(1, -2.0, 0.5, 0), Size = UDim2.new(0, 20, 0, 20), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							n["Icon"]:AddToTheme({ ImageColor3 = "Accent" })
							n["OptionHolder"] = j:Create(v31, { Parent = u373.UnusedHolder.Instance, Name = "\0", Visible = false, BorderColor3 = Color3.fromRGB(12, 12, 12), BorderSizePixel = 2, Position = UDim2.new(0, 0, 1, 8), Size = UDim2.new(1, 0, 0, 25), ZIndex = 5, AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = Color3.fromRGB(20, 24, 21), Transparency = 0 })
							n["OptionHolder"]:AddToTheme({ BackgroundTransparency = "InlineTransparency", BackgroundColor3 = "Inline", BorderColor3 = v32 })
							j:Create("UIStroke", { Parent = n["OptionHolder"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							j:Create("UIPadding", { Parent = n["OptionHolder"].Instance, Name = "\0", PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5), PaddingRight = UDim.new(0, 5), PaddingLeft = UDim.new(0, 8) })
							j:Create("UIListLayout", { Parent = n["OptionHolder"].Instance, Name = "\0", Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder })
						end

						function a:Get()
							return a.Value
						end

						local U = false
						local S

						function a:SetOpen(T)
							if U then
								return
							end

							a.IsOpen = T
							U = true

							if a.IsOpen then
								n["OptionHolder"].Instance.Visible = true
								n["OptionHolder"].Instance.Parent = u373.Holder.Instance
								n["Icon"]:Tween(nil, { Rotation = -90.0 })
								S = RunService.RenderStepped:Connect(function()
									n["OptionHolder"].Instance.Position = UDim2.new(0, n["RealDropdown"].Instance.AbsolutePosition.X, 0, n["RealDropdown"].Instance.AbsolutePosition.Y + n["RealDropdown"].Instance.AbsoluteSize.Y + 5)
									n["OptionHolder"].Instance.Size = UDim2.new(0, n["RealDropdown"].Instance.AbsoluteSize.X, 0, 0)
								end)

								if not U then
									for S, S in u373.OpenFrames do
										if S ~= a then
											S:SetOpen(false)
										end
									end

									u373.OpenFrames[a] = a
								end
							else
								if not U and u373.OpenFrames[a] then
									u373.OpenFrames[a] = nil
								end

								n["Icon"]:Tween(nil, { Rotation = 0 })
							end

							local S = n["OptionHolder"].Instance:GetDescendants()

							table.insert(S, n["OptionHolder"].Instance)

							local f

							for G, G in S do
								local S = v:GetProperty(G)

								if not S then
									continue
								end

								if type(S) == "table" then
									for H, H in S do
										f = v:FadeItem(G, H, T, u373.FadeSpeed)
									end
								else
									f = v:FadeItem(G, S, T, u373.FadeSpeed)
								end
							end

							f.Tween.Completed:Connect(function()
								U = false
								n["OptionHolder"].Instance.Visible = a.IsOpen
								task.wait(0.2)
								n["OptionHolder"].Instance.Parent = not a.IsOpen and u373.UnusedHolder.Instance or u373.Holder.Instance
							end)
						end
						function a:SetVisibility(U)
							n["Dropdown"].Instance.Visible = U
						end
						function a:Set(U, S)
							if Z.Multi then
								if type(U) ~= "table" then
									return
								end

								a.Value = {}
								u373.Flags[a.Flag] = a.Value

								for T, T in U do
									local f = a.Options[T]

									if not f then
										continue
									end

									table.insert(a.Value, T)
									f.Selected = true
									f:Toggle("Active")
								end

								n["Value"].Instance.Text = table.concat(a.Value, ", ")
							else
								if not a.Options[U] then
									return
								end

								a.Value = U
								u373.Flags[a.Flag] = U

								for T, T in a.Options do
									local f = T == a.Options[U]

									T.Selected = f
									T:Toggle(f and "Active" or "Inactive")
								end

								n["Value"].Instance.Text = U
							end

							if Z.Callback and S ~= false then
								u373:SafeCall(Z.Callback, a.Value)
							end
						end
						function a:Add(U)
							local S = j:Create("TextButton", { Parent = n["OptionHolder"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = U, AutoButtonColor = false, BorderSizePixel = 0, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, 0, 0, 15), ZIndex = 5, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							S:AddToTheme({ TextColor3 = v30 })

							local T = { Button = S, Name = U, Selected = false }

							function T:Toggle(U)
								if U == "Active" then
									T.Button:ChangeItemTheme({ TextColor3 = "Accent" })
									T.Button:Tween(nil, { TextColor3 = u373.Theme.Accent })
								else
									T.Button:ChangeItemTheme({ TextColor3 = v30 })
									T.Button:Tween(nil, { TextColor3 = u373.Theme.Text })
								end
							end
							function T:Set()
								T.Selected = not T.Selected

								if Z.Multi then
									local U = table.find(a.Value, T.Name)

									if U then
										table.remove(a.Value, U)
									else
										table.insert(a.Value, T.Name)
									end

									T:Toggle(U and "Inactive" or "Active")
									u373.Flags[a.Flag] = a.Value

									local U = #a.Value > 0 and table.concat(a.Value, ", ") or "--"

									n["Value"].Instance.Text = U
								else
									if T.Selected then
										a.Value = T.Name
										u373.Flags[a.Flag] = T.Name
										T.Selected = true
										T:Toggle("Active")

										for U, U in a.Options do
											if U ~= T then
												U.Selected = false
												U:Toggle("Inactive")
											end
										end

										n["Value"].Instance.Text = T.Name
									else
										a.Value = nil
										u373.Flags[a.Flag] = nil
										T.Selected = false
										T:Toggle("Inactive")
										n["Value"].Instance.Text = "--"
									end
								end

								if Z.Callback then
									u373:SafeCall(Z.Callback, a.Value)
								end
							end

							T.Button:Connect("MouseButton1Down", function()
								T:Set()
							end)
							a.Options[T.Name] = T

							return T
						end
						function a:Remove(U)
							if not a.Options[U] then
								return
							end

							a.Options[U].Button:Clean()
							a.Options[U] = nil
						end
						function a:Refresh(U)
							for S, S in a.Options do
								a:Remove(S.Name)
							end

							for S, S in U do
								a:Add(S)
							end
						end

						n["RealDropdown"]:Connect("MouseButton1Down", function()
							a:SetOpen(not a.IsOpen)
						end)
						n["Dropdown"]:OnHover(function()
							n["RealDropdown"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
							n["RealDropdown"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
						end)
						n["Dropdown"]:OnHoverLeave(function()
							n["RealDropdown"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
							n["RealDropdown"]:Tween(nil, { BackgroundColor3 = u373.Theme["Element"] })
						end)
						u373:Connect(UserInputService.InputBegan, function(U)
							if U.UserInputType == Enum.UserInputType.MouseButton1 or U.UserInputType == Enum.UserInputType.Touch then
								if not a.IsOpen then
									return
								end

								if t29.IsMouseOverFrame(n["OptionHolder"]) then
									return
								end

								a:SetOpen(false)
							end
						end)

						for U, U in Z.Items do
							a:Add(U)
						end

						if Z.Default ~= nil then
							a:Set(Z.Default)
						end

						u373.SetFlags[a.Flag] = function(U)
							a:Set(U)
						end
						t25[Z.Flag] = a

						return a, n
					end
					Q.ColorpickerTab = function(Z, Z)
						if not Z.Pages then
							return
						end

						local a = { Name = Z.Name, Active = false }
						local n = {}

						do
							n["Inactive"] = j:Create("TextButton", { Parent = Z.PageHolder.Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = a.Name, AutoButtonColor = false, Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(20, 24, 21), BackgroundTransparency = 0.5 })
							n["Inactive"]:AddToTheme({ BackgroundTransparency = "InlineTransparency", BackgroundColor3 = "Inline" })
							n["Inactive"]:TextBorder()
							n["PageContent"] = j:Create(v31, { Parent = Z.ContentHolder.Instance, Name = "\0", Visible = false, BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						end

						function a:Turn(U)
							a.Active = U

							if a.Active then
								n["PageContent"].Instance.Visible = true
								n["PageContent"].Instance.Parent = Z.ContentHolder.Instance
								n["Inactive"]:ChangeItemTheme({ BackgroundColor3 = "Background" })
								n["Inactive"]:Tween(nil, { BackgroundColor3 = u373.Theme.Background })
							else
								n["PageContent"].Instance.Visible = false
								n["PageContent"].Instance.Parent = u373.UnusedHolder.Instance
								n["Inactive"]:ChangeItemTheme({ BackgroundColor3 = "Inline" })
								n["Inactive"]:Tween(nil, { BackgroundColor3 = u373.Theme.Inline })
							end
						end

						n["Inactive"]:Connect("MouseButton1Down", function()
							for U, U in Z.Stack do
								U:Turn(U == a)
							end
						end)

						if #Z.Stack == 0 then
							a:Turn(true)
						end

						table.insert(Z.Stack, a)

						return a, n
					end
					Q.CreateSubPaletteItems = function(Z, Z)
						Z["ColorpickerWindow"].Instance.Size = UDim2.new(0, 171, 0, 168)
						Z["Palette"] = j:Create("TextButton", { Parent = Z["ColorpickerWindow"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(42, 49, 45), Text = "", AutoButtonColor = false, Position = UDim2.new(0, 8, 0, 8), Size = UDim2.new(1, -41.0, 1, -41.0), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(157, 175, 255) })
						Z["Palette"]:AddToTheme({ BorderColor3 = "Outline" })
						j:Create("UIStroke", { Parent = Z["Palette"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
						Z["Saturation"] = j:Create("ImageLabel", { Parent = Z["Palette"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Image = u373:GetImage("Saturation"), BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 2, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						Z["Value"] = j:Create("ImageLabel", { Parent = Z["Palette"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 2, 1, 0), Image = u373:GetImage("Value"), BackgroundTransparency = 1, Position = UDim2.new(0, -1.0, 0, 0), ZIndex = 3, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						Z["PaletteDragger"] = j:Create(v31, { Parent = Z["Palette"].Instance, Name = "\0", Position = UDim2.new(0, 8, 0, 8), ZIndex = 5, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 2, 0, 2), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						j:Create("UIStroke", { Parent = Z["PaletteDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
						Z["Hue"] = j:Create(v31, { Parent = Z["ColorpickerWindow"].Instance, Name = "\0", Active = true, BorderColor3 = Color3.fromRGB(42, 49, 45), AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -8.0, 0, 8), Size = UDim2.new(0, 15, 1, -16.0), Selectable = true, BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						Z["Hue"]:AddToTheme({ BorderColor3 = "Outline" })
						j:Create("UIStroke", { Parent = Z["Hue"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
						Z["HueInline"] = j:Create("TextButton", { Parent = Z["Hue"].Instance, Text = "", AutoButtonColor = false, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						j:Create("UIGradient", { Parent = Z["HueInline"].Instance, Name = "\0", Rotation = 90, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) }) })
						Z["HueDragger"] = j:Create(v31, { Parent = Z["Hue"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						j:Create("UIStroke", { Parent = Z["HueDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
						Z["Alpha"] = j:Create("TextButton", { Parent = Z["ColorpickerWindow"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(42, 49, 45), Text = "", AutoButtonColor = false, AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 8, 1, -8.0), Size = UDim2.new(1, -41.0, 0, 15), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(157, 175, 255) })
						Z["Alpha"]:AddToTheme({ BorderColor3 = "Outline" })
						j:Create("UIStroke", { Parent = Z["Alpha"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
						Z["Checkers"] = j:Create("ImageLabel", { Parent = Z["Alpha"].Instance, Name = "\0", ScaleType = Enum.ScaleType.Tile, BorderColor3 = Color3.fromRGB(0, 0, 0), TileSize = UDim2.new(0, 6, 0, 6), Image = u373:GetImage("Checkers"), BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 2, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						j:Create("UIGradient", { Parent = Z["Checkers"].Instance, Name = "\0", Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.37, 0.5), NumberSequenceKeypoint.new(1, 0) }) })
						Z["AlphaDragger"] = j:Create(v31, { Parent = Z["Alpha"].Instance, Name = "\0", ZIndex = 5, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 1, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
						j:Create("UIStroke", { Parent = Z["AlphaDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
					end
					Q.Colorpicker = function(Z, Z)
						local a = { IsOpen = false, Hue = 0, Saturation = 0, Value = 0, Alpha = 0, Color = Color3.fromRGB(255, 255, 255), HexValue = "#ffffff", Pages = Z.Pages and {} or nil, Flag = Z.Flag }
						local n
						local U = {}

						do
							U["ColorpickerButton"] = j:Create("TextButton", { Parent = Z.Parent.Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Text = "", AutoButtonColor = false, Position = UDim2.new(0, -123.0, 0, 0), Size = UDim2.new(0, 15, 0, 15), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(157, 175, 255) })
							U["ColorpickerButton"]:AddToTheme({ BorderColor3 = v32 })
							j:Create("UIStroke", { Parent = U["ColorpickerButton"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							U["ColorpickerButtonInline"] = j:Create(v31, { Parent = U["ColorpickerButton"].Instance, Name = "\0", Position = UDim2.new(0, 1, 0, 1), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, -2.0, 1, -2.0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(157, 175, 255) })
							j:Create("UIGradient", { Parent = U["ColorpickerButtonInline"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
								return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
							end })
							U["ColorpickerWindow"] = j:Create("TextButton", { Parent = u373.UnusedHolder.Instance, Text = "", AutoButtonColor = false, Name = "\0", Position = UDim2.new(0, 12, 0, 12), BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(0, 266, 0, 258), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							U["ColorpickerWindow"]:AddToTheme({ BorderColor3 = v32, BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background" })
							j:Create("UIStroke", { Parent = U["ColorpickerWindow"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })

							if Z.Pages then
								U["Pages"] = j:Create(v31, { Parent = U["ColorpickerWindow"].Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 20), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
								j:Create("UIListLayout", { Parent = U["Pages"].Instance, Name = "\0", FillDirection = Enum.FillDirection.Horizontal, SortOrder = Enum.SortOrder.LayoutOrder, HorizontalFlex = Enum.UIFlexAlignment.Fill })
								U["Content"] = j:Create(v31, { Parent = U["ColorpickerWindow"].Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 25), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 1, -25.0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							else
								Q:CreateSubPaletteItems(U)
							end
						end

						local S, T = Q:ColorpickerTab({ ContentHolder = U["Content"], Pages = a.Pages, PageHolder = U["Pages"], Stack = a.Pages, Name = "Color" })
						local f, G = Q:ColorpickerTab({ ContentHolder = U["Content"], Pages = a.Pages, PageHolder = U["Pages"], Stack = a.Pages, Name = "Animations" })
						local H, O = Q:ColorpickerTab({ ContentHolder = U["Content"], Pages = a.Pages, PageHolder = U["Pages"], Stack = a.Pages, Name = "Other" })
						local F = a.Color
						local y = a.Alpha
						local u
						local C, h
						local A, J
						local _, z
						local D, N
						local r, L
						local m, q

						if S then
							U["Palette"] = j:Create("TextButton", { Parent = T["PageContent"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(42, 49, 45), Text = "", AutoButtonColor = false, Position = UDim2.new(0, 8, 0, 8), Size = UDim2.new(1, -46.0, 1, -46.0), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(157, 175, 255) })
							U["Palette"]:AddToTheme({ BorderColor3 = "Outline" })
							j:Create("UIStroke", { Parent = U["Palette"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							U["Saturation"] = j:Create("ImageLabel", { Parent = U["Palette"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Image = u373:GetImage("Saturation"), BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 2, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["Value"] = j:Create("ImageLabel", { Parent = U["Palette"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 2, 1, 0), Image = u373:GetImage("Value"), BackgroundTransparency = 1, Position = UDim2.new(0, -1.0, 0, 0), ZIndex = 3, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["PaletteDragger"] = j:Create(v31, { Parent = U["Palette"].Instance, Name = "\0", Position = UDim2.new(0, 8, 0, 8), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 2, 0, 2), BorderSizePixel = 0, ZIndex = 5, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIStroke", { Parent = U["PaletteDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							U["Hue"] = j:Create(v31, { Parent = T["PageContent"].Instance, Name = "\0", Active = true, BorderColor3 = Color3.fromRGB(42, 49, 45), AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -8.0, 0, 8), Size = UDim2.new(0, 20, 1, -16.0), Selectable = true, BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["Hue"]:AddToTheme({ BorderColor3 = "Outline" })
							j:Create("UIStroke", { Parent = U["Hue"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							U["HueInline"] = j:Create("TextButton", { Parent = U["Hue"].Instance, AutoButtonColor = false, Text = "", Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIGradient", { Parent = U["HueInline"].Instance, Name = "\0", Rotation = 90, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)) }) })
							U["HueDragger"] = j:Create(v31, { Parent = U["Hue"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIStroke", { Parent = U["HueDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							U["Alpha"] = j:Create("TextButton", { Parent = T["PageContent"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(42, 49, 45), Text = "", AutoButtonColor = false, AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 8, 1, -8.0), Size = UDim2.new(1, -46.0, 0, 20), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(157, 175, 255) })
							U["Alpha"]:AddToTheme({ BorderColor3 = "Outline" })
							j:Create("UIStroke", { Parent = U["Alpha"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							U["Checkers"] = j:Create("ImageLabel", { Parent = U["Alpha"].Instance, Name = "\0", ScaleType = Enum.ScaleType.Tile, BorderColor3 = Color3.fromRGB(0, 0, 0), TileSize = UDim2.new(0, 6, 0, 6), Image = u373:GetImage("Checkers"), BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 2, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIGradient", { Parent = U["Checkers"].Instance, Name = "\0", Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.37, 0.5), NumberSequenceKeypoint.new(1, 0) }) })
							U["AlphaDragger"] = j:Create(v31, { Parent = U["Alpha"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 1, 1, 0), ZIndex = 5, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIStroke", { Parent = U["AlphaDragger"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
						end

						if f then
							C, h = Q:Dropdown({ Parent = G["PageContent"], Name = "Animations", Items = { "Rainbow", "Fade", "Fade alpha", "Linear" }, Default = nil, Flag = a.Flag .. "Animation", Multi = false, Debounce = a, Callback = function(S)
								u = S

								if S == "Rainbow" then
									if A and _ and m then
										A:SetVisibility(false)
										_:SetVisibility(false)
										q["Slider"].Instance.Position = UDim2.new(0, 8, 0, 45)
									end

									F = a.Color
									u373:Thread(function()
										while task.wait() do
											local T = math.abs(math.sin(tick() * (m.Value / 25)))
											local f = Color3.fromHSV(T, 1, 1)

											a:Set(f, a.Alpha)
											n(true)

											if u ~= "Rainbow" then
												a:Set(F, a.Alpha)

												break
											end
										end
									end)
								elseif S == "Fade" then
									if A and _ and m then
										A:SetVisibility(true)
										_:SetVisibility(false)
										q["Slider"].Instance.Position = UDim2.new(0, 8, 0, 65)
										F = a.Color
										u373:Thread(function()
											while task.wait() do
												local T = math.abs(math.sin(tick() * (m.Value / 25)))

												a:Set(D.Color:Lerp(Color3.fromRGB(0, 0, 0), T), a.Alpha)
												n(true)

												if u ~= "Fade" then
													a:Set(F, a.Alpha)

													break
												end
											end
										end)
									end
								elseif S == "Fade alpha" then
									if A and _ then
										A:SetVisibility(false)
										_:SetVisibility(false)
										q["Slider"].Instance.Position = UDim2.new(0, 8, 0, 45)
										F = a.Alpha
										u373:Thread(function()
											while task.wait() do
												local T = math.abs(math.sin(tick() * (m.Value / 25)))

												a:Set(a.Color, T)
												n(true)

												if u ~= "Fade alpha" then
													a:Set(a.Color, y)

													break
												end
											end
										end)
									end
								elseif S == "Linear" then
									if A and _ then
										A:SetVisibility(true)
										_:SetVisibility(true)
										q["Slider"].Instance.Position = UDim2.new(0, 8, 0, 85)
										F = a.Color
										u373:Thread(function()
											while task.wait() do
												local S = math.abs(math.sin(tick() * (m.Value / 25)))

												a:Set(D.Color:Lerp(r.Color, S), a.Alpha)
												n(true)

												if u ~= "Linear" then
													a:Set(F, a.Alpha)

													break
												end
											end
										end)
									end
								end
							end })
							h["Dropdown"].Instance.Position = UDim2.new(0, 8, 0, 0)
							h["Dropdown"].Instance.Size = UDim2.new(1, -16.0, 0, 40)
							A, J = Q:Label({ Parent = G["PageContent"], Name = "Keyframe 1" })
							J["Label"].Instance.Position = UDim2.new(0, 8, 0, 45)
							J["Label"].Instance.Size = UDim2.new(1, -16.0, 0, 20)
							_, z = Q:Label({ Parent = G["PageContent"], Name = "Keyframe 2" })
							z["Label"].Instance.Position = UDim2.new(0, 8, 0, 65)
							z["Label"].Instance.Size = UDim2.new(1, -16.0, 0, 20)
							D, N = Q:Colorpicker({ Parent = J["SubElements"], Alpha = 0, Pages = false, Default = Color3.fromRGB(255, 255, 255), Flag = a.Flag .. "AnimationKeyframe1", Debounce = a })
							r, L = Q:Colorpicker({ Parent = z["SubElements"], Alpha = 0, Pages = false, Default = Color3.fromRGB(0, 0, 0), Debounce = a, Flag = a.Flag .. "AnimationKeyframe2" })
							m, q = Q:Slider({ Parent = G["PageContent"], Name = "Speed", Flag = a.Flag .. "AnimationSpeed", Min = 0, Max = 100, Decimals = 0.1, Default = 20, Suffix = "%" })
							q["Slider"].Instance.Position = UDim2.new(0, 8, 0, 85)
							q["Slider"].Instance.Size = UDim2.new(1, -16.0, 0, 28)
						end

						local S

						if H then
							U["CurrentColor"] = j:Create(v31, { Parent = O["PageContent"].Instance, Name = "\0", Position = UDim2.new(0, 8, 0, 8), BorderColor3 = Color3.fromRGB(42, 49, 45), Size = UDim2.new(1, -16.0, 0, 50), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(157, 175, 255) })
							U["CurrentColor"]:AddToTheme({ BorderColor3 = "Outline" })
							j:Create("UIStroke", { Parent = U["CurrentColor"].Instance, Name = "\0", Color = Color3.fromRGB(12, 12, 12), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							j:Create("UIGradient", { Parent = U["CurrentColor"].Instance, Name = "\0", Rotation = 82, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(154, 154, 154)) }) })
							U["RGBColor"] = j:Create("TextLabel", { Parent = O["PageContent"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "RGB:", Size = UDim2.new(1, -16.0, 0, 15), Position = UDim2.new(0, 8, 0, 65), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, RichText = true, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["HEXColor"] = j:Create("TextLabel", { Parent = O["PageContent"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "HEX:", Size = UDim2.new(1, -16.0, 0, 15), Position = UDim2.new(0, 8, 0, 85), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, RichText = true, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["HSVColor"] = j:Create("TextLabel", { Parent = O["PageContent"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "HSV:", Size = UDim2.new(1, -16.0, 0, 15), Position = UDim2.new(0, 8, 0, 105), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, RichText = true, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							local T, f = Q:Button({ Parent = O["PageContent"] })

							f["Button"].Instance.Position = UDim2.new(0, 8, 0, 145)
							f["Button"].Instance.Size = UDim2.new(1, -16.0, 0, 20)
							T:Add("Copy", function()
								u373.CopiedColor = a.Color
							end)
							T:Add("Paste", function()
								if u373.CopiedColor then
									a:Set(u373.CopiedColor)
								end
							end)

							local T = {}

							S = false
						end

						local T = false

						function a:SetOpen(f)
							if T then
								return
							end

							a.IsOpen = f
							T = true

							if a.IsOpen then
								U["ColorpickerWindow"].Instance.Visible = true
								U["ColorpickerWindow"].Instance.Parent = u373.Holder.Instance
								U["ColorpickerWindow"].Instance.Position = UDim2.new(0, U["ColorpickerButton"].Instance.AbsolutePosition.X, 0, U["ColorpickerButton"].Instance.AbsolutePosition.Y + U["ColorpickerButton"].Instance.AbsoluteSize.Y + 5)

								if not T then
									for G, G in u373.OpenFrames do
										if G ~= a and G ~= h then
											G:SetOpen(false)
										end
									end

									u373.OpenFrames[a] = a
								end
							elseif not T and u373.OpenFrames[a] then
								u373.OpenFrames[a] = nil
							end

							local G = U["ColorpickerWindow"].Instance:GetDescendants()

							table.insert(G, U["ColorpickerWindow"].Instance)

							local O

							for y, y in G do
								local G = v:GetProperty(y)

								if not G then
									continue
								end

								if type(G) == "table" then
									for u, u in G do
										O = v:FadeItem(y, u, f, u373.FadeSpeed)
									end
								else
									O = v:FadeItem(y, G, f, u373.FadeSpeed)
								end
							end

							O.Tween.Completed:Connect(function()
								T = false
								U["ColorpickerWindow"].Instance.Visible = a.IsOpen
								task.wait(0.2)
								U["ColorpickerWindow"].Instance.Parent = not a.IsOpen and u373.UnusedHolder.Instance or u373.Holder.Instance
							end)
						end

						n = function(T)
							if S and T then
								for S, S in u373.Colorpickers do
									if S ~= a and not string.find(S.Flag, "Theme") then
										S:Set(a.Color)
									end
								end
							end
						end

						function a:Update(S, T)
							local f, G, O = a.Hue, a.Saturation, a.Value

							a.Color = Color3.fromHSV(f, G, O)
							a.HexValue = a.Color:ToHex()
							u373.Flags[a.Flag] = { Alpha = a.Alpha, Color = a.HexValue }
							U["ColorpickerButton"]:Tween(nil, { BackgroundColor3 = a.Color })
							U["ColorpickerButtonInline"]:Tween(nil, { BackgroundColor3 = a.Color })
							n(T)

							if H then
								U["CurrentColor"]:Tween(nil, { BackgroundColor3 = a.Color })

								local n = math.floor(a.Color.R * 255)
								local T = math.floor(a.Color.G * 255)
								local G = math.floor(a.Color.B * 255)
								local H = tostring(n) .. ", " .. tostring(T) .. ", " .. tostring(G)
								local _, _, _ = nil, nil, nil
								local n, T = pcall(function()
									U["RGBColor"].Instance.Text = "RGB: " .. H
									U["HSVColor"].Instance.Text = `HSV: %1, %1, %1`
									U["HEXColor"].Instance.Text = "HEX: " .. "#" .. a.HexValue
								end)

								if not n then
									warn(T)
								end
							end

							U["Palette"]:Tween(nil, { BackgroundColor3 = Color3.fromHSV(f, 1, 1) })

							if not S then
								U["Alpha"]:Tween(nil, { BackgroundColor3 = a.Color })
							end

							if Z.Callback then
								u373:SafeCall(Z.Callback, a.Color, a.Alpha)
							end
						end
						function a:Set(n, S)
							if type(n) == "table" then
								n = Color3.fromRGB(n[1], n[2], n[3])
								S = n[4]
							elseif type(n) == "string" then
								n = Color3.fromHex(n)
							end

							a.Hue, a.Saturation, a.Value = n:ToHSV()
							a.Alpha = S or 0

							local n = math.clamp(1 - a.Saturation, 0, 0.99)
							local S = math.clamp(1 - a.Value, 0, 0.99)
							local T = math.clamp(a.Alpha, 0, 0.995)
							local f = math.clamp(a.Hue, 0, 0.995)

							U["PaletteDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(n, 0, S, 0) })
							U["HueDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, f, 0) })
							U["AlphaDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(T, 0, 0, 0) })
							a:Update(true, true)
						end

						U["ColorpickerButton"]:Connect("MouseButton1Down", function()
							a:SetOpen(not a.IsOpen)
						end)

						local n = false
						local S

						function a:SlidePalette(T)
							if not T or not n then
								return
							end

							local f = math.clamp(1 - (T.Position.X - U["Palette"].Instance.AbsolutePosition.X) / U["Palette"].Instance.AbsoluteSize.X, 0, 1)
							local G = math.clamp(1 - (T.Position.Y - U["Palette"].Instance.AbsolutePosition.Y) / U["Palette"].Instance.AbsoluteSize.Y, 0, 1)

							a.Saturation = f
							a.Value = G

							local f = math.clamp((T.Position.X - U["Palette"].Instance.AbsolutePosition.X) / U["Palette"].Instance.AbsoluteSize.X, 0, 0.99)
							local G = math.clamp((T.Position.Y - U["Palette"].Instance.AbsolutePosition.Y) / U["Palette"].Instance.AbsoluteSize.Y, 0, 0.99)

							U["PaletteDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(f, 0, G, 0) })
							a:Update(false, true)
						end

						local T = false
						local f

						function a:SlideHue(G)
							if not G or not T then
								return
							end

							local H = math.clamp((G.Position.Y - U["Hue"].Instance.AbsolutePosition.Y) / U["Hue"].Instance.AbsoluteSize.Y, 0, 1)

							a.Hue = H

							local H = math.clamp((G.Position.Y - U["Hue"].Instance.AbsolutePosition.Y) / U["Hue"].Instance.AbsoluteSize.Y, 0, 0.995)

							U["HueDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, H, 0) })
							a:Update(false, true)
						end

						local G = false
						local H

						function a:SlideAlpha(O)
							if not O or not G then
								return
							end

							local y = math.clamp((O.Position.X - U["Alpha"].Instance.AbsolutePosition.X) / U["Alpha"].Instance.AbsoluteSize.X, 0, 1)

							a.Alpha = y

							local y = math.clamp((O.Position.X - U["Alpha"].Instance.AbsolutePosition.X) / U["Alpha"].Instance.AbsoluteSize.X, 0, 0.995)

							U["AlphaDragger"]:Tween(TweenInfo.new(u373.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(y, 0, 0, 0) })
							a:Update(true, true)
						end

						U["Palette"]:Connect("InputBegan", function(O)
							if O.UserInputType == Enum.UserInputType.MouseButton1 or O.UserInputType == Enum.UserInputType.Touch then
								n = true
								a:SlidePalette(O)

								if S then
									return
								end

								S = O.Changed:Connect(function()
									if O.UserInputState == Enum.UserInputState.End then
										n = false
										S:Disconnect()
										S = nil
									end
								end)
							end
						end)
						U["HueInline"]:Connect("InputBegan", function(S)
							if S.UserInputType == Enum.UserInputType.MouseButton1 or S.UserInputType == Enum.UserInputType.Touch then
								T = true
								a:SlideHue(S)

								if f then
									return
								end

								f = S.Changed:Connect(function()
									if S.UserInputState == Enum.UserInputState.End then
										T = false
										f:Disconnect()
										f = nil
									end
								end)
							end
						end)
						U["Alpha"]:Connect("InputBegan", function(S)
							if S.UserInputType == Enum.UserInputType.MouseButton1 or S.UserInputType == Enum.UserInputType.Touch then
								G = true
								a:SlideAlpha(S)

								if H then
									return
								end

								H = S.Changed:Connect(function()
									if S.UserInputState == Enum.UserInputState.End then
										G = false
										H:Disconnect()
										H = nil
									end
								end)
							end
						end)
						u373:Connect(UserInputService.InputChanged, function(S)
							if S.UserInputType == Enum.UserInputType.MouseMovement then
								if n then
									a:SlidePalette(S)
								end

								if T then
									a:SlideHue(S)
								end

								if G then
									a:SlideAlpha(S)
								end
							end
						end)
						u373:Connect(UserInputService.InputBegan, function(n)
							if n.UserInputType == Enum.UserInputType.MouseButton1 or n.UserInputType == Enum.UserInputType.Touch then
								if not a.IsOpen then
									return
								end

								if t29.IsMouseOverFrame(U["ColorpickerWindow"]) then
									return
								end

								if A and _ then
									if t29.IsMouseOverFrame(N["ColorpickerWindow"]) then
										return
									end

									if t29.IsMouseOverFrame(L["ColorpickerWindow"]) then
										return
									end
								end

								a:SetOpen(false)
							end
						end)

						if Z.Default ~= nil then
							a:Set(Z.Default, Z.Alpha)
							F = a.Color
						end

						u373.Colorpickers[a] = a
						u373.SetFlags[a.Flag] = function(n, S)
							a:Set(n, S)
						end
						t25[Z.Flag] = a

						return a, U
					end
					Q.Keybind = function(Z, Z)
						local a = { IsOpen = false, Key = "", Value = "", Flag = Z.Flag, Mode = "", Toggled = false, Picking = false }
						local n

						if u373.KeyList then
							n = u373.KeyList:Add("", "", "")
						end

						local U = {}

						do
							U["KeyButton"] = j:Create("TextButton", { Parent = Z.Parent.Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), TextTransparency = 0.4000000059604645, Text = "MB2", AutoButtonColor = false, Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1, BorderSizePixel = 0, BorderColor3 = Color3.fromRGB(0, 0, 0), AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							U["KeyButton"]:AddToTheme({ TextColor3 = v30 })
							U["KeyButton"]:TextBorder()
							U["KeybindWindow"] = j:Create(v31, { Parent = u373.UnusedHolder.Instance, Name = "\0", Position = UDim2.new(0.007692307699471712, 0, 0.35323384404182434, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(0, 70, 0, 90), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							U["KeybindWindow"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							U["Toggle"] = j:Create("TextButton", { Parent = U["KeybindWindow"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "Toggle", AutoButtonColor = false, Position = UDim2.new(0, 8, 0, 8), Size = UDim2.new(1, -16.0, 0, 20), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							U["Toggle"]:AddToTheme({ BackgroundColor3 = "Accent", TextColor3 = v30 })
							U["Toggle"]:TextBorder()
							j:Create("UIStroke", { Parent = U["KeybindWindow"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							U["Hold"] = j:Create("TextButton", { Parent = U["KeybindWindow"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "Hold", AutoButtonColor = false, BackgroundTransparency = 1, Position = UDim2.new(0, 8, 0, 38), Size = UDim2.new(1, -16.0, 0, 20), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							U["Hold"]:AddToTheme({ BackgroundColor3 = "Accent", TextColor3 = v30 })
							U["Hold"]:TextBorder()
							U["Always"] = j:Create("TextButton", { Parent = U["KeybindWindow"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "Always", AutoButtonColor = false, BackgroundTransparency = 1, Position = UDim2.new(0, 8, 0, 68), Size = UDim2.new(1, -16.0, 0, 20), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							U["Always"]:AddToTheme({ BackgroundColor3 = "Accent", TextColor3 = v30 })
							U["Always"]:TextBorder()
						end

						local S = { ["Toggle"] = U["Toggle"], ["Hold"] = U["Hold"], ["Always"] = U["Always"] }

						local function T()
							if n then
								n:SetText(a.Value, Z.Name, a.Mode)
								n:SetStatus(a.Toggled)
							end
						end

						function a:Get()
							return a.Key, a.Mode, a.Toggled
						end
						function a:Set(n, f)
							if string.find(tostring(n), "Enum") then
								a.Key = tostring(n)

								if n.Name == "Backspace" or n.Name == "Delete" or n.Name == "MouseButton1" or n.Name == "Escape" then
									a.Key = "None"
									a.Value = "None"
									U["KeyButton"].Instance.Text = "None"
									a.Picking = false

									return
								end

								n = n.Name

								local G = P[a.Key] or string.gsub(n, "Enum.", "") or "None"
								local H = string.gsub(string.gsub(G, "KeyCode.", ""), "UserInputType.", "") or "None"

								a.Value = H
								U["KeyButton"].Instance.Text = H
								u373.Flags[a.Flag] = { Mode = a.Mode, Key = a.Key, Toggled = a.Toggled }

								if Z.Callback and f ~= false then
									u373:SafeCall(Z.Callback, a.Toggled)
								end

								T()
							elseif type(n) == "table" then
								local f = n.Key

								if n.Name == "Backspace" or n.Name == "Delete" or n.Name == "MouseButton1" or n.Name == "Escape" then
									a.Key = "None"
									a.Value = "None"
									U["KeyButton"].Instance.Text = "None"
									a.Picking = false

									return
								end

								a.Key = tostring(n.Key)

								if n.Mode then
									a.Mode = n.Mode
									a:SetMode(n.Mode)
								else
									a.Mode = "Toggle"
									a:SetMode("Toggle")
								end

								local G = P[a.Key] or string.gsub(tostring(f), "Enum.", "") or f
								local P = G and string.gsub(string.gsub(G, "KeyCode.", ""), "UserInputType.", "") or "None"

								P = string.gsub(string.gsub(G, "KeyCode.", ""), "UserInputType.", "")
								a.Value = P
								U["KeyButton"].Instance.Text = P

								if Z.Callback then
									u373:SafeCall(Z.Callback, a.Toggled)
								end

								T()
							elseif table.find({ "Toggle", "Hold", "Always" }, n) then
								a.Mode = n
								a:SetMode(a.Mode)

								if Z.Callback then
									u373:SafeCall(Z.Callback, a.Toggled)
								end

								T()
							end

							a.Picking = false
						end

						local P = false

						function a:SetOpen(n)
							if P then
								return
							end

							a.IsOpen = n
							P = true

							if a.IsOpen then
								U["KeybindWindow"].Instance.Visible = true
								U["KeybindWindow"].Instance.Parent = u373.Holder.Instance
								U["KeybindWindow"].Instance.Position = UDim2.new(0, U["KeyButton"].Instance.AbsolutePosition.X, 0, U["KeyButton"].Instance.AbsolutePosition.Y + U["KeyButton"].Instance.AbsoluteSize.Y + 5)

								if not P then
									for f, f in u373.OpenFrames do
										if f ~= a then
											f:SetOpen(false)
										end
									end

									u373.OpenFrames[a] = a
								end
							elseif not P and u373.OpenFrames[a] then
								u373.OpenFrames[a] = nil
							end

							local f = U["KeybindWindow"].Instance:GetDescendants()

							table.insert(f, U["KeybindWindow"].Instance)

							local G

							for H, H in f do
								local f = v:GetProperty(H)

								if not f then
									continue
								end

								if type(f) == "table" then
									for O, O in f do
										G = v:FadeItem(H, O, n, u373.FadeSpeed)
									end
								else
									G = v:FadeItem(H, f, n, u373.FadeSpeed)
								end
							end

							G.Tween.Completed:Connect(function()
								P = false
								U["KeybindWindow"].Instance.Visible = a.IsOpen
								task.wait(0.2)
								U["KeybindWindow"].Instance.Parent = not a.IsOpen and u373.UnusedHolder.Instance or u373.Holder.Instance
							end)
						end
						function a:SetMode(P)
							for n, f in S do
								if n == P then
									f:Tween(nil, { BackgroundTransparency = 0 })
								else
									f:Tween(nil, { BackgroundTransparency = 1 })
								end
							end

							u373.Flags[a.Flag] = { Mode = a.Mode, Key = a.Key, Toggled = a.Toggled }

							if Z.Callback then
								u373:SafeCall(Z.Callback, a.Toggled)
							end

							T()
						end
						function a:Press(P)
							if a.Mode == "Toggle" then
								a.Toggled = not a.Toggled
							elseif a.Mode == "Hold" then
								a.Toggled = P
							elseif a.Mode == "Always" then
								a.Toggled = true
							end

							u373.Flags[a.Flag] = { Mode = a.Mode, Key = a.Key, Toggled = a.Toggled }

							if Z.Callback then
								u373:SafeCall(Z.Callback, a.Toggled)
							end

							T()
						end

						U["KeyButton"]:Connect("MouseButton1Click", function()
							a.Picking = true
							U["KeyButton"].Instance.Text = "."
							u373:Thread(function()
								local P = 1

								while true do
									if not a.Picking then
										break
									end

									if P == 4 then
										P = 1
									end

									U["KeyButton"].Instance.Text = P == 1 and "." or P == 2 and ".." or P == 3 and "..."
									P = P + 1
									task.wait(0.5)
								end
							end)

							local P

							P = UserInputService.InputBegan:Connect(function(n)
								if n.UserInputType == Enum.UserInputType.Keyboard then
									a:Set(n.KeyCode)
								elseif n.UserInputType ~= Enum.UserInputType.Touch then
									a:Set(n.UserInputType)
								end

								P:Disconnect()
								P = nil
							end)
						end)
						U["KeyButton"]:Connect("MouseButton2Down", function()
							a:SetOpen(not a.IsOpen)
						end)
						u373:Connect(UserInputService.InputBegan, function(P, n)
							if n then
								return
							end

							if a.Value == "None" then
								return
							end

							if tostring(P.KeyCode) == a.Key then
								if a.Mode == "Toggle" then
									a:Press()
								elseif a.Mode == "Hold" then
									a:Press(true)
								elseif a.Mode == "Always" then
									a:Press(true)
								end
							elseif tostring(P.UserInputType) == a.Key then
								if a.Mode == "Toggle" then
									a:Press()
								elseif a.Mode == "Hold" then
									a:Press(true)
								elseif a.Mode == "Always" then
									a:Press(true)
								end
							end

							if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
								if not a.IsOpen then
									return
								end

								if t29.IsMouseOverFrame(U["KeybindWindow"]) then
									return
								end

								a:SetOpen(false)
							end
						end)
						u373:Connect(UserInputService.InputEnded, function(P)
							if a.Value == "None" then
								return
							end

							if tostring(P.KeyCode) == a.Key then
								if a.Mode == "Hold" then
									a:Press(false)
								elseif a.Mode == "Always" then
									a:Press(true)
								end
							elseif tostring(P.UserInputType) == a.Key then
								if a.Mode == "Hold" then
									a:Press(false)
								elseif a.Mode == "Always" then
									a:Press(true)
								end
							end
						end)
						U["Toggle"]:Connect("MouseButton1Down", function()
							a.Mode = "Toggle"
							a:SetMode("Toggle")
						end)
						U["Hold"]:Connect("MouseButton1Down", function()
							a.Mode = "Hold"
							a:SetMode("Hold")
						end)
						U["Always"]:Connect("MouseButton1Down", function()
							a.Mode = "Always"
							a:SetMode("Always")
						end)

						if Z.Default ~= nil then
							a:Set({ Key = Z.Default, Mode = Z.Mode or "Toggle" })
						end

						u373.SetFlags[a.Flag] = function(P)
							a:Set(P)
						end
						t25[Z.Flag] = a

						return a, U
					end
					Q.Textbox = function(P, P)
						local Z = { Flag = P.Flag, Value = "" }
						local a = {}

						do
							a["Textbox"] = j:Create(v31, { Parent = P.Parent.Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 40), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a[v30] = j:Create("TextLabel", { Parent = a["Textbox"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = P.Name, BackgroundTransparency = 1, Size = UDim2.new(0, 0, 0, 15), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a[v30]:AddToTheme({ TextColor3 = v30 })
							a[v30]:TextBorder()
							a["Background"] = j:Create(v31, { Parent = a["Textbox"].Instance, Name = "\0", AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 0, 1, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(1, 0, 0, 20), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(30, 36, 31) })
							a["Background"]:AddToTheme({ BackgroundTransparency = "ElementTransparency", BackgroundColor3 = "Element", BorderColor3 = v32 })
							j:Create("UIGradient", { Parent = a["Background"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
								return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
							end })
							j:Create("UIStroke", { Parent = a["Background"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							a["Input"] = j:Create("TextBox", { Parent = a["Background"].Instance, Name = "\0", FontFace = u373.Font, PlaceholderColor3 = Color3.fromRGB(185, 185, 185), PlaceholderText = P.Placeholder, TextSize = 9, Size = UDim2.new(1, 0, 1, 0), ClipsDescendants = true, BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "", TextColor3 = Color3.fromRGB(235, 235, 235), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0, 0, 0, 0), ClearTextOnFocus = false, BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a["Input"]:AddToTheme({ TextColor3 = v30, PlaceholderColor3 = "PlaceholderText" })
							a["Input"]:TextBorder()
							j:Create("UIPadding", { Parent = a["Input"].Instance, Name = "\0", PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8) })
						end

						function Z:Get()
							return Z.Value
						end
						function Z:SetVisibility(n)
							a["Textbox"].Instance.Visible = n
						end
						function Z:Set(n, U)
							if P.Numeric then
								if (not tonumber(n)) and string.len(tostring(n)) > 0 then
									n = Z.Value
								end
							end

							n = tostring(n)
							Z.Value = n
							a["Input"].Instance.Text = n
							u373.Flags[Z.Flag] = n

							if P.Callback and U ~= false then
								u373:SafeCall(P.Callback, n)
							end
						end

						if P.Finished then
							a["Input"]:Connect("FocusLost", function(n)
								if n then
									Z:Set(a["Input"].Instance.Text)
								end
							end)
						else
							a["Input"].Instance:GetPropertyChangedSignal(v30):Connect(function()
								Z:Set(a["Input"].Instance.Text)
							end)
						end

						if P.Default ~= nil then
							Z:Set(P.Default)
						end

						u373.SetFlags[Z.Flag] = function(n)
							Z:Set(n)
						end
						t25[P.Flag] = Z

						return Z, a
					end
					Q.Searchbox = function(P, P)
						local Z = { Flag = P.Flag, Value = {}, Options = {}, IsOpen = false }
						local a = {}

						do
							a["Listbox"] = j:Create(v31, { Parent = P.Parent.Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 185), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a["Search"] = j:Create(v31, { Parent = a["Listbox"].Instance, Name = "\0", BackgroundTransparency = 0.4000000059604645, Size = UDim2.new(0, 0, 0, 20), BorderColor3 = Color3.fromRGB(12, 12, 12), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							a["Search"]:AddToTheme({ BorderColor3 = v32, BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background" })
							j:Create("UIStroke", { Parent = a["Search"].Instance, Name = "\0", ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Transparency = 0.4000000059604645, Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							a["Icon"] = j:Create("ImageLabel", { Parent = a["Search"].Instance, Name = "\0", ScaleType = Enum.ScaleType.Fit, BorderColor3 = Color3.fromRGB(0, 0, 0), AnchorPoint = Vector2.new(0, 0.5), Image = "rbxassetid://71197946135150", BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.new(0, 16, 0, 16), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a["Icon"]:AddToTheme({ ImageColor3 = v30 })
							a["Input"] = j:Create("TextBox", { Parent = a["Search"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "", Size = UDim2.new(0, 0, 1, 0), Position = UDim2.new(0, 22, 0, 0), BorderSizePixel = 0, BackgroundTransparency = 1, PlaceholderColor3 = Color3.fromRGB(185, 185, 185), AutomaticSize = Enum.AutomaticSize.X, PlaceholderText = "search..", TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a["Input"]:AddToTheme({ TextColor3 = v30, PlaceholderColor3 = "PlaceholderText" })
							a["Input"]:TextBorder()
							j:Create("UIPadding", { Parent = a["Search"].Instance, Name = "\0", PaddingRight = UDim.new(0, 5), PaddingLeft = UDim.new(0, 3) })
							a["RealListbox"] = j:Create(v31, { Parent = a["Listbox"].Instance, Name = "\0", ClipsDescendants = true, BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(1, 0, 1, -28.0), SelectionGroup = true, Position = UDim2.new(0, 0, 0, 28), Selectable = true, Active = true, BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(30, 36, 31) })
							a["RealListbox"]:AddToTheme({ BackgroundTransparency = "ElementTransparency", BackgroundColor3 = "Element", BorderColor3 = v32 })
							j:Create("UIStroke", { Parent = a["RealListbox"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							j:Create("UIGradient", { Parent = a["RealListbox"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
								return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
							end })
							a["List"] = j:Create("ScrollingFrame", { Parent = a["RealListbox"].Instance, Name = "\0", Active = true, AutomaticCanvasSize = Enum.AutomaticSize.Y, BorderSizePixel = 0, CanvasSize = UDim2.new(0, 0, 0, 0), ScrollBarImageColor3 = Color3.fromRGB(202, 243, 255), MidImage = "rbxassetid://136419474381965", BorderColor3 = Color3.fromRGB(0, 0, 0), ScrollBarThickness = 2, Size = UDim2.new(1, -12.0, 1, -10.0), Position = UDim2.new(0, 3, 0, 5), TopImage = "rbxassetid://136419474381965", CanvasPosition = Vector2.new(0, 57), BottomImage = "rbxassetid://136419474381965", BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a["List"]:AddToTheme({ ScrollBarImageColor3 = "Accent" })
							j:Create("UIListLayout", { Parent = a["List"].Instance, Name = "\0", Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder })
							j:Create("UIPadding", { Parent = a["List"].Instance, Name = "\0", PaddingBottom = UDim.new(0, 8), PaddingLeft = UDim.new(0, 5) })
						end

						function Z:Get()
							return Z.Value
						end
						function Z:SetVisibility(n)
							a["Listbox"].Instance.Visible = n
						end
						function Z:Set(n, U)
							if P.Multi then
								if type(n) ~= "table" then
									return
								end

								Z.Value = n
								u373.Flags[Z.Flag] = n

								for S, S in n do
									local T = Z.Options[S]

									if not T then
										continue
									end

									T.Selected = true
									T:Toggle("Active")
								end
							else
								if not Z.Options[n] then
									return
								end

								local S = Z.Options[n]

								Z.Value = n
								u373.Flags[Z.Flag] = n

								for n, n in Z.Options do
									if n ~= S then
										n.Selected = false
										n:Toggle("Inactive")
									else
										n.Selected = true
										n:Toggle("Active")
									end
								end
							end

							if P.Callback and U ~= false then
								u373:SafeCall(P.Callback, Z.Value)
							end
						end
						function Z:Add(n)
							local U = j:Create("TextButton", { Parent = a["List"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = n, AutoButtonColor = false, BorderSizePixel = 0, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, 0, 0, 20), ZIndex = 1, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							U:AddToTheme({ TextColor3 = v30 })
							U:TextBorder()

							local S = { Button = U, Name = n, Selected = false }

							function S:Toggle(n)
								if n == "Active" then
									S.Button:ChangeItemTheme({ TextColor3 = "Accent" })
									S.Button:Tween(nil, { TextColor3 = u373.Theme.Accent })
								else
									S.Button:ChangeItemTheme({ TextColor3 = v30 })
									S.Button:Tween(nil, { TextColor3 = u373.Theme.Text })
								end
							end
							function S:Set()
								S.Selected = not S.Selected

								if P.Multi then
									local n = table.find(Z.Value, S.Name)

									if n then
										table.remove(Z.Value, n)
									else
										table.insert(Z.Value, S.Name)
									end

									S:Toggle(n and "Inactive" or "Active")
									u373.Flags[Z.Flag] = Z.Value
								else
									if S.Selected then
										Z.Value = S.Name
										u373.Flags[Z.Flag] = S.Name
										S.Selected = true
										S:Toggle("Active")

										for n, n in Z.Options do
											if n ~= S then
												n.Selected = false
												n:Toggle("Inactive")
											end
										end
									else
										Z.Value = nil
										u373.Flags[Z.Flag] = nil
										S.Selected = false
										S:Toggle("Inactive")
									end
								end

								if P.Callback then
									u373:SafeCall(P.Callback, Z.Value)
								end
							end

							S.Button:Connect("MouseButton1Down", function()
								S:Set()
							end)
							Z.Options[S.Name] = S

							return S
						end
						function Z:Remove(n)
							if not Z.Options[n] then
								return
							end

							Z.Options[n].Button:Clean()
							Z.Options[n] = nil
						end
						function Z:Refresh(n)
							for U, U in Z.Options do
								Z:Remove(U.Name)
							end

							for U, U in n do
								Z:Add(U)
							end
						end

						a["Listbox"]:OnHover(function()
							a["Listbox"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
							a["Listbox"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
						end)
						a["Listbox"]:OnHoverLeave(function()
							a["Listbox"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
							a["Listbox"]:Tween(nil, { BackgroundColor3 = u373.Theme["Element"] })
						end)

						local n

						a["Input"]:Connect("Focused", function()
							n = RunService.RenderStepped:Connect(function()
								for U, U in Z.Options do
									local S = a["Input"].Instance.Text

									if S ~= "" then
										if string.find(string.lower(U.Name), t29.EscapePattern(string.lower(S))) then
											U.Button.Instance.Visible = true
										else
											U.Button.Instance.Visible = false
										end
									else
										U.Button.Instance.Visible = true
									end
								end
							end)
						end)
						a["Input"]:Connect("FocusLost", function()
							if n then
								n:Disconnect()
								n = nil
							end
						end)

						for n, n in P.Items do
							Z:Add(n)
						end

						if P.Default ~= nil then
							Z:Set(P.Default)
						end

						u373.SetFlags[Z.Flag] = function(n)
							Z:Set(n)
						end
						t25[P.Flag] = Z

						return Z, a
					end
				end

				do
					u373.Watermark = function(P, P)
						local Z = {}
						local g = {}

						do
							g["Watermark"] = j:Create(v31, { Parent = u373.Holder.Instance, Name = "\0", AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -12.0), BorderColor3 = Color3.fromRGB(12, 12, 12), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.XY, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							g["Watermark"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							g["Watermark"]:MakeDraggable()
							j:Create("UIStroke", { Parent = g["Watermark"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							j:Create("UIPadding", { Parent = g["Watermark"].Instance, Name = "\0", PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 7), PaddingRight = UDim.new(0, 5), PaddingLeft = UDim.new(0, 5) })
							g[v30] = j:Create("TextLabel", { Parent = g["Watermark"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = P, RichText = true, Position = UDim2.new(0, 0, 0, 2), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.XY, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							g[v30]:AddToTheme({ TextColor3 = v30 })
							g[v30]:TextBorder()
							g["Liner"] = j:Create(v31, { Parent = g["Watermark"].Instance, Name = "\0", Position = UDim2.new(0, -5.0, 0, -5.0), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 10, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							g["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })
						end

						function Z:SetVisibility(P)
							g["Watermark"].Instance.Visible = P
						end
						function Z:Set(P)
							g[v30].Instance.Text = P
						end

						return Z
					end
					u373.KeybindList = function(P)
						local P = {}

						u373.KeyList = P

						local Z = {}

						do
							Z["KeybindList"] = j:Create(v31, { Parent = u373.Holder.Instance, Name = "\0", AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 12, 0.5, 55), BorderColor3 = Color3.fromRGB(12, 12, 12), Size = UDim2.new(0, 116, 0, 32), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							Z["KeybindList"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							Z["KeybindList"]:MakeDraggable()
							j:Create("UIStroke", { Parent = Z["KeybindList"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							Z["Title"] = j:Create("TextLabel", { Parent = Z["KeybindList"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "Keybinds", Size = UDim2.new(0, 0, 0, 20), BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, -4.0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["Title"]:AddToTheme({ TextColor3 = v30 })
							Z["Title"]:TextBorder()
							j:Create("UIPadding", { Parent = Z["KeybindList"].Instance, Name = "\0", PaddingTop = UDim.new(0, 8), PaddingBottom = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), PaddingLeft = UDim.new(0, 8) })
							Z["Liner"] = j:Create(v31, { Parent = Z["KeybindList"].Instance, Name = "\0", Position = UDim2.new(0, 0, 0, 15), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							Z["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })
							Z["Content"] = j:Create(v31, { Parent = Z["KeybindList"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 32), Size = UDim2.new(1, 0, 0, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIListLayout", { Parent = Z["Content"].Instance, Name = "\0", SortOrder = Enum.SortOrder.LayoutOrder })
						end

						function P:Add(g, a, n)
							local U = j:Create("TextLabel", { Parent = Z["Content"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "" .. g .. " - " .. a .. " (" .. n .. ")", BackgroundTransparency = 1, Size = UDim2.new(0, 0, 0, 15), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextTransparency = 1, Visible = false, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							U:AddToTheme({ TextColor3 = v30 })
							U:TextBorder()

							function U:SetText(g, a, n)
								U.Instance.Text = "" .. g .. " - " .. a .. " (" .. n .. ")"
							end
							function U:SetStatus(g)
								if g then
									U.Instance.Visible = true
									U:Tween(nil, { TextTransparency = 0 })
								else
									U:Tween(nil, { TextTransparency = 1 })
									U.Instance.Visible = false
								end
							end

							return U
						end
						function P:SetVisibility(g)
							Z["KeybindList"].Instance.Visible = g
						end

						return P
					end
					u373.Notification = function(P, P, Z, g)
						local a = {}

						do
							a["Notification"] = j:Create(v31, { Parent = u373.NotifHolder.Instance, Name = "\0", Size = UDim2.new(0, 0, 0, 25), BorderColor3 = Color3.fromRGB(12, 12, 12), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.XY, BackgroundColor3 = Color3.fromRGB(14, 17, 15), BackgroundTransparency = t26.BackgroundTheme and t26.BackgroundTheme.Alpha or 0 })
							a["Notification"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							a["UIStroke1"] = j:Create("UIStroke", { Parent = a["Notification"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })
							a["UIStroke1"]:AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							j:Create("UIPadding", { Parent = a["Notification"].Instance, Name = "\0", PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 12), PaddingRight = UDim.new(0, 5), PaddingLeft = UDim.new(0, 5) })
							a["Title"] = j:Create("TextLabel", { Parent = a["Notification"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = P, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.XY, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a["Title"]:AddToTheme({ TextColor3 = v30 })
							a["UIStroke2"] = a["Title"]:TextBorder()
							a["Description"] = j:Create("TextLabel", { Parent = a["Notification"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), TextTransparency = 0.4000000059604645, Text = Z, Position = UDim2.new(0, 0, 0, 15), BorderSizePixel = 0, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderColor3 = Color3.fromRGB(0, 0, 0), AutomaticSize = Enum.AutomaticSize.XY, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							a["Description"]:AddToTheme({ TextColor3 = v30 })
							a["UIStroke3"] = a["Description"]:TextBorder()
							a["Liner"] = j:Create(v31, { Parent = a["Notification"].Instance, Name = "\0", Position = UDim2.new(0, 0, 1, 8), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							a["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })
						end

						local P = a["Notification"].Instance.AbsoluteSize

						for Z, Z in a do
							if Z.Instance:IsA(v31) then
								Z.Instance.BackgroundTransparency = 1
							elseif Z.Instance:IsA("TextLabel") then
								Z.Instance.TextTransparency = 1
							elseif Z.Instance:IsA("UIStroke") then
								Z.Instance.Transparency = 1
							end
						end

						a["Notification"].Instance.AutomaticSize = Enum.AutomaticSize.Y
						u373:Thread(function()
							for Z, n in a do
								if n.Instance:IsA(v31) then
									n:Tween(nil, { BackgroundTransparency = t26.BackgroundTheme and t26.BackgroundTheme.Alpha or 0 })
								elseif n.Instance:IsA("TextLabel") and Z ~= "Description" then
									n:Tween(nil, { TextTransparency = 0 })
								elseif n.Instance:IsA("TextLabel") and Z == "Description" then
									n:Tween(nil, { TextTransparency = 0.4 })
								elseif n.Instance:IsA("UIStroke") then
									n:Tween(nil, { Transparency = t26.OutlineTheme and t26.OutlineTheme.Alpha or 0 })
								end
							end

							a["Notification"]:Tween(nil, { Size = UDim2.new(0, P.X, 0, 0) })
							a["Liner"]:Tween(TweenInfo.new(g, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.new(0, 0, 0, 1) })
							task.delay(g + 0.1, function()
								for P, P in a do
									if P.Instance:IsA(v31) then
										P:Tween(nil, { BackgroundTransparency = 1 })
									elseif P.Instance:IsA("TextLabel") then
										P:Tween(nil, { TextTransparency = 1 })
									elseif P.Instance:IsA("UIStroke") then
										P:Tween(nil, { Transparency = 1 })
									end
								end

								a["Notification"]:Tween(nil, { Size = UDim2.new(0, 0, 0, 0) })
								task.wait(0.5)
								a["Notification"]:Clean()
							end)
						end)
					end
					u373.Window = function(P, Z)
						Z = Z or {}

						local g = { Logo = Z.Logo or Z.logo or "", FadeTime = Z.FadeTime or Z.fadetime or 0.4, Size = Z.Size or Z.size or UDim2.new(0, 751, 0, 539), Pages = {}, Items = {}, IsOpen = false }
						local Z = Q:Window({ Parent = u373.Holder, Draggable = true, Resizeable = true, AnchorPoint = Vector2.new(0, 0), Position = UDim2.new(0, CurrentCamera.ViewportSize.X / 3.3, 0, CurrentCamera.ViewportSize.Y / 3.3), Size = g.Size })

						do
							Z["Side"] = j:Create(v31, { Parent = Z["Window"].Instance, Name = "\0", Position = UDim2.new(0, 12, 0, 12), BorderColor3 = Color3.fromRGB(42, 49, 45), Size = UDim2.new(0, 200, 1, -24.0), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(20, 24, 21), Transparency = 0 })
							Z["Side"]:AddToTheme({ BackgroundTransparency = "InlineTransparency", BackgroundColor3 = "Inline", BorderColor3 = "Outline" })
							Z["Side"]:Border(v32)
							Z["Window"].Instance.Visible = false
							Z["Logo"] = j:Create("ImageLabel", { Parent = Z["Side"].Instance, Name = "\0", ImageColor3 = Color3.fromRGB(202, 243, 255), ScaleType = Enum.ScaleType.Fit, BorderColor3 = Color3.fromRGB(0, 0, 0), AnchorPoint = Vector2.new(0.5, 0), Image = "rbxassetid://" .. g.Logo, BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0, -25.0), Size = UDim2.new(0, 150, 0, 150), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["Logo"]:AddToTheme({ ImageColor3 = "Accent" })
							Z["Search"] = j:Create(v31, { Parent = Z["Side"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(12, 12, 12), AnchorPoint = Vector2.new(0, 1), BackgroundTransparency = 0.4000000059604645, Position = UDim2.new(0, 6, 1, -6.0), Size = UDim2.new(0, 0, 0, 20), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							Z["Search"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							Z["SearchStroke"] = Z["Search"]:Border("Outline")
							Z["Icon"] = j:Create("ImageLabel", { Parent = Z["Search"].Instance, Name = "\0", ScaleType = Enum.ScaleType.Fit, BorderColor3 = Color3.fromRGB(0, 0, 0), AnchorPoint = Vector2.new(0, 0.5), Image = "rbxassetid://71197946135150", BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.new(0, 16, 0, 16), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["Input"] = j:Create("TextBox", { Parent = Z["Search"].Instance, Name = "\0", FontFace = u373.Font, CursorPosition = -1.0, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "", Size = UDim2.new(0, 0, 1, 0), Position = UDim2.new(0, 22, 0, 0), BorderSizePixel = 0, BackgroundTransparency = 1, PlaceholderColor3 = Color3.fromRGB(185, 185, 185), AutomaticSize = Enum.AutomaticSize.X, PlaceholderText = "..", TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["Input"]:AddToTheme({ TextColor3 = v30, PlaceholderColor3 = "PlaceholderText" })
							Z["Input"]:TextBorder()
							j:Create("UIPadding", { Parent = Z["Search"].Instance, Name = "\0", PaddingRight = UDim.new(0, 5), PaddingLeft = UDim.new(0, 3) })
							Z["Pages"] = j:Create(v31, { Parent = Z["Side"].Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 100), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 1, -135.0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIPadding", { Parent = Z["Pages"].Instance, Name = "\0", PaddingRight = UDim.new(0, 8), PaddingLeft = UDim.new(0, 8) })
							j:Create("UIListLayout", { Parent = Z["Pages"].Instance, Name = "\0", Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder })

							local X = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

							Z["Avatar"] = j:Create("ImageLabel", { Parent = Z["Side"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), AnchorPoint = Vector2.new(1, 1), Image = X, BackgroundTransparency = 1, Position = UDim2.new(1, -6.0, 1, -6.0), Size = UDim2.new(0, 25, 0, 25), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["Avatar"]:Border("Outline").Instance.LineJoinMode = Enum.LineJoinMode.Round
							j:Create("UICorner", { Parent = Z["Avatar"].Instance, Name = "\0", CornerRadius = UDim.new(1, 0) })
							Z["Content"] = j:Create(v31, { Parent = Z["Window"].Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, 226, 0, 12), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, -238.0, 1, -24.0), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["MouseBackground"] = j:Create(v31, { Parent = u373.Holder.Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 0), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(0, 16, 0, 16), BorderSizePixel = 0, ZIndex = 9999, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["MouseImage"] = j:Create("ImageLabel", { Parent = Z["MouseBackground"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Image = "rbxassetid://76631660114196", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, ZIndex = 9999, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							Z["MouseImage"]:AddToTheme({ ImageColor3 = "Accent" })
							j:Create("UIGradient", { Parent = Z["MouseImage"].Instance, Name = "\0", Rotation = 90, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(99, 108, 117)) }) })
							UserInputService.MouseIconEnabled = false
							g.Items = Z
						end

						local X = false

						Z["Input"]:Connect("Focused", function()
							Z["Search"]:Tween(nil, { BackgroundTransparency = 0 })
							Z["SearchStroke"]:Tween(nil, { Transparency = 0 })
						end)
						Z["Input"]:Connect("FocusLost", function()
							Z["Search"]:Tween(nil, { BackgroundTransparency = 0.4 })
							Z["SearchStroke"]:Tween(nil, { Transparency = 0.4 })
						end)
						Z["Input"]:OnHover(function()
							Z["Search"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
							Z["Search"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
						end)
						Z["Input"]:OnHoverLeave(function()
							Z["Search"]:ChangeItemTheme({ BackgroundColor3 = "Background", BorderColor3 = v32 })
							Z["Search"]:Tween(nil, { BackgroundColor3 = u373.Theme.Background })
						end)
						u373:Connect(RunService.RenderStepped, function()
							local o = UserInputService:GetMouseLocation()

							Z["MouseBackground"].Instance.Position = UDim2.new(0, o.X - 1, 0, o.Y - 56)
						end)

						local o = {}

						function g:AddToOldSizes(a, n)
							if not o[a] then
								o[a] = n
							end
						end
						function g:GetOldSize(a)
							if o[a] then
								return o[a]
							end
						end
						function g:SetOpen(o)
							if X then
								return
							end

							g.IsOpen = o
							X = true

							if g.IsOpen then
								Z["Window"].Instance.Visible = true
							end

							local a = Z["Window"].Instance:GetDescendants()

							table.insert(a, Z["Window"].Instance)

							local n

							for U, U in a do
								local a = v:GetProperty(U)

								if not a then
									continue
								end

								if type(a) == "table" then
									for S, S in a do
										n = v:FadeItem(U, S, o, u373.FadeSpeed)
									end
								else
									n = v:FadeItem(U, a, o, u373.FadeSpeed)
								end
							end

							n.Tween.Completed:Connect(function()
								X = false
								Z["Window"].Instance.Visible = g.IsOpen

								if g.IsOpen then
									Z["MouseBackground"].Instance.Visible = true
									UserInputService.MouseIconEnabled = false
								else
									Z["MouseBackground"].Instance.Visible = false
									UserInputService.MouseIconEnabled = true
								end
							end)
						end

						u373:Connect(UserInputService.InputBegan, function(X)
							if tostring(X.KeyCode) == u373.MenuKeybind or tostring(X.UserInputType) == u373.MenuKeybind then
								g:SetOpen(not g.IsOpen)
							end
						end)

						local X

						Z["Input"]:Connect("Focused", function()
							local o = u373.SearchItems[u373.CurrentPage]

							if not o then
								return
							end

							X = RunService.RenderStepped:Connect(function()
								for d, d in o do
									local o = d.Name
									local a = d.Element

									if string.find(string.lower(o), string.lower(Z["Input"].Instance.Text)) then
										if Z["Input"].Instance.Text ~= "" then
											a.Instance.Visible = true
											a:Tween(TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = g:GetOldSize(a) })
										else
											a.Instance.Visible = true
											a:Tween(TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = g:GetOldSize(a) })
										end
									else
										g:AddToOldSizes(a, a.Instance.Size)
										a:Tween(TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(g:GetOldSize(a).X.Scale, g:GetOldSize(a).X.Offset, 0, 0) })
										task.wait(0.1)
										a.Instance.Visible = false
									end
								end
							end)
						end)
						Z["Input"]:Connect("FocusLost", function()
							if X then
								X:Disconnect()
								X = nil
							end
						end)
						g:SetOpen(true)

						return setmetatable(g, P)
					end
					u373.Page = function(P, Z)
						Z = Z or {}

						local g = { Window = P, Name = Z.Name or Z.name or "Page", Columns = Z.Columns or Z.columns or 2, SubPages = Z.SubPages or Z.subpages or false }

						u373.SearchItems[g] = {}

						local P = Q:WindowPage({ Name = g.Name, ContentHolder = g.Window.Items["Content"], Stack = g.Window.Pages, Parent = g.Window.Items["Pages"], Columns = g.Columns, SubPages = g.SubPages, FadeTime = g.Window.FadeTime, Window = g.Window })

						return setmetatable(P, u373.Pages)
					end
					u373.Pages.SubPage = function(P, Z)
						Z = Z or {}

						local g = { Window = P.Window, Page = P, Name = Z.Name or Z.name or "SubPage", Columns = Z.Columns or Z.columns or 2 }

						u373.SearchItems[g] = {}

						local P = Q:WindowSubPage({ Page = g.Page, Name = g.Name, Columns = g.Columns, Window = g.Page.Window })

						return setmetatable(P, u373.Pages)
					end
					u373.Pages.Playerlist = function(P, Z)
						local g = { Window = P.Window, Page = P, CurrentPlayer = nil, SearchQuery = "", Players = {}, Buttons = {} }
						local P = {}

						do
							g.Page.Items.Page.Instance:FindFirstChildOfClass("UIListLayout"):Destroy()
							P["Playerlist"] = j:Create(v31, { Parent = g.Page.Items["Page"].Instance, Name = "\0", Position = UDim2.new(0, 0, 0, 1), BorderColor3 = Color3.fromRGB(42, 49, 45), Size = UDim2.new(1, 0, 0, 460), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(20, 24, 21), Transparency = 0 })
							P["Playerlist"]:AddToTheme({ BackgroundTransparency = "InlineTransparency", BackgroundColor3 = "Inline", BorderColor3 = "Outline" })
							j:Create("UIStroke", { Parent = P["Playerlist"].Instance, Name = "\0", ApplyStrokeMode = Enum.ApplyStrokeMode.Border, LineJoinMode = Enum.LineJoinMode.Miter, Color = Color3.fromRGB(202, 243, 255), Thickness = 1 }):AddToTheme({ Transparency = "BorderTransparency", Color = v32 })
							P["SearchContainer"] = j:Create(v31, { Parent = P["Playerlist"].Instance, Name = "\0", Position = UDim2.new(0, 8, 0, 8), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, -16.0, 0, 30), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							P["SearchContainer"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							j:Create("UIStroke", { Parent = P["SearchContainer"].Instance, Name = "\0", ApplyStrokeMode = Enum.ApplyStrokeMode.Border, LineJoinMode = Enum.LineJoinMode.Miter, Color = Color3.fromRGB(202, 243, 255), Thickness = 1 }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							P["SearchBox"] = j:Create("TextBox", { Parent = P["SearchContainer"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "", PlaceholderText = "Search players...", PlaceholderColor3 = Color3.fromRGB(150, 150, 150), BackgroundTransparency = 1, Size = UDim2.new(1, -10.0, 1, -4.0), Position = UDim2.new(0, 5, 0, 2), BorderSizePixel = 0, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left, ClearTextOnFocus = false, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							P["SearchBox"]:AddToTheme({ TextColor3 = v30 })
							P["RealPlayerlist"] = j:Create(v31, { Parent = P["Playerlist"].Instance, Name = "\0", Position = UDim2.new(0, 8, 0, 46), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, -16.0, 0, 175), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15) })
							P["RealPlayerlist"]:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							j:Create("UIStroke", { Parent = P["RealPlayerlist"].Instance, Name = "\0", ApplyStrokeMode = Enum.ApplyStrokeMode.Border, LineJoinMode = Enum.LineJoinMode.Miter, Color = Color3.fromRGB(202, 243, 255), Thickness = 1 }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
							P["PlayerHolder"] = j:Create("ScrollingFrame", { Parent = P["RealPlayerlist"].Instance, Name = "\0", Active = true, AutomaticCanvasSize = Enum.AutomaticSize.Y, BorderSizePixel = 0, CanvasSize = UDim2.new(0, 0, 0, 0), ScrollBarImageColor3 = Color3.fromRGB(202, 243, 255), MidImage = "rbxassetid://86918736894927", BorderColor3 = Color3.fromRGB(0, 0, 0), ScrollBarThickness = 2, Size = UDim2.new(1, -16.0, 1, -8.0), BackgroundTransparency = 1, Position = UDim2.new(0, 8, 0, 4), BottomImage = "rbxassetid://86918736894927", TopImage = "rbxassetid://86918736894927", BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							P["PlayerHolder"]:AddToTheme({ ScrollBarImageColor3 = "Accent" })
							j:Create("UIListLayout", { Parent = P["PlayerHolder"].Instance, Name = "\0", Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder })
							j:Create("UIPadding", { Parent = P["PlayerHolder"].Instance, Name = "\0", PaddingTop = UDim.new(0, 2), PaddingBottom = UDim.new(0, 2), PaddingRight = UDim.new(0, 12), PaddingLeft = UDim.new(0, 2) })
							P["PlayerAvatar"] = j:Create("ImageLabel", { Parent = P["Playerlist"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), AnchorPoint = Vector2.new(0, 1), Image = "rbxassetid://98200387761744", BackgroundTransparency = 1, Position = UDim2.new(0, 8, 1, -75.0), Size = UDim2.new(0, 65, 0, 65), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							P["PlayerInfo"] = j:Create("TextLabel", { Parent = P["Playerlist"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "???", AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.new(0, 0, 0, 15), BackgroundTransparency = 1, Position = UDim2.new(0, 80, 1, -143.0), BorderSizePixel = 0, ZIndex = 2, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255), TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top })
							P["PlayerInfo"]:AddToTheme({ TextColor3 = v30 })
							P["PlayerInfo"]:TextBorder()
						end

						function g:FilterPlayers()
							local X = g.SearchQuery:lower()

							for d, o in pairs(g.Players) do
								o.PlayerButton.Instance.Visible = X == "" or d:lower():find(X, 1, true) or (o.Player.DisplayName and o.Player.DisplayName:lower():find(X, 1, true))
							end
						end
						function g:AddButton(X)
							X = X or {}

							local d = {}
							local o = {}

							do
								o["NewButton"] = j:Create("TextButton", { Parent = P["Playerlist"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(12, 12, 12), Text = "", AutoButtonColor = false, Size = UDim2.new(0, 120, 0, 20), Position = UDim2.new(0, 8 + (#g.Buttons % 4) * (126), 0, 410 + math.floor(#g.Buttons / 4) * 26), BorderSizePixel = 2, TextSize = 14, BackgroundColor3 = Color3.fromRGB(30, 36, 31) })
								o["NewButton"]:AddToTheme({ BackgroundTransparency = "ElementTransparency", BackgroundColor3 = "Element", BorderColor3 = v32 })
								j:Create("UIGradient", { Parent = o["NewButton"].Instance, Name = "\0", Rotation = -165.0, Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(208, 208, 208)) }) }):AddToTheme({ Color = function()
									return ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, u373.Theme.Gradient) })
								end })
								j:Create("UIStroke", { Parent = o["NewButton"].Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })
								o[v30] = j:Create("TextLabel", { Parent = o["NewButton"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = X.Name, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
								o[v30]:AddToTheme({ TextColor3 = v30 })
								o[v30]:TextBorder()
							end

							function d:Press()
								o["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "Accent", BorderColor3 = v32 })
								o["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme.Accent })

								if g.Player then
									u373:SafeCall(X.Callback, g.Player)
								else
									u373:Notification("Error", "Select a player first.", 5)
								end

								task.wait(0.1)
								o["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
								o["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme.Element })
							end

							local a = u373.SearchItems[X.Page]

							if a then
								local n = { Element = o["NewButton"], Name = X.Name }

								table.insert(a, n)
							end

							o["NewButton"]:OnHover(function()
								o["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "HoveredElement", BorderColor3 = v32 })
								o["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme["HoveredElement"] })
							end)
							o["NewButton"]:OnHoverLeave(function()
								o["NewButton"]:ChangeItemTheme({ BackgroundColor3 = "Element", BorderColor3 = v32 })
								o["NewButton"]:Tween(nil, { BackgroundColor3 = u373.Theme.Element })
							end)
							o["NewButton"]:Connect("MouseButton1Down", function()
								d:Press()
							end)
							table.insert(g.Buttons, d)

							return d
						end

						P["SearchBox"]:Connect("Changed", function(X)
							if X == v30 then
								g.SearchQuery = P["SearchBox"].Instance.Text
								g:FilterPlayers()
							end
						end)

						local _, X = Q:Dropdown({ Parent = P["Playerlist"], Name = "Status", Flag = "PlayerlistStatus", Items = { "Neutral", "Priority", "Friendly" }, Default = "Neutral", Multi = false, Callback = function(d)
							if g.Player then
								if d == "Neutral" then
									g.Players[g.Player.Name].PlayerStatus:Tween(nil, { TextColor3 = u373.Theme[v30] })
									g.Players[g.Player.Name].PlayerStatus.Instance.Text = "Neutral"
								elseif d == "Priority" then
									g.Players[g.Player.Name].PlayerStatus:Tween(nil, { TextColor3 = Color3.fromRGB(235, 76, 48) })
									g.Players[g.Player.Name].PlayerStatus.Instance.Text = "Priority"
								elseif d == "Friendly" then
									g.Players[g.Player.Name].PlayerStatus:Tween(nil, { TextColor3 = Color3.fromRGB(134, 235, 56) })
									g.Players[g.Player.Name].PlayerStatus.Instance.Text = "Friendly"
								else
									g.Players[g.Player.Name].PlayerStatus:Tween(nil, { TextColor3 = u373.Theme[v30] })
									g.Players[g.Player.Name].PlayerStatus.Instance.Text = "Neutral"
								end

								t44[g.Player.Name] = g.Players[g.Player.Name].PlayerStatus.Instance.Text
							end
						end })

						X["Dropdown"].Instance.AnchorPoint = Vector2.new(1, 1)
						X["Dropdown"].Instance.Position = UDim2.new(1, -8.0, 1, -90.0)
						X["Dropdown"].Instance.Size = UDim2.new(0, 200, 0, 40)

						function g:Add(X)
							local i = {
								NewPlayer = j:Create("TextButton", { Parent = P["PlayerHolder"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(0, 0, 0), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "", AutoButtonColor = false, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 20), BorderSizePixel = 0, TextSize = 14, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							}

							i["NewPlayer"]:AddToTheme({ TextColor3 = v30 })
							i["Name"] = j:Create("TextLabel", { Parent = i["NewPlayer"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = X.DisplayName .. (X.DisplayName ~= X.Name and " - (@" .. X.Name .. ")" or ""), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(0.3499999940395355, 0, 0, 15), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							i["Name"]:AddToTheme({ TextColor3 = v30 })

							local d = X.Team and X.Team.Name or "None"
							local o = X.TeamColor and BrickColor.new(tostring(X.TeamColor)).Color or Color3.new(1, 1, 1)

							i["Team"] = j:Create("TextLabel", { Parent = i["NewPlayer"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = o, BorderColor3 = Color3.fromRGB(0, 0, 0), Text = d, AnchorPoint = Vector2.new(0.5, 0), BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0, 0), Size = UDim2.new(0.3499999940395355, 0, 0, 15), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							i["Status"] = j:Create("TextLabel", { Parent = i["NewPlayer"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = "Neutral", Size = UDim2.new(0.3499999940395355, 0, 0, 15), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Right, Position = UDim2.new(0.6499999761581421, 0, 0, 0), BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							i["Liner"] = j:Create(v31, { Parent = i["NewPlayer"].Instance, Name = "\0", AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 0, 1, -1.0), BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(42, 49, 45) })
							i["Liner"]:AddToTheme({ BackgroundTransparency = "OutlineTransparency", BackgroundColor3 = "Outline" })

							if X == LocalPlayer then
								i["Status"].Instance.TextColor3 = u373.Theme.Accent
								i["Status"].Instance.Text = "LocalPlayer"
								i["Status"]:AddToTheme({ TextColor3 = "Accent" })
							end

							local d = { Name = X.Name, Selected = false, PlayerButton = i["NewPlayer"], PlayerName = i["Name"], PlayerTeam = i["Team"], PlayerStatus = i["Status"], Player = X }

							function d:Toggle(o)
								if o == "Active" then
									i["Name"]:ChangeItemTheme({ TextColor3 = "Accent" })
									i["Name"]:Tween(nil, { TextColor3 = u373.Theme.Accent })
								else
									i["Name"]:ChangeItemTheme({ TextColor3 = v30 })
									i["Name"]:Tween(nil, { TextColor3 = u373.Theme.Text })
								end
							end
							function d:Set()
								d.Selected = not d.Selected

								if d.Selected then
									g.Player = d.Player

									for o, o in g.Players do
										o.Selected = false
										o:Toggle("Inactive")
									end

									d:Toggle("Active")

									local o = Players:GetUserThumbnailAsync(g.Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

									P["PlayerAvatar"].Instance.Image = o
									P["PlayerInfo"].Instance.Text = g.Player.DisplayName .. (g.Player.DisplayName ~= g.Player.Name and " - (@" .. g.Player.Name .. ") - " or " - ") .. tostring(g.Player.UserId) .. "\n" .. "Account Age: " .. tostring(g.Player.AccountAge) .. " days"

									local o = g.Player:FindFirstChild("DataFolder")

									if t27.Dahood and o then
										P["PlayerInfo"].Instance.Text = P["PlayerInfo"].Instance.Text .. "\n" .. "Money: $" .. o.Currency.Value .. "\n" .. "Wanted: " .. o.Information.Wanted.Value .. "\n" .. "Accuracy: " .. (o.ShotTotal.Value > 0 and math.floor(o.ShotLand.Value / o.ShotTotal.Value * 100) or 0) .. "%\n"
									end
								else
									g.Player = nil
									d:Toggle("Inactive")
									P["PlayerAvatar"].Instance.Image = "rbxassetid://98200387761744"
									P["PlayerInfo"].Instance.Text = "None"
								end

								if Z.Callback then
									u373:SafeCall(Z.Callback, g.Player, d.PlayerStatus.Instance.Text, d.PlayerTeam.Instance.Text)
								end
							end

							i["NewPlayer"]:Connect("MouseButton1Down", function()
								d:Set()
							end)
							g.Players[X.Name] = d
							g:FilterPlayers()

							return d
						end
						function g:Remove(P)
							if g.Players[P] then
								g.Players[P].PlayerButton:Clean()
							end

							g.Players[P] = nil
						end

						for P, P in Players:GetPlayers() do
							if P == LocalPlayer then
								continue
							end

							g:Add(P)
						end

						u373:Connect(Players.PlayerRemoving, function(P)
							if g.Players[P.Name] then
								g:Remove(P.Name)
							end
						end)
						u373:Connect(Players.PlayerAdded, function(P)
							g:Add(P)
						end)

						return g
					end
					u373.Pages.Section = function(P, w)
						w = w or {}

						local W = { Window = P.Window, Page = P, Name = w.Name or w.name or "Section", Side = w.Side or w.side or 1, Items = {} }
						local P = {}

						do
							P["Section"] = j:Create(v31, { Parent = W.Page.ColumnsData[W.Side].Instance, Name = "\0", Size = UDim2.new(1, 0, 0, 25), BorderColor3 = Color3.fromRGB(42, 49, 45), BorderSizePixel = 2, AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = Color3.fromRGB(20, 24, 21), Transparency = 0 })
							P["Section"]:AddToTheme({ BackgroundTransparency = "InlineTransparency", BackgroundColor3 = "Inline", BorderColor3 = "Outline" })
							P["Section"]:Border(v32)
							P["Liner"] = j:Create(v31, { Parent = P["Section"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							P["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })
							P["Glow"] = j:Create(v31, { Parent = P["Section"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, 15), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(202, 243, 255) })
							P["Glow"]:AddToTheme({ BackgroundColor3 = "Accent" })
							j:Create("UIGradient", { Parent = P["Glow"].Instance, Name = "\0", Rotation = 90, Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.193, 0.8687499761581421), NumberSequenceKeypoint.new(0.504, 0.96875), NumberSequenceKeypoint.new(1, 1) }) })
							P[v30] = j:Create("TextLabel", { Parent = P["Section"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = W.Name, Size = UDim2.new(0, 0, 0, 15), BackgroundTransparency = 1, Position = UDim2.new(0, 6, 0, 5), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							P[v30]:AddToTheme({ TextColor3 = v30 })
							P[v30]:TextBorder()
							j:Create("UIPadding", { Parent = P["Section"].Instance, Name = "\0", PaddingBottom = UDim.new(0, 8) })
							P["Content"] = j:Create(v31, { Parent = P["Section"].Instance, Name = "\0", BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 1, Position = UDim2.new(0, 10, 0, 26), Size = UDim2.new(1, -20.0, 0, 0), BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							j:Create("UIListLayout", { Parent = P["Content"].Instance, Name = "\0", Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder })
							W.Items = P
						end

						return setmetatable(W, u373.Sections)
					end
					u373.Sections.Toggle = function(P, w)
						task.wait()
						w = w or {}

						local W = { Window = P.Window, Page = P.Page, Section = P, Name = w.Name or w.name or "Toggle", Tooltip = w.ToolTip or w.tooltip or nil, Flag = w.Flag or w.flag or u373:NextFlag(), Default = w.Default or w.default or false, Callback = w.Callback or w.callback or function()
						end }
						local Z, g = Q:Toggle({ Name = W.Name, Parent = W.Section.Items["Content"], Tooltip = W.Tooltip, Flag = W.Flag, Default = W.Default, Page = W.Page, Callback = W.Callback })

						function Z:Colorpicker(b)
							local X = { Window = P.Window, Page = P.Page, Section = P, Flag = b.Flag or b.flag or u373:NextFlag(), Default = b.Default or b.default or Color3.fromRGB(255, 255, 255), Callback = b.Callback or b.callback or function()
							end, Alpha = b.Alpha or b.alpha or 0 }
							local b = Q:Colorpicker({ Name = X.Name, Parent = g["SubElements"], Pages = true, Page = X.Page, Flag = X.Flag, Default = X.Default, Alpha = X.Alpha, Callback = X.Callback })

							return b
						end
						function Z:Keybind(b)
							b = b or {}

							local X = { Window = P.Window, Page = P.Page, Section = P.Section, Flag = b.Flag or b.flag or u373:NextFlag(), Default = b.Default or b.default or Enum.KeyCode.RightShift, Callback = b.Callback or b.callback or function()
							end, Mode = b.Mode or b.mode or "Toggle" }
							local b = Q:Keybind({ Name = W.Name, Parent = g["SubElements"], Page = X.Page, Flag = X.Flag, Default = X.Default, Mode = X.Mode, Callback = X.Callback })

							return b
						end
						function Z:Settings(b)
							b = b or {}

							local b = { IsOpen = false, Sections = {} }
							local X = j:Create("TextButton", { Parent = g["SubElements"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), Text = "", AutoButtonColor = false, Size = UDim2.new(0, 15, 0, 15), BackgroundTransparency = 1, BorderSizePixel = 0, BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							local g = j:Create("ImageLabel", { Parent = X.Instance, Name = "\0", Image = "rbxassetid://5359861128", ImageColor3 = u373.Theme.Text, BackgroundTransparency = 1, ImageTransparency = 0.4, Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							g:AddToTheme({ ImageColor3 = v30 })

							local i = j:Create("TextButton", { Parent = u373.UnusedHolder.Instance, Name = "\0", Size = UDim2.new(0, 180, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, BorderColor3 = Color3.fromRGB(12, 12, 12), BorderSizePixel = 2, BackgroundColor3 = Color3.fromRGB(14, 17, 15), Visible = false, Text = "", AutoButtonColor = false })

							i:AddToTheme({ BackgroundTransparency = "BackgroundTransparency", BackgroundColor3 = "Background", BorderColor3 = v32 })
							j:Create("UIStroke", { Parent = i.Instance, Name = "\0", Color = Color3.fromRGB(42, 49, 45), LineJoinMode = Enum.LineJoinMode.Miter, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }):AddToTheme({ Transparency = "OutlineTransparency", Color = "Outline" })

							local d = j:Create(v31, { Parent = i.Instance, Name = "\0", Size = UDim2.new(1, 0, 0, 20), BorderSizePixel = 0, BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundColor3 = Color3.fromRGB(20, 23, 20) })

							d:AddToTheme({ BackgroundTransparency = "InlineTransparency", BackgroundColor3 = "Inline" })

							local o = j:Create(v31, { Parent = d.Instance, Name = "\0", Size = UDim2.new(1, 0, 0, 1), Position = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0, BorderColor3 = Color3.fromRGB(0, 0, 0), BackgroundColor3 = Color3.fromRGB(202, 243, 255) })

							o:AddToTheme({ BackgroundColor3 = "Accent" })

							local o = j:Create("TextLabel", { Parent = d.Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), Text = W.Name, AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 8, 0.5, 0), Size = UDim2.new(1, -8.0, 0, 12), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							o:AddToTheme({ TextColor3 = v30 })
							o:TextBorder()

							local W = j:Create(v31, { Parent = i.Instance, Name = "\0", BackgroundTransparency = 1, Position = UDim2.new(0, 8, 0, 26), Size = UDim2.new(1, -16.0, 0, 0), BorderSizePixel = 0, BorderColor3 = Color3.fromRGB(0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })

							j:Create("UIListLayout", { Parent = W.Instance, Name = "\0", Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder })
							j:Create("UIPadding", { Parent = W.Instance, Name = "\0", PaddingBottom = UDim.new(0, 8) })

							local d = false

							function b:SetOpen(o)
								if d then
									return
								end

								b.IsOpen = o
								d = true

								if b.IsOpen then
									i.Instance.Visible = true
									i.Instance.Parent = u373.Holder.Instance
									i.Instance.Position = UDim2.new(0, X.Instance.AbsolutePosition.X, 0, X.Instance.AbsolutePosition.Y + X.Instance.AbsoluteSize.Y + 5)

									for x, x in u373.OpenFrames do
										if x ~= b then
											x:SetOpen(false)
										end
									end

									u373.OpenFrames[b] = b
									g:ChangeItemTheme({ ImageColor3 = "Accent" })
									g:Tween(nil, { ImageColor3 = u373.Theme.Accent, ImageTransparency = 0 })
								else
									if u373.OpenFrames[b] then
										u373.OpenFrames[b] = nil
									end

									g:ChangeItemTheme({ ImageColor3 = v30 })
									g:Tween(nil, { ImageColor3 = u373.Theme.Text, ImageTransparency = 0.4 })
								end

								local x = i.Instance:GetDescendants()

								table.insert(x, i.Instance)

								local a

								for n, n in x do
									local x = v:GetProperty(n)

									if not x then
										continue
									end

									for U, U in x do
										a = v:FadeItem(n, U, o, u373.FadeSpeed)
									end
								end

								a.Tween.Completed:Connect(function()
									d = false
									i.Instance.Visible = b.IsOpen
									i.Instance.Parent = not b.IsOpen and u373.UnusedHolder.Instance or u373.Holder.Instance
								end)
							end

							u373:Connect(UserInputService.InputBegan, function(K)
								if K.UserInputType == Enum.UserInputType.MouseButton1 or K.UserInputType == Enum.UserInputType.Touch then
									if not b.IsOpen then
										return
									end

									if t29.IsMouseOverFrame(i) then
										return
									end

									for K, K in u373.OpenFrames do
										if K ~= b then
											return
										end
									end

									b:SetOpen(false)
								end
							end)
							X:Connect("MouseButton1Down", function()
								b:SetOpen(not b.IsOpen)
							end)
							X:OnHover(function()
								if b.IsOpen then
									return
								end

								g:Tween(nil, { ImageColor3 = u373.Theme.PlaceholderText })
							end)
							X:OnHoverLeave(function()
								if b.IsOpen then
									return
								end

								g:Tween(nil, { ImageColor3 = u373.Theme.Text })
							end)

							local K = {}
							local e = { Window = P.Window, Page = P.Page, Items = { Content = W } }

							setmetatable(e, u373.Sections)

							function K:Toggle(P)
								return e:Toggle(P)
							end
							function K:Slider(P)
								return e:Slider(P)
							end
							function K:Dropdown(P)
								return e:Dropdown(P)
							end
							function K:Label(P, W)
								return e:Label(P, W)
							end
							function K:Textbox(P)
								return e:Textbox(P)
							end
							function K:Button(P)
								return e:Button(P)
							end

							return K
						end

						if w.Visible == false then
							Z:SetVisibility(false)
						end

						return Z
					end
					u373.Sections.Button = function(P, w)
						task.wait()

						local W = { Window = P.Window, Page = P.Page, Section = P }
						local P = Q:Button({ Parent = W.Section.Items["Content"], Page = W.Page })

						if w and w.Visible == false then
							P:SetVisibility(false)
						end

						return P
					end
					u373.Sections.Slider = function(P, w)
						task.wait()
						w = w or {}

						local W = { Window = P.Window, Page = P.Page, Section = P, Name = w.Name or w.name or "Slider", Flag = w.Flag or w.flag or u373:NextFlag(), Min = w.Min or w.min or 0, Decimals = w.Decimals or w.decimals or 1, Suffix = w.Suffix or w.suffix or "", ToolTip = w.ToolTip or w.tooltip or nil, Max = w.Max or w.max or 100, Default = w.Default or w.Default or 0, Multi = w.Multi or w.multi or false, Callback = w.Callback or w.callback or function()
						end }
						local P, Z = Q:Slider({ Name = W.Name, Parent = W.Section.Items["Content"], Flag = W.Flag, Min = W.Min, Page = W.Page, Decimals = W.Decimals, Suffix = W.Suffix, Max = W.Max, Default = W.Default, Multi = W.Multi, Callback = W.Callback })

						if W.ToolTip then
							Z["Slider"]:Tooltip({ Text = W.ToolTip.Name, Description = W.ToolTip.Description })
						end

						local K = u373.SearchItems[W.Page]

						if K then
							local e = { Element = Z["Slider"], Name = W.Name }

							table.insert(K, e)
						end

						if w.Visible == false then
							P:SetVisibility(false)
						end

						return P
					end
					u373.Sections.Dropdown = function(P, w)
						task.wait()
						w = w or {}

						local W = { Window = P.Window, Page = P.Page, Section = P, Name = w.Name or w.name or "Dropdown", Flag = w.Flag or w.flag or u373:NextFlag(), Items = w.Items or w.items or {}, Default = w.Default or w.default or nil, ToolTip = w.ToolTip or w.tooltip or nil, Multi = w.Multi or w.multi or false, Callback = w.Callback or w.callback or function()
						end }
						local P, Z = Q:Dropdown({ Name = W.Name, Parent = W.Section.Items["Content"], Flag = W.Flag, Items = W.Items, Page = W.Page, Default = W.Default, Multi = W.Multi, Callback = W.Callback })

						if W.ToolTip then
							Z["Dropdown"]:Tooltip({ Text = W.ToolTip.Name, Description = W.ToolTip.Description })
						end

						local K = u373.SearchItems[W.Page]

						if K then
							local e = { Element = Z["Dropdown"], Name = W.Name }

							table.insert(K, e)
						end

						if w.Visible == false then
							P:SetVisibility(false)
						end

						return P
					end
					u373.Sections.Label = function(P, w, W)
						task.wait()

						local Z = { Window = P.Window, Page = P.Page, Section = P, Name = w or "Label" }
						local w, K = Q:Label({ Name = Z.Name, Parent = Z.Section.Items["Content"], Page = Z.Page })

						if W then
							K["Label"]:Tooltip({ Text = W.Name, Description = W.Description })
						end

						function w:Colorpicker(W)
							W = W or {}

							local e = { Window = P.Window, Page = P.Page, Section = P.Section, Flag = W.Flag or W.flag or u373:NextFlag(), Default = W.Default or W.default or Color3.fromRGB(255, 255, 255), Callback = W.Callback or W.callback or function()
							end, Alpha = W.Alpha or W.alpha or 0 }
							local g = Q:Colorpicker({ Name = e.Name, Parent = K["SubElements"], Pages = true, Page = e.Page, Flag = e.Flag, Default = e.Default, Alpha = e.Alpha, Callback = e.Callback })

							if W.Visible == false then
								w:SetVisibility(false)
							end

							return g
						end
						function w:Keybind(W)
							W = W or {}

							local e = { Window = P.Window, Page = P.Page, Section = P.Section, Flag = W.Flag or W.flag or u373:NextFlag(), Default = W.Default or W.default or Enum.KeyCode.RightShift, Callback = W.Callback or W.callback or function()
							end, Mode = W.Mode or W.mode or "Toggle" }
							local P = Q:Keybind({ Name = Z.Name, Parent = K["SubElements"], Page = e.Page, Flag = e.Flag, Default = e.Default, Mode = e.Mode, Callback = e.Callback })

							if W.Visible == false then
								P:SetVisibility(false)
							end

							return P
						end

						local P = u373.SearchItems[Z.Page]

						if P then
							local W = { Element = K["Label"], Name = Z.Name }

							table.insert(P, W)
						end

						return w
					end
					u373.Sections.Textbox = function(P, w)
						task.wait()
						w = w or {}

						local W = { Window = P.Window, Page = P.Page, Section = P, Name = w.Name or w.name or "Textbox", Flag = w.Flag or w.flag or u373:NextFlag(), Default = w.Default or w.default or "", Numeric = w.Numeric or w.numeric or false, Finished = w.Finished or w.finished or false, Placeholder = w.Placeholder or w.placeholder or "...", ToolTip = w.ToolTip or w.tooltip or nil, Callback = w.Callback or w.callback or function()
						end }
						local P, Z = Q:Textbox({ Name = W.Name, Placeholder = W.Placeholder, Parent = W.Section.Items["Content"], Flag = W.Flag, Page = W.Page, Default = W.Default, Numeric = W.Numeric, Finished = W.Finished, Callback = W.Callback })

						if W.ToolTip then
							Z["Textbox"]:Tooltip({ Text = W.ToolTip.Name, Description = W.ToolTip.Description })
						end

						local K = u373.SearchItems[W.Page]

						if K then
							local e = { Element = Z["Textbox"], Name = W.Name }

							table.insert(K, e)
						end

						if w.Visible == false then
							P:SetVisibility(false)
						end

						return P
					end
					u373.Sections.Searchbox = function(P, w)
						task.wait()
						w = w or {}

						local W = { Window = P.Window, Page = P.Page, Section = P, Name = w.Name or w.name or "Searchbox", Flag = w.Flag or w.flag or u373:NextFlag(), Items = w.Items or w.items or {}, Default = w.Default or w.default or nil, Multi = w.Multi or w.multi or false, Callback = w.Callback or w.callback or function()
						end }
						local P, Z = Q:Searchbox({ Parent = W.Section.Items["Content"], Flag = W.Flag, Items = W.Items, Page = W.Page, Default = W.Default, Multi = W.Multi, Callback = W.Callback })
						local K = u373.SearchItems[W.Page]

						if K then
							local e = { Element = Z["Listbox"], Name = W.Name }

							table.insert(K, e)
						end

						if w.Visible == false then
							P:SetVisibility(false)
						end

						return P
					end
					u373.BlankElement = function(P, P)
						local w = { Name = P.Name or P.name or "Blank", Size = P.Size or P.size or 18 }
						local W = {}

						do
							W["BlankElement"] = j:Create(v31, { Parent = u373.Holder.Instance, Name = "\0", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), Size = UDim2.new(1, 0, 0, w.Size), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							W[v30] = j:Create("TextLabel", { Parent = W["Label"].Instance, Name = "\0", FontFace = u373.Font, TextColor3 = Color3.fromRGB(235, 235, 235), BorderColor3 = Color3.fromRGB(0, 0, 0), Text = w.Name, Size = UDim2.new(0, 0, 0, 15), AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, AutomaticSize = Enum.AutomaticSize.X, TextSize = 9, BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
							W[v30]:AddToTheme({ TextColor3 = v30 })
							W[v30]:TextBorder()
						end

						if P.Visible == false then
							w:SetVisibility(false)
						end

						return w, W
					end
				end
			end)()
		end

		t25 = u373.UserInterface
		t26 = u373.Flags
		t27 = u373.Games
		t23.HoldingMouseButton = tick()

		do
			local t57 = {}
			local Modules = ReplicatedStorage:FindFirstChild("Modules")

			if Modules and t28.CanHook and not Cysense_.Freeflow and Modules:FindFirstChild("GunHandler") then
				local GunHandler = require(Modules.GunHandler)

				if type(GunHandler) == "table" and type(GunHandler.getAim) == "function" then
					t57.GunHandler = GunHandler
				end
			end

			v386 = u373:Window({
				Logo = "78008336424629",
				FadeTime = 0.5
			})
			Cysense_2 = u373:Watermark("Cysense")
			Cysense_2:SetVisibility(false)
			v388 = u373:KeybindList()
			v388:SetVisibility(false)
			v389 = v386:Page({
				Name = "Main",
				SubPages = true
			})
			v390 = v389:SubPage({
				Name = "Target",
				Columns = 2
			})

			local v1179 = v390:Section({
				Name = "Target",
				Side = 1
			})

			v1179:Label("Select Target"):Keybind({
				Flag = "SelectTargetKeybind",
				Mode = "Toggle",
				Default = "None",
				Callback = function(p177)
					if p177 then
						return t25.SelectTargetKeybind:Press()
					end

					if t22:HasMaximumTargets() then
						t22:RemoveFromTargets(t22.Targets[1])

						return
					end

					local v1180 = t29.GetClosestFromMouse()

					if t22:IsTarget(v1180) then
						t22:RemoveFromTargets(v1180)

						return
					end

					local closestCandidate = t22:GetClosestCandidate()

					if not closestCandidate then
						if #t22.Targets > 0 then
							t22:RemoveFromTargets(t22.Targets[1])
						end
					elseif t22:IsTarget(closestCandidate) then
						t22:RemoveFromTargets(closestCandidate)
					else
						t22:AddToTargets(closestCandidate)
					end
				end
			})
			v1179:Toggle({
				Name = "Multi Select",
				Flag = "MultiSelect",
				Default = false,
				Callback = function(p178)
					local MainTargetHighlight = t25.MainTargetHighlight
					local v1183 = MainTargetHighlight
					local SetVisibility = MainTargetHighlight.SetVisibility

					SetVisibility(v1183, p178 and t26.TargetHighlight)
					t25.MainTargetTracer:SetVisibility(p178 and t26.TargetTracer)

					if not p178 then
						for i = #t22.Targets, 2, -1 do
							t22:RemoveFromTargets(t22.Targets[i])
						end
					end
				end
			})

			local v1186 = t25.MultiSelect:Settings()

			v1186:Slider({
				Name = "Max Targets",
				Flag = "MaxTargets",
				Min = 1,
				Max = 100,
				Default = 100
			})
			v1186:Toggle({
				Name = "Prioritize Closest Target",
				Flag = "PrioritizeClosestTarget",
				Default = false
			})
			v1179:Toggle({
				Name = "Auto Select",
				Flag = "TargetAutoSelect",
				Default = false,
				Callback = function(p179)
					local _, _, v1189 = t25.TargetAutoSelectKeybind:Get()

					if v1189 ~= p179 then
						t25.TargetAutoSelectKeybind:Press()
					end

					if not p179 then
						for i = #t22.Targets, 1, -1 do
							t22:RemoveFromTargets(t22.Targets[i])
						end
					end
				end
			}):Keybind({
				Flag = "TargetAutoSelectKeybind",
				Mode = "Toggle",
				Default = "None",
				Callback = function(p180)
					if t26.TargetAutoSelect ~= p180 then
						t25.TargetAutoSelect:Set(p180)
					end
				end
			})

-- Select Tool / Targeting section
do
    local Tool
    local connection

    v1179:Toggle({
        Name = "Select Tool",
        Flag = "SelectTool",
        Default = false,
        Callback = function(p181)
            if p181 then
                Tool = Instance.new("Tool", LocalPlayer.Backpack)
                Tool.RequiresHandle = false
                Tool.Name = "Select Target"

                local function v1193()
                    if t22:HasMaximumTargets() then
                        t22:RemoveFromTargets(t22.Targets[1])
                        return
                    end

                    local v1194 = t29.GetClosestFromMouse()

                    if t22:IsTarget(v1194) then
                        t22:RemoveFromTargets(v1194)
                        return
                    end

                    local closestCandidate = t22:GetClosestCandidate()

                    if not closestCandidate then
                        if #t22.Targets > 0 then
                            t22:RemoveFromTargets(t22.Targets[1])
                        end
                    elseif t22:IsTarget(closestCandidate) then
                        t22:RemoveFromTargets(closestCandidate)
                    else
                        t22:AddToTargets(closestCandidate)
                    end
                end

                connection = Tool.Activated:Connect(v1193)
            else
                if Tool then
                    Tool:Destroy()
                end
                if connection then
                    connection:Disconnect()
                end
            end
        end
    })

    v1179:Toggle({
        Name = "FOV",
        Flag = "TargetFOV",
        Default = false,
        Callback = function(p182)
            t25.TargetFOVSize:SetVisibility(p182)
            t35.TargetFOV.Visible = p182 and t26.TargetShowFOV or false
        end
    })

    local v1196 = t25.TargetFOV:Settings()

    v1196:Toggle({
        Name = "Show FOV",
        Flag = "TargetShowFOV",
        Default = true,
        Callback = function(p183)
            t35.TargetFOV.Visible = p183 and t26.TargetFOV
            t25.TargetFillFOV:SetVisibility(p183)
        end
    }):Colorpicker({
        Name = "FOV Color",
        Flag = "TargetFOVColor",
        Default = u373.Theme.Accent,
        Callback = function(p184)
            t35.TargetFOV.Color = p184
            t35.TargetFOV.Transparency = (1 - t26.TargetFOVColor.Alpha) / 1
        end
    })

    v1196:Toggle({
        Name = "Fill FOV",
        Flag = "TargetFillFOV",
        Default = false,
        Callback = function(p185)
            t35.TargetFOV.Filled = p185
        end
    })

    v1179:Slider({
        Name = "FOV Size",
        Flag = "TargetFOVSize",
        Min = 1,
        Max = 1000,
        Default = 100,
        Suffix = "p",
        Visible = false,
        Callback = function(p186)
            t35.TargetFOV.Radius = p186
        end
    })

    v1179:Toggle({
        Name = "Radius",
        Flag = "TargetRadius",
        Default = false,
        Callback = function(p187)
            t25.TargetRadiusSize:SetVisibility(p187)
        end
    })

    v1179:Slider({
        Name = "Radius Size",
        Flag = "TargetRadiusSize",
        Min = 1,
        Max = 1000,
        Default = 100,
        Suffix = "m",
        Visible = false
    })

    v1179:Dropdown({
        Name = "Closest From",
        Items = { "Mouse", "Character" },
        Flag = "ClosestFrom",
        Default = "Mouse",
        Callback = function(p188)
            if not p188 then
                t25.ClosestFrom:Set("Mouse")
            end
        end
    })

    v1179:Dropdown({
        Name = "Conditions",
        Items = { "Alive Check", "Wall Check", "Forcefield Check", "Onscreen Check" },
        Flag = "TargetConditions",
        Default = { "Onscreen Check" },
        Multi = true,
        ToolTip = {
            Name = "Selecting Conditions",
            Description = "These are conditions for selecting a target.\nBefore choosing a new target, it will first see if the target passes all these checks."
        }
    })

    if #Teams:GetChildren() > 1 then
        t25.TargetConditions:Add("Team Check")
    end

    if t27.Dahood then
        v1179:Toggle({
            Name = "Defense",
            Flag = "TargetDefense",
            Default = false,
            ToolTip = {
                Name = "Defense",
                Description = "If enabled, and somebody attacks you, they will automatically be selected."
            }
        })
    end

    v1179:Label("[!] This section is just for selecting a target.\nEnable features like aimbot, silentaim, or strafe.")

    local v1197 = v390:Section({
        Name = "Options",
        Side = 1
    })

    v1197:Toggle({
        Name = "Velocity Resolver",
        Flag = "VelocityResolver",
        Default = false,
        Visible = true,
        ToolTip = {
            Name = "Velocity Resolver",
            Description = "Calculates the velocity of your target\nWorks by dividing distance over time instead of reading the velocity property."
        }
    })

    v1197:Toggle({
        Name = "Spoof",
        Flag = "TargetSpoof",
        Default = false,
        ToolTip = {
            Name = "Spoof",
            Description = "Spoofs teleportation from the client while having an active target."
        }
    })

    v1197:Toggle({
        Name = "Notifications",
        Flag = "TargetNotifications",
        Default = false
    })

    local v1198 = t25.TargetNotifications:Settings()

    v1198:Dropdown({
        Name = "Notification Options",
        Flag = "TargetNotificationOptions",
        Items = { "Left", "Respawned" },
        Default = { "Left" },
        Multi = true
    })

    v1198:Slider({
        Name = "Notification Duration",
        Flag = "TargetNotificationDuration",
        Min = 0.1,
        Max = 60,
        Default = 8,
        Decimals = 0.1,
        Suffix = "s"
    })

    if t27.Dahood then
        t25.TargetNotificationOptions:Add("Stomped")
    end

    v1197:Toggle({
        Name = "Info",
        Flag = "TargetInfo",
        Default = false,
        ToolTip = {
            Name = "Info",
            Description = "Displays information about the target."
        },
        Callback = function(p189)
            t35.TargetInfo.Visible = p189
        end
    }):Colorpicker({
        Name = "Text Color",
        Flag = "TargetInfoColor",
        Default = u373.Theme.Accent,
        Callback = function(p190)
            t35.TargetInfo.Color = p190
            t35.TargetInfo.Transparency = (1 - t26.TargetInfoColor.Alpha) / 1
        end
    })

    local v1199 = v390:Section({
        Name = "Visuals",
        Side = 1
    })

    v1199:Toggle({
        Name = "Highlight",
        Flag = "TargetHighlight",
        Default = false,
        Callback = function(p191)
            t25.MainTargetHighlight:SetVisibility(p191 and t26.MultiSelect or false)

            if not p191 then
                for _, player in pairs(Players:GetPlayers()) do
                    local Character2 = player.Character
                    if Character2 then
                        local TargetHighlight = Character2:FindFirstChild("TargetHighlight")
                        if TargetHighlight then
                            TargetHighlight:Destroy()
                        end
                    end
                end
            end
        end
    }):Colorpicker({
        Name = "Highlight Color",
        Flag = "TargetHighlightColor",
        Default = u373.Theme.Accent,
        Alpha = 0.75
    })

    t25.MainTargetHighlight = v1199:Label("Highlight [Main Target]")
    t25.MainTargetHighlight:Colorpicker({
        Name = "Highlight Color",
        Flag = "MainTargetHighlightColor",
        Default = Color3.fromRGB(255, 0, 0),
        Alpha = 0.75
    })
    t25.MainTargetHighlight:SetVisibility(false)

    v1199:Toggle({
        Name = "Tracer",
        Flag = "TargetTracer",
        Default = false,
        Callback = function(p192)
            t25.MainTargetTracer:SetVisibility(p192 and t26.MultiSelect or false)
            for _, drawing in pairs(t22.Drawings) do
                drawing.Tracer.Visible = p192
            end
        end
    }):Colorpicker({
        Name = "Tracer Color",
        Flag = "TargetTracerColor",
        Default = u373.Theme.Accent,
        Alpha = 0,
        Callback = function(p193)
            for _, drawing in pairs(t22.Drawings) do
                drawing.Tracer.Color = p193
                drawing.Tracer.Transparency = (1 - t26.TargetTracerColor.Alpha) / 1
            end
        end
    })

    t25.MainTargetTracer = v1199:Label("Tracer [Main Target]")
    t25.MainTargetTracer:Colorpicker({
        Name = "Tracer Color",
        Flag = "MainTargetTracerColor",
        Default = Color3.fromRGB(255, 0, 0)
    })
    t25.MainTargetTracer:SetVisibility(false)

    local v1208 = v390:Section({
        Name = "Aimbot",
        Side = 2
    })

    v1208:Toggle({
        Name = "Aimbot",
        Flag = "Aimbot",
        Default = false,
        ToolTip = {
            Name = "Aimbot",
            Description = "Automatically aims at the target."
        }
    })

    local v1209 = t25.Aimbot:Settings()

    v1209:Slider({
        Name = "Smoothness",
        Flag = "AimbotSmoothness",
        Min = 0,
        Max = 100,
        Default = 0,
        Suffix = "%"
    })

    v1209:Slider({
        Name = "Prediction",
        Flag = "AimbotPrediction",
        Min = 0,
        Max = 100,
        Default = 0,
        Suffix = "%"
    })

    v1208:Dropdown({
        Name = "Body Part",
        Items = { "Head", "HumanoidRootPart" },
        Flag = "AimbotBodyPart",
        Default = "Head",
        Callback = function(p194)
            if not p194 then
                t25.AimbotBodyPart:Set("Head")
            end
        end
    })

    local v1210 = v390:Section({
        Name = "Silentaim",
        Side = 2
    })

    if t28.CanHook and not Cysense_.Freeflow then
        v1210:Toggle({
            Name = "Silentaim",
            Flag = "Silentaim",
            Default = false,
            ToolTip = {
                Name = "Silentaim",
                Description = "Spoofs your aim to the target."
            },
            Callback = function(p195)
                if t57.GunHandler then
                    if not isfunctionhooked(t57.GunHandler.getAim) then
                        if p195 then
                            local v1211
                            local hookfunction_ = hookfunction
                            local getAim = t57.GunHandler.getAim
                            local v1214 = LPH_NO_UPVALUES(function(...)
                                local v1215 = ...

                                if t26.Silentaim then
                                    local v1216 = t22.Targets[1]
                                    if v1216 then
                                        local SilentaimHitChance = t26.SilentaimHitChance
                                        if math.random(1, 100) <= SilentaimHitChance then
                                            local Character2 = v1216.Character
                                            local v1219 = Character2 and Character2:FindFirstChild(t26.SilentaimBodyPart)
                                            local v1220 = v1219.Position + (t26.VelocityResolver and t33.ResolvedVelocity or v1219.Velocity) * (t26.SilentaimPrediction / 100) - v1215
                                            return v1220.Unit, v1220.Magnitude
                                        end
                                    end
                                end
                                return v1211(...)
                            end)
                            v1211 = hookfunction_(getAim, v1214)
                        end
                    elseif t28.CanRestore then
                        restorefunction(t57.GunHandler.getAim)
                    end
                end
            end
        })

        local v1221 = t25.Silentaim:Settings()

        v1221:Slider({
            Name = "Hit Chance",
            Flag = "SilentaimHitChance",
            Min = 0,
            Max = 100,
            Default = 100,
            Suffix = "%"
        })

        v1221:Slider({
            Name = "Prediction",
            Flag = "SilentaimPrediction",
            Min = 0,
            Max = 100,
            Default = 0,
            Suffix = "%"
        })

        v1210:Dropdown({
            Name = "Body Part",
            Items = { "Head", "HumanoidRootPart" },
            Flag = "SilentaimBodyPart",
            Default = "Head",
            Callback = function(p196)
                if not p196 then
                    t25.SilentaimBodyPart:Set("Head")
                end
            end
        })
    end

    if not t28.CanHook then
        v1210:Label("[!] Your executor does not support silentaim\nDO NOT COMPLAIN ABOUT THIS!!!")
    elseif Cysense_.Freeflow then
        v1210:Label("[!] Freeflow has been enabled.\nDisable freeflow to use more features.")
    end
end

do
    local v1222 = v390:Section({
        Name = "Strafe",
        Side = 2
    })

    v1222:Toggle({
        Name = "Strafe",
        Flag = "Strafe",
        Default = false,
        ToolTip = {
            Name = "Strafe",
            Description = "Teleports around your target."
        }
    })

    local v1223 = t25.Strafe:Settings()

    v1223:Slider({
        Name = "Prediction",
        Flag = "StrafePrediction",
        Min = 0,
        Max = 100,
        Default = 0,
        Suffix = "%"
    })

    local s9 = "-10, -10, -10, 10, 10, 10"

    v1223:Textbox({
        Name = "Radius",
        Default = s9,
        Flag = "StrafeRadiusTextbox",
        PlaceHolder = "-X, -Y, -Z, X, Y, Z",
        Finished = true,
        ToolTip = {
            Name = "Radius",
            Description = "Specifies the randomized radius."
        },
        Callback = function(p197)
            if p197 == s9 then
                return
            end
            local parts = p197:gsub(" ", ""):split(",")
            for i = 1, 6 do
                local v1227 = tonumber(parts[i])
                parts[i] = v1227 and math.clamp(v1227, -2e9, 2e9) or 0
            end
            local value, v1229, v1230, v1231, v1232, v1233 = table.unpack(parts)
            if not (value <= v1231) or not (v1229 <= v1232) or not (v1230 <= v1233) then
                u373:Notification("Error: Invalid format.", "The first 3 numbers cant be higher than the second 3 numbers.\n(x1 <= x2), (y1 <= y2), (z1 <= z2)", 5)
                t25.StrafeRadiusTextbox:Set(s9)
                return
            end
            s9 = value .. ", " .. v1229 .. ", " .. v1230 .. ", " .. v1231 .. ", " .. v1232 .. ", " .. v1233
            t25.StrafeRadiusTextbox:Set(s9)
            local v1234 = math.max(math.abs(value), math.abs(v1229), math.abs(v1230), math.abs(v1231), math.abs(v1232), math.abs(v1233))
            if t26.StrafeRadiusSlider ~= v1234 then
                t25.StrafeRadiusSlider:Set(v1234, false)
            end
        end
    })

    local s10 = "-360, -360, -360, 360, 360, 360"

    v1223:Textbox({
        Name = "Rotation",
        Default = s10,
        Flag = "StrafeRotationTextbox",
        PlaceHolder = "-X, -Y, -Z, X, Y, Z",
        Finished = true,
        ToolTip = {
            Name = "Rotation",
            Description = "Specifies the randomized rotation range."
        },
        Callback = function(p198)
            if p198 == s10 then
                return
            end
            local parts = p198:gsub(" ", ""):split(",")
            for i = 1, 6 do
                local v1238 = tonumber(parts[i])
                parts[i] = v1238 and math.clamp(v1238, -360, 360) or 0
            end
            local value, v1240, v1241, v1242, v1243, v1244 = table.unpack(parts)
            if not (value <= v1242) or not (v1240 <= v1243) or not (v1241 <= v1244) then
                u373:Notification("Error: Invalid format.", "The first 3 numbers cant be higher than the second 3 numbers.\n(x1 <= x2), (y1 <= y2), (z1 <= z2)", 5)
                t25.StrafeRotationTextbox:Set(s10)
                return
            end
            s10 = value .. ", " .. v1240 .. ", " .. v1241 .. ", " .. v1242 .. ", " .. v1243 .. ", " .. v1244
            t25.StrafeRotationTextbox:Set(s10)
        end
    })

    v1222:Slider({
        Name = "Radius",
        Flag = "StrafeRadiusSlider",
        Min = 0,
        Max = 100,
        Default = 10,
        Callback = function(p199)
            local parts = t26.StrafeRadiusTextbox:gsub(" ", ""):split(",")
            local v1246 = math.max(math.abs(tonumber(parts[1]) or 0), math.abs(tonumber(parts[2]) or 0), math.abs(tonumber(parts[3]) or 0), math.abs(tonumber(parts[4]) or 0), math.abs(tonumber(parts[5]) or 0), math.abs(tonumber(parts[6]) or 0))
            if p199 < 100 or p199 == 100 and v1246 < 100 then
                t25.StrafeRadiusTextbox:Set(-p199 .. ", " .. -p199 .. ", " .. -p199 .. ", " .. p199 .. ", " .. p199 .. ", " .. p199)
            end
        end
    })

    v1222:Toggle({
        Name = "Idle Resolver",
        Flag = "StrafeIdleResolver",
        Default = false,
        ToolTip = {
            Name = "Idle Resolver",
            Description = "If there are no other tasks, it will wait in a safe state."
        },
        Callback = function(p200)
            t25.StrafeIdleSpam:SetVisibility(p200)
            t25.IdleSpamIdleTime:SetVisibility(t26.StrafeIdleSpam and p200)
            t25.IdleSpamStrafeTime:SetVisibility(t26.StrafeIdleSpam and p200)
            t25.StrafeIdleRadius:SetVisibility(p200)
            if t27.Dahood then
                t25.StrafeIdleReload:SetVisibility(p200)
            end
        end
    })

    local s11 = "0, 0, 0, 10000, 10000, 10000"

    v1222:Textbox({
        Name = "Idle Radius",
        Default = s11,
        Flag = "StrafeIdleRadius",
        PlaceHolder = "-X, -Y, -Z, X, Y, Z",
        Visible = false,
        Finished = true,
        ToolTip = {
            Name = "Idle Radius",
            Description = "The radius you will be randomly teleporting while idle\nExample: CFrame.new(math.random(a, d), math.random(b, e), math.random(c, f))"
        },
        Callback = function(p201)
            if p201 == s11 then
                return
            end
            local parts = p201:gsub(" ", ""):split(",")
            for i = 1, 6 do
                local v1250 = tonumber(parts[i])
                parts[i] = v1250 and math.clamp(v1250, -2e9, 2e9) or 0
            end
            local value, v1252, v1253, v1254, v1255, v1256 = table.unpack(parts)
            if not (value <= v1254) or not (v1252 <= v1255) or not (v1253 <= v1256) then
                u373:Notification("Error: Invalid format.", "The first 3 numbers cant be higher than the second 3 numbers.\n(x1 <= x2), (y1 <= y2), (z1 <= z2)", 5)
                t25.StrafeIdleRadius:Set(s11)
                return
            end
            s11 = value .. ", " .. v1252 .. ", " .. v1253 .. ", " .. v1254 .. ", " .. v1255 .. ", " .. v1256
            t25.StrafeIdleRadius:Set(s11)
        end
    })

    v1222:Toggle({
        Name = "Idle Spam",
        Flag = "StrafeIdleSpam",
        Default = false,
        Visible = false,
        ToolTip = {
            Name = "Idle Spam",
            Description = "Forces strafe into an idle state with customizable timings.\n(aka voidspam, but only when ur strafing.)"
        },
        Callback = function(p202)
            t25.IdleSpamIdleTime:SetVisibility(p202)
            t25.IdleSpamStrafeTime:SetVisibility(p202)
        end
    })

    v1222:Slider({
        Name = "Idle Time",
        Flag = "IdleSpamIdleTime",
        Min = 0.1,
        Max = 3,
        Default = 1,
        Suffix = "s",
        Decimals = 0.01,
        Visible = false
    })

    v1222:Slider({
        Name = "Strafe Time",
        Flag = "IdleSpamStrafeTime",
        Min = 0.1,
        Max = 3,
        Default = 0.3,
        Suffix = "s",
        Decimals = 0.01,
        Visible = false
    })

    if t27.Dahood then
        v1222:Toggle({
            Name = "Idle Reload",
            Flag = "StrafeIdleReload",
            Default = false,
            Visible = false,
            ToolTip = {
                Name = "Idle Reload",
                Description = "Forces strafe into an idle state when reloading"
            }
        })
    end
end

do
    local v1257 = v390:Section({
        Name = "Player",
        Side = 2
    })

    if t27.Dahood then
        v1257:Toggle({
            Name = "Auto Shoot [DETECTED]",
            Flag = "AutoShoot",
            Default = false,
            ToolTip = {
                Name = "Auto Shoot",
                Description = "Automatically fires held guns."
            },
            Callback = function(p203)
                if p203 then
                    t25.AutoKnife:Set(false)
                end
            end
        })

        t25.AutoShoot:Settings():Slider({
            Name = "Prediction",
            Flag = "ShootPrediction",
            Min = 0,
            Max = 100,
            Default = 0,
            Suffix = "%"
        })

        if t28.CanSetHiddenProperty then
            v1257:Toggle({
                Name = "Auto Knife",
                Flag = "AutoKnife",
                Default = false,
                ToolTip = {
                    Name = "Auto Knife",
                    Description = "Automatically kills your target with a knife."
                },
                Callback = function(p204)
                    if p204 then
                        t25.AutoShoot:Set(false)
                    end
                end
            })
        end

        v1257:Toggle({
            Name = "Auto Stomp",
            Flag = "AutoStomp",
            Default = false,
            ToolTip = {
                Name = "Auto Stomp",
                Description = "Stomps your target if theyre knocked."
            }
        })

        v1257:Toggle({
            Name = "Auto Grab",
            Flag = "AutoGrab",
            Default = false,
            ToolTip = {
                Name = "Auto Grab",
                Description = "Grabs your target if theyre knocked."
            }
        })

        if t28.CanSetHiddenProperty then
            v1257:Toggle({
                Name = "Auto Bag",
                Flag = "AutoBag",
                Default = false,
                ToolTip = {
                    Name = "Auto Bag",
                    Description = "Purchases a bag, and puts it on your target"
                }
            })
        end
    end

    v1257:Toggle({
        Name = "Fling",
        Flag = "Fling",
        Default = false,
        ToolTip = {
            Name = "Fling",
            Description = "Touches your target with extremely high velocity, causing them to fling."
        }
    })

    v1257:Toggle({
        Name = "Spectate",
        Flag = "TargetSpectate",
        Default = false,
        Callback = function(p205)
            if not p205 then
                CurrentCamera.CameraSubject = Humanoid
            end
        end
    })

    v1257:Label("[!] YOU NEED TO SELECT A TARGET!!!")

    if not t27.Dahood then
        v1257:Label("[!] This section is partially unavailable in this game.")
    elseif not t28.CanSetHiddenProperty then
        v1257:Label("[!] This section is partially unavailable due to your executor.")
    end
end

local v1258 = v389:SubPage({
    Name = "Combat",
    Columns = 2
})

	do
		local v1259 = v1258:Section({
			Name = "Triggerbot",
			Side = 1
		})

		if v363 then
			v1259:Label("This section is not available for your device.")
		else
			v1259:Toggle({
				Name = "Triggerbot",
				Flag = "Triggerbot",
				Default = false,
				ToolTip = {
					Name = "Triggerbot",
					Description = "Automatically shoots when your mouse is on a player."
				},
				Callback = function(p206)
					local _, _, v1262 = t25.TriggerbotKeybind:Get()

					if v1262 ~= p206 then
						t25.TriggerbotKeybind:Press()
					end
				end
			}):Keybind({
				Flag = "TriggerbotKeybind",
				Mode = "Toggle",
				Default = "None",
				Callback = function(p207)
					if t26.Triggerbot ~= p207 then
						t25.Triggerbot:Set(p207)
					end
				end
			})
			t25.Triggerbot:Settings():Toggle({
				Name = "Tool-only",
				Flag = "TriggerbotToolOnly",
				Default = false,
				ToolTip = {
					Name = "Tool Only",
					Description = "When enabled, triggerbot will only work while you're holding a tool."
				}
			})
			v1259:Dropdown({
				Name = "Conditions",
				Items = {
					"Alive Check",
					"Forcefield Check"
				},
				Flag = "TriggerbotConditions",
				Default = {},
				Multi = true,
				ToolTip = {
					Name = "Selecting Conditions",
					Description = "These are conditions for selecting a target.\nBefore choosing a new target, it will first see if the target passes all these checks."
				}
			})

			if #Teams:GetChildren() > 1 then
				t25.TriggerbotConditions:Add("Team Check")
			end
		end
	end

	do
		local v1263 = v1258:Section({
			Name = "Exploits",
			Side = 1
		})

		if t27.Dahood then
			v1263:Toggle({
				Name = "Rapid Fire [DETECTED]",
				Flag = "RapidFire",
				Default = false,
				ToolTip = {
					Name = "Rapid Fire",
					Description = "Lets you shoot faster with automatic guns"
				},
				Callback = function(p208)
					t25.FireRate:SetVisibility(p208)

					if not p208 then
						for _, v in pairs({
							Character,
							LocalPlayer.Backpack
						}) do
							for _, child in pairs(v:GetChildren()) do
								if child:IsA("Tool") and t23.GunCooldowns[child] then
									local ShootingCooldown = child:FindFirstChild("ShootingCooldown")
									local ToleranceCooldown = child:FindFirstChild("ToleranceCooldown")
									local LocalScript = child:FindFirstChildWhichIsA("LocalScript")

									if ShootingCooldown and t23.GunCooldowns[child].Shooting then
										ShootingCooldown.Value = t23.GunCooldowns[child].Shooting
									end

									if ToleranceCooldown and t23.GunCooldowns[child].Tolerance then
										ToleranceCooldown.Value = t23.GunCooldowns[child].Tolerance
									end

									t23.GunCooldowns[child] = nil

									if LocalScript then
										LocalScript.Enabled = false
										RunService.RenderStepped:Wait()
										LocalScript.Enabled = true
									end
								end
							end
						end
					end
				end
			})
			v1263:Slider({
				Name = "Fire Rate",
				Flag = "FireRate",
				Min = 0,
				Max = 100,
				Default = 100,
				Decimals = 0.1,
				Suffix = "%",
				Visible = false,
				ToolTip = {
					Name = "Fire Rate",
					Description = "Controls the rate you can fire at"
				}
			})
			v1263:Toggle({
				Name = "Auto Reload",
				Flag = "AutoReload",
				Default = false
			})

			if t28.CanHook and not Cysense_.Freeflow then
				v1263:Toggle({
					Name = "Bullet Spread",
					Flag = "BulletSpread",
					Default = false,
					Callback = function(p209)
						t25.BulletSpreadSlider:SetVisibility(p209)

						if not isfunctionhooked(math.random) then
							if p209 then
								local v1271

								v1271 = hookfunction(math.random, newcclosure(function(...)
									if t26.BulletSpread and not checkcaller() then
										local t58 = { ... }

										if #t58 == 0 or t58[1] == -0.05 and t58[2] == 0.05 or t58[1] == -0.1 or t58[1] == -0.05 then
											return v1271(...) * (t26.BulletSpreadSlider / 100)
										end
									end

									return v1271(...)
								end))
							end
						elseif t28.CanRestore then
							restorefunction(math.random)
						end
					end
				})
				v1263:Slider({
					Name = "Spread",
					Flag = "BulletSpreadSlider",
					Min = 0,
					Max = 100,
					Default = 0,
					Suffix = "%",
					Visible = false,
					ToolTip = {
						Name = "Spread",
						Description = "Controls the percentage of the bullet spread"
					}
				})
			end

			v1263:Toggle({
				Name = "No Recoil",
				Flag = "NoRecoil",
				Default = false
			})

			if not t28.CanHook then
				v1263:Label("[!] Several features are unavailable due to your executor.")
			elseif Cysense_.Freeflow then
				v1263:Label("[!] Freeflow has been enabled.\nDisable freeflow to use more features.")
			end
		else
			v1263:Label("[!] This section is unavailable in this game.")
		end
	end

	local v1273 = v1258:Section({
		Name = "Csync",
		Side = 2
	})

	v1273:Toggle({
		Name = "Csync",
		Flag = "Csync",
		Default = false,
		ToolTip = {
			Name = "Csync",
			Description = "Spoofs teleportation from your client, and teleports you based on your specified csync radius.\nSome features like 'Strafe' will override this feature."
		},
		Callback = function(p210)
			local _, _, v1276 = t25.CsyncKeybind:Get()

			if v1276 ~= p210 then
				t25.CsyncKeybind:Press()
			end

			t23.FreezePosition = HumanoidRootPart.CFrame
		end
	}):Keybind({
		Flag = "CsyncKeybind",
		Mode = "Toggle",
		Default = "None",
		Callback = function(p211)
			if t26.Csync ~= p211 then
				t25.Csync:Set(p211)
			end
		end
	})

	do
		local v1277 = t25.Csync:Settings()
		local s12 = "-10000, -10000, -10000, 10000, 10000, 10000"

		v1277:Textbox({
			Name = "Csync Radius",
			Default = s12,
			Flag = "CsyncRadiusTextbox",
			PlaceHolder = "-X, -Y, -Z, X, Y, Z",
			Finished = true,
			ToolTip = {
				Name = "Csync Radius",
				Description = "The radius you will be randomly teleporting while in csync\nExample: CFrame.new(math.random(a, d), math.random(b, e), math.random(c, f))"
			},
			Callback = function(p212)
				if p212 == s12 then
					return
				end

				local parts = p212:gsub(" ", ""):split(",")

				for i = 1, 6 do
					local v1281 = tonumber(parts[i])

					parts[i] = v1281 and math.clamp(v1281, -2e9, 2e9) or 0
				end

				local value, v1283, v1284, v1285, v1286, v1287 = table.unpack(parts)

				if value <= v1285 and v1283 <= v1286 then
					if v1284 <= v1287 then
						s12 = value .. ", " .. v1283 .. ", " .. v1284 .. ", " .. v1285 .. ", " .. v1286 .. ", " .. v1287
						t25.CsyncRadiusTextbox:Set(s12)

						local v1288 = math.max(math.abs(value), math.abs(v1283), math.abs(v1284), math.abs(v1285), math.abs(v1286), math.abs(v1287))

						if t26.CsyncRadiusSlider ~= v1288 then
							t25.CsyncRadiusSlider:Set(v1288, false)
						end

						return
					end
				end

				u373:Notification("Error: Invalid format.", "The first 3 numbers cant be higher than the second 3 numbers.", 5)
				t25.CsyncRadiusTextbox:Set(s12)
			end
		})

		local s13 = "-360, -360, -360, 360, 360, 360"

		v1277:Textbox({
			Name = "Csync Rotation",
			Default = s13,
			Flag = "CsyncRotation",
			PlaceHolder = "-X, -Y, -Z, X, Y, Z",
			Finished = true,
			ToolTip = {
				Name = "Csync Rotation",
				Description = "The rotation range applied while in csync"
			},
			Callback = function(p213)
				if p213 == s13 then
					return
				end

				local parts = p213:gsub(" ", ""):split(",")

				for i = 1, 6 do
					local v1292 = tonumber(parts[i])

					parts[i] = v1292 and math.clamp(v1292, -360, 360) or 0
				end

				local value, v1294, v1295, v1296, v1297, v1298 = table.unpack(parts)

				if not (value <= v1296) or not (v1294 <= v1297) or not (v1295 <= v1298) then
					u373:Notification("Error: Invalid format.", "The first 3 numbers cant be higher than the second 3 numbers.", 5)
					t25.CsyncRotation:Set(s13)

					return
				end

				s13 = value .. ", " .. v1294 .. ", " .. v1295 .. ", " .. v1296 .. ", " .. v1297 .. ", " .. v1298
				t25.CsyncRotation:Set(s13)
			end
		})
	end

	v1273:Slider({
		Name = "Csync Radius",
		Flag = "CsyncRadiusSlider",
		Min = 0,
		Max = 1000,
		Default = 1000,
		Callback = function(p214)
			local parts = t26.CsyncRadiusTextbox:gsub(" ", ""):split(",")
			local v1300 = math.max(math.abs(tonumber(parts[1]) or 0), math.abs(tonumber(parts[2]) or 0), math.abs(tonumber(parts[3]) or 0), math.abs(tonumber(parts[4]) or 0), math.abs(tonumber(parts[5]) or 0), math.abs(tonumber(parts[6]) or 0))

			if p214 < 1000 or p214 == 1000 and v1300 < 1000 then
				t25.CsyncRadiusTextbox:Set(-p214 .. ", " .. -p214 .. ", " .. -p214 .. ", " .. p214 .. ", " .. p214 .. ", " .. p214)
			end
		end
	})

	do
		local v1301 = v1258:Section({
			Name = "Velocity Spoofer",
			Side = 2
		})

		v1301:Toggle({
			Name = "Velocity Spoofer",
			Flag = "VelocitySpoofer",
			Default = false
		})

		local s14 = "10000, 10000, 10000"

		v1301:Textbox({
			Name = "Velocity",
			Default = s14,
			Flag = "VelocitySpooferTextbox",
			PlaceHolder = "X, Y, Z",
			Finished = true,
			ToolTip = {
				Name = "Velocity",
				Description = "The velocity to spoof on each axis\nExample: X, Y, Z"
			},
			Callback = function(p215)
				if p215 == s14 then
					return
				end

				local parts = p215:gsub(" ", ""):split(",")

				for i = 1, 3 do
					local v1305 = tonumber(parts[i])

					parts[i] = v1305 and math.clamp(v1305, -9e9, 9e9) or 0
				end

				local value, v1307, v1308 = table.unpack(parts)
				local v1309 = value .. ", " .. v1307 .. ", " .. v1308

				s14 = v1309
				t25.VelocitySpooferTextbox:Set(v1309)
			end
		})
	end

	local v1310 = v386:Page({
		Name = "Client",
		SubPages = true
	}):SubPage({
		Name = "Local",
		Columns = 2
	})

	do
		local v1311 = v1310:Section({
			Name = "Movement",
			Side = 1
		})

		v1311:Toggle({
			Name = "Fly",
			Flag = "Fly",
			Default = false,
			Callback = function(p216)
				local _, _, v1314 = t25.FlyKeybind:Get()

				if v1314 ~= p216 then
					t25.FlyKeybind:Press()
				end

				t25.FlySpeed:SetVisibility(p216)
				Humanoid.PlatformStand = p216
			end
		})
		t25.Fly:Keybind({
			Flag = "FlyKeybind",
			Mode = "Toggle",
			Default = "None",
			Callback = function(p217)
				if t26.Fly ~= p217 then
					t25.Fly:Set(p217)
				end
			end
		})
		v1311:Slider({
			Name = "Fly Speed",
			Flag = "FlySpeed",
			Min = 0,
			Max = 100,
			Default = 100,
			Suffix = "%",
			Visible = false
		})
		v1311:Toggle({
			Name = "Speed",
			Flag = "Speed",
			Default = false,
			Callback = function(p218)
				local _, _, v1317 = t25.SpeedKeybind:Get()

				if v1317 ~= p218 then
					t25.SpeedKeybind:Press()
				end

				t25.SpeedSlider:SetVisibility(p218)
			end
		})
		t25.Speed:Keybind({
			Flag = "SpeedKeybind",
			Mode = "Toggle",
			Default = "None",
			Callback = function(p219)
				if t26.Speed ~= p219 then
					t25.Speed:Set(p219)
				end
			end
		})
		v1311:Slider({
			Name = "Speed",
			Flag = "SpeedSlider",
			Min = 0,
			Max = 100,
			Default = 100,
			Suffix = "%",
			Visible = false
		})
	end

	do
		local v1318 = v1310:Section({
			Name = "Exploits",
			Side = 1
		})

		v1318:Toggle({
			Name = "Return by death",
			Flag = "ReturnByDeath",
			Default = false,
			ToolTip = {
				Name = "Return By Death",
				Description = "Teleports back to the position you were before you died."
			}
		})

		if t27.Dahood then
			v1318:Toggle({
				Name = "Anti Stomp",
				Flag = "AntiStomp",
				Default = false
			})
			v1318:Toggle({
				Name = "Spam Stomp",
				Flag = "SpamStomp",
				Default = false
			})
			v1318:Toggle({
				Name = "Auto Drop Cash",
				Flag = "AutoDropCash",
				Default = false,
				Callback = function(p220)
					t25.CashAmount:SetVisibility(p220)
				end
			})
			v1318:Slider({
				Name = "Cash Amount",
				Flag = "CashAmount",
				Min = 100,
				Max = 15000,
				Default = 15000,
				Visible = false
			})

			local v1319
			local u1320 = false

			v1318:Button():Add("Redeem all codes", function()
				if u1320 then
					return
				end

				u1320 = true
				v1319:SetVisibility(true)

				local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/furryboy1/dh-code-redeemer/refs/heads/main/Codes"))()

				if #lib.codes > 0 then
					for _, code in pairs(lib.codes) do
						ReplicatedStorage.MainEvent:FireServer("EnterPromoCode", code)
						v1319:SetText("Redeemed '" .. code .. "'\nList of codes obtained from furryboy.1")
						task.wait(lib.rate)
					end
				else
					v1319:SetText("No codes found :(")
					task.wait(1)
				end

				v1319:SetText("List of codes obtained from furryboy.1")
				v1319:SetVisibility(false)
				u1320 = false
			end)
			v1319 = v1318:Label("List of codes obtained from furryboy.1")
			v1319:SetVisibility(false)
		else
			v1318:Label("[!] This section is partially unavailable in this game.")
		end
	end

	do
		local v1324 = v1310:Section({
			Name = "Player",
			Side = 2
		})

		v1324:Toggle({
			Name = "Chat Spy",
			Flag = "ChatSpy",
			Default = TextChatService.ChatWindowConfiguration.Enabled,
			Callback = function(p221)
				TextChatService.ChatWindowConfiguration.Enabled = p221
			end
		})

		local FallenPartsDestroyHeight = Workspace.FallenPartsDestroyHeight

		v1324:Toggle({
			Name = "Anti-Void",
			Flag = "AntiVoid",
			Default = true,
			Callback = function(p222)
				if not p222 then
					Workspace.FallenPartsDestroyHeight = FallenPartsDestroyHeight
				end
			end
		})
	end

	do
		local v1326 = v1310:Section({
			Name = "Camera",
			Side = 2
		})
		local fieldOfView = math.floor(CurrentCamera.FieldOfView)

		v1326:Toggle({
			Name = "Field Of View",
			Flag = "FieldOfView",
			Default = false,
			Callback = function(p223)
				if not p223 then
					CurrentCamera.FieldOfView = fieldOfView
				end

				t25.FieldOfViewSlider:SetVisibility(p223)
			end
		})
		v1326:Slider({
			Name = "Field Of View",
			Flag = "FieldOfViewSlider",
			Min = 1,
			Max = 120,
			Default = fieldOfView,
			Visible = false
		})
		v1326:Toggle({
			Name = "Vertical Scale",
			Flag = "VerticalScale",
			Default = false,
			Callback = function(p224)
				if not p224 then
					CurrentCamera.CFrame *= CFrame.new(0, 0, 0, t26.HorizontalScaleSlider, 0, 0, 0, 1, 0, 0, 0, 1)
				end

				t25.VerticalScaleSlider:SetVisibility(p224)
			end
		})
		v1326:Slider({
			Name = "Vertical Scale",
			Flag = "VerticalScaleSlider",
			Min = 0.01,
			Max = 1,
			Default = 1,
			Decimals = 0.01,
			Visible = false
		})
		v1326:Toggle({
			Name = "Horizontal Scale",
			Flag = "HorizontalScale",
			Default = false,
			Callback = function(p225)
				if not p225 then
					CurrentCamera.CFrame *= CFrame.new(0, 0, 0, 1, 0, 0, 0, t26.VerticalScaleSlider, 0, 0, 0, 1)
				end

				t25.HorizontalScaleSlider:SetVisibility(p225)
			end
		})
		v1326:Slider({
			Name = "Horizontal Scale",
			Flag = "HorizontalScaleSlider",
			Min = 0.01,
			Max = 1,
			Default = 1,
			Decimals = 0.01,
			Visible = false
		})

		local CameraMaxZoomDistance = LocalPlayer.CameraMaxZoomDistance

		v1326:Toggle({
			Name = "Infinite Zoom",
			Flag = "InfiniteZoom",
			Default = false,
			Callback = function(p226)
				LocalPlayer.CameraMaxZoomDistance = p226 and math.huge or CameraMaxZoomDistance
			end
		})
	end

	local v1329 = v1310:Section({
		Name = "Humanoid",
		Side = 2
	})

	do
		local WalkSpeed = Humanoid and Humanoid.WalkSpeed or 16

		v1329:Toggle({
			Name = "Walk Speed",
			Flag = "WalkSpeed",
			Default = false,
			Callback = function(p227)
				local _, _, v1333 = t25.WalkSpeedKeybind:Get()

				if v1333 ~= p227 then
					t25.WalkSpeedKeybind:Press()
				end

				t25.WalkSpeedSlider:SetVisibility(p227)
				Humanoid.WalkSpeed = WalkSpeed
			end
		}):Keybind({
			Flag = "WalkSpeedKeybind",
			Mode = "Toggle",
			Default = "None",
			Callback = function(p228)
				if t26.WalkSpeed ~= p228 then
					t25.WalkSpeed:Set(p228)
				end
			end
		})
	end

	v1329:Slider({
		Name = "Walk Speed",
		Flag = "WalkSpeedSlider",
		Min = 0,
		Max = 300,
		Default = Humanoid and Humanoid.WalkSpeed or 16,
		Visible = false
	})

	do
		local JumpPower = Humanoid and Humanoid.JumpPower or 50
		local UseJumpPower = Humanoid and Humanoid.UseJumpPower or false

		v1329:Toggle({
			Name = "Jump Power",
			Flag = "JumpPower",
			Default = false,
			Callback = function(p229)
				local _, _, v1338 = t25.JumpPowerKeybind:Get()

				if v1338 ~= p229 then
					t25.JumpPowerKeybind:Press()
				end

				t25.JumpPowerPower:SetVisibility(p229)
				Humanoid.JumpPower = JumpPower
				Humanoid.UseJumpPower = UseJumpPower
			end
		}):Keybind({
			Flag = "JumpPowerKeybind",
			Mode = "Toggle",
			Default = "None",
			Callback = function(p230)
				if t26.JumpPower ~= p230 then
					t25.JumpPower:Set(p230)
				end
			end
		})
	end

	v1329:Slider({
		Name = "Jump Power",
		Flag = "JumpPowerPower",
		Min = 0,
		Max = 300,
		Default = Humanoid and Humanoid.JumpPower or 50,
		Visible = false
	})
	v1329:Toggle({
		Name = "Anti-Sit",
		Flag = "AntiSit",
		Default = false,
		Callback = function(p231)
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, not p231)
		end
	})

	local v1339 = v386:Page({
		Name = "Visuals",
		SubPages = true
	})

	do
		local v1340 = v1339:SubPage({
			Name = "Visuals",
			Columns = 2
		})
		local v1341 = v1340:Section({
			Name = "ESP",
			Side = 1
		})

		v1341:Toggle({
			Name = "Esp",
			Flag = "Esp",
			Default = false,
			Callback = function(p232)
				local _, _, v1344 = t25.EspKeybind:Get()

				if v1344 ~= p232 then
					t25.EspKeybind:Press()
				end

				for _, v in pairs(t31.Players.Cache) do
					for _, drawing in pairs(v.Drawings) do
						drawing.Visible = false
					end
				end
			end
		}):Keybind({
			Flag = "EspKeybind",
			Mode = "Toggle",
			Default = "None",
			Callback = function(p233)
				if t26.Esp ~= p233 then
					t25.Esp:Set(p233)
				end
			end
		})
		v1341:Toggle({
			Name = "Self Esp",
			Flag = "SelfEsp",
			Default = false,
			Callback = function()
				for _, drawing in pairs(t31.Players.Cache[LocalPlayer].Drawings) do
					drawing.Visible = false
				end
			end
		})
		v1341:Toggle({
			Name = "Show Boxes",
			Flag = "ShowBoxes",
			Default = false,
			Callback = function()
				for k, v in pairs(t31.Players.Cache) do
					if k ~= LocalPlayer or t26.SelfEsp then
						local Drawings = v.Drawings

						Drawings.BoxInline.Visible = false
						Drawings.BoxOutline.Visible = false
					end
				end
			end
		}):Colorpicker({
			Name = "Box Color",
			Flag = "EspBoxColor",
			Default = u373.Theme.Accent,
			Alpha = 0,
			Callback = function(p234)
				for _, v in pairs(t31.Players.Cache) do
					local Drawings = v.Drawings

					Drawings.BoxInline.Color = p234
					Drawings.BoxInline.Transparency = (1 - t26.EspBoxColor.Alpha) / 1
				end
			end
		})
		t25.ShowBoxes:Settings():Toggle({
			Name = "Fill Boxes",
			Flag = "FillBoxes",
			Default = false,
			Callback = function(p235)
				for _, v in pairs(t31.Players.Cache) do
					v.Drawings.BoxInline.Filled = p235
				end
			end
		})
		v1341:Toggle({
			Name = "Show Names",
			Flag = "ShowNames",
			Default = false,
			Callback = function()
				for k, v in pairs(t31.Players.Cache) do
					if k ~= LocalPlayer or t26.SelfEsp then
						v.Drawings.Name.Visible = false
					end
				end
			end
		}):Colorpicker({
			Name = "Name Color",
			Flag = "EspNameColor",
			Default = u373.Theme.Accent,
			Alpha = 0,
			Callback = function(p236)
				for _, v in pairs(t31.Players.Cache) do
					local Drawings = v.Drawings

					Drawings.Name.Color = p236
					Drawings.Name.Transparency = (1 - t26.EspNameColor.Alpha) / 1
				end
			end
		})
		t25.ShowNames:Settings():Textbox({
			Name = "Name Text",
			Default = "{Displayname} [{Distance}m]",
			Flag = "ShowNamesText",
			Placeholder = "Enter text",
			Finished = true
		})
		v1341:Toggle({
			Name = "Show Weapon",
			Flag = "ShowWeapon",
			Default = false,
			Callback = function()
				for k, v in pairs(t31.Players.Cache) do
					if k ~= LocalPlayer or t26.SelfEsp then
						v.Drawings.Weapon.Visible = false
					end
				end
			end
		}):Colorpicker({
			Name = "Weapon Color",
			Flag = "EspWeaponColor",
			Default = u373.Theme.Accent,
			Alpha = 0,
			Callback = function(p237)
				for _, v in pairs(t31.Players.Cache) do
					local Drawings = v.Drawings

					Drawings.Weapon.Color = p237
					Drawings.Weapon.Transparency = (1 - t26.EspWeaponColor.Alpha) / 1
				end
			end
		})
		v1341:Toggle({
			Name = "Show Health",
			Flag = "ShowHealth",
			Default = false,
			Callback = function()
				for k, v in pairs(t31.Players.Cache) do
					if k ~= LocalPlayer or t26.SelfEsp then
						v.Drawings.Health.Visible = false
					end
				end
			end
		}):Colorpicker({
			Name = "Health Color",
			Flag = "EspHealthColor",
			Default = u373.Theme.Accent,
			Alpha = 0,
			Callback = function(p238)
				for _, v in pairs(t31.Players.Cache) do
					local Drawings = v.Drawings

					Drawings.Health.Color = p238
					Drawings.Health.Transparency = (1 - t26.EspHealthColor.Alpha) / 1
				end
			end
		})

		local v1374 = v1340:Section({
			Name = "Visualize",
			Side = 1
		})

		v1374:Toggle({
			Name = "Visualize",
			Flag = "Visualize",
			Default = false,
			Callback = function(p239)
				v374.Visualizer.Parent = p239 and t26.VisualizerCharacter and workspace or nil
				t35.VisualizerDot.Visible = false
				t35.VisualizerTracer.Visible = false
			end
		})
		v1374:Toggle({
			Name = "Character",
			Flag = "VisualizerCharacter",
			Default = false,
			Callback = function(p240)
				v374.Visualizer.Parent = p240 and t26.Visualize and workspace or nil
			end
		}):Colorpicker({
			Name = "Character Color",
			Flag = "VisualizerCharacterColor",
			Default = u373.Theme.Accent,
			Alpha = 0,
			Callback = function(p241)
				for _, child in pairs(v374.Visualizer:GetChildren()) do
					child.Color = p241
					child.Transparency = t26.VisualizerCharacterColor.Alpha
				end
			end
		})
		t25.VisualizerCharacter:Settings():Dropdown({
			Name = "Material",
			Flag = "VisualizerCharacterMaterial",
			Items = {
				"ForceField",
				"Neon",
				"SmoothPlastic"
			},
			Default = "ForceField",
			Callback = function(p242)
				if not p242 then
					t25.VisualizerCharacterMaterial:Set("ForceField")
				end

				for _, child in pairs(v374.Visualizer:GetChildren()) do
					child.Material = Enum.Material[p242]
				end
			end
		})
		v1374:Toggle({
			Name = "Dot",
			Flag = "VisualizerDot",
			Default = false,
			Callback = function()
				t35.VisualizerDot.Visible = false
			end
		}):Colorpicker({
			Name = "Dot Color",
			Flag = "VisualizerDotColor",
			Default = u373.Theme.Accent,
			Alpha = 0,
			Callback = function(p243)
				t35.VisualizerDot.Color = p243
				t35.VisualizerDot.Transparency = (1 - t26.VisualizerDotColor.Alpha) / 1
			end
		})

		local v1379 = t25.VisualizerDot:Settings()

		v1379:Toggle({
			Name = "Fill Dot",
			Flag = "VisualizerFillDot",
			Default = true,
			Callback = function(p244)
				t35.VisualizerDot.Filled = p244
			end
		})
		v1379:Slider({
			Name = "Dot Size",
			Flag = "VisualizerDotSize",
			Min = 1,
			Max = 100,
			Default = 10,
			Callback = function(p245)
				t35.VisualizerDot.Radius = p245
			end
		})
		v1374:Toggle({
			Name = "Tracer",
			Flag = "VisualizerTracer",
			Default = false,
			Callback = function()
				t35.VisualizerTracer.Visible = false
			end
		}):Colorpicker({
			Name = "Tracer Color",
			Flag = "VisualizerTracerColor",
			Default = u373.Theme.Accent,
			Alpha = 0,
			Callback = function(p246)
				t35.VisualizerTracer.Color = p246
				t35.VisualizerTracer.Transparency = (1 - t26.VisualizerTracerColor.Alpha) / 1
			end
		})
		t25.VisualizerTracer:Settings():Slider({
			Name = "Tracer Thickness",
			Flag = "VisualizerTracerThickness",
			Min = 1,
			Max = 10,
			Default = 1,
			Callback = function(p247)
				t35.VisualizerTracer.Thickness = p247
			end
		})

		local v1380 = v1340:Section({
			Name = "Aura VFX",
			Side = 2
		})
		local v1381 = game:GetObjects("rbxassetid://92589637848522")[1]
		local t59 = {}

		for _, child in pairs(v1381:GetChildren()) do
			table.insert(t59, child.Name)
		end

		local v1385

		v1380:Searchbox({
			Name = "Auras",
			Flag = "Auras",
			Items = t59,
			Multi = true,
			Callback = function(p248)
				for _, descendant in pairs(Character:GetDescendants()) do
					if descendant.Name == "AuraEffect" then
						descendant:Destroy()
					end
				end

				for _, v in pairs(p248) do
					for _, child in pairs(v1381[v]:GetChildren()) do
						local clone = child:Clone()

						for _, child2 in pairs(clone:GetChildren()) do
							child2.Name = "AuraEffect"
							child2.Parent = Character:FindFirstChild(child.Name) or Character:FindFirstChild("HumanoidRootPart")
						end

						clone:Destroy()
					end
				end

				if next(p248) then
					v1385:SetText("Selected: " .. table.concat(p248, ", "))
				else
					v1385:SetText("Selected: None")
				end
			end
		})
		v1385 = v1380:Label("Selected: None")
	end

	local v1395 = v1339:SubPage({
		Name = "Damage",
		Columns = 2
	})

	do
		local v1396 = v1395:Section({
			Name = "Notifications",
			Side = 1
		})

		v1396:Toggle({
			Name = "Damage Notifications",
			Flag = "DamageNotifications",
			Default = false
		})
		v1396:Slider({
			Name = "Life time",
			Flag = "DamageNotificationLifetime",
			Decimals = 0.1,
			Suffix = "s",
			Min = 0.1,
			Max = 10,
			Default = 1
		})
		v1396:Textbox({
			Name = "Notification Title",
			Default = "Damaged: {Displayname} (@{Username})",
			Flag = "DamageNotificationsTitle",
			Placeholder = "Enter text",
			Finished = true
		})
		v1396:Textbox({
			Name = "Notification Description",
			Default = "Damage: {Damage} - New health: {NewHealth} - Old health: {OldHealth}",
			Flag = "DamageNotificationsDescription",
			Placeholder = "Enter text",
			Finished = true
		})
	end

	do
		local v1397 = v1395:Section({
			Name = "Numbers",
			Side = 1
		})

		v1397:Toggle({
			Name = "Damage Numbers",
			Flag = "DamageNumbers",
			Default = false
		}):Colorpicker({
			Name = "Damage Color",
			Flag = "DamageNumberColor",
			Default = u373.Theme.Accent,
			Alpha = 0
		})
		v1397:Slider({
			Name = "Size",
			Flag = "DamageNumbersize",
			Decimals = 1,
			Suffix = "",
			Min = 1,
			Max = 100,
			Default = 24
		})
		v1397:Slider({
			Name = "Life time",
			Flag = "DamageNumberLifetime",
			Decimals = 0.1,
			Suffix = "s",
			Min = 0.1,
			Max = 5,
			Default = 1
		})
		v1397:Slider({
			Name = "Fade time",
			Flag = "DamageNumberFadetime",
			Decimals = 0.1,
			Suffix = "s",
			Min = 0,
			Max = 5,
			Default = 1
		})
	end

	do
		local v1398 = v1395:Section({
			Name = "Chams",
			Side = 1
		})

		v1398:Toggle({
			Name = "Damage Chams",
			Flag = "DamageChams",
			Default = false
		}):Colorpicker({
			Name = "Chams Color",
			Flag = "DamageChamsColor",
			Default = u373.Theme.Accent,
			Alpha = 0
		})
		v1398:Slider({
			Name = "Life time",
			Flag = "DamageChamsLifetime",
			Decimals = 0.1,
			Suffix = "s",
			Min = 0.1,
			Max = 5,
			Default = 1
		})
		v1398:Slider({
			Name = "Fade time",
			Flag = "DamageChamsFadetime",
			Decimals = 0.1,
			Suffix = "s",
			Min = 0.1,
			Max = 5,
			Default = 1
		})
	end

	do
		local v1399 = v1395:Section({
			Name = "Effects",
			Side = 2
		})

		t23.Effects = game:GetObjects("rbxassetid://97557398751475")[1]

		local t60 = {}

		for _, child in pairs(t23.Effects:GetChildren()) do
			table.insert(t60, child.Name)
		end

		local v1403

		v1399:Toggle({
			Name = "Damage Effects",
			Flag = "DamageEffects",
			Default = false
		})
		v1399:Searchbox({
			Name = "Effects",
			Flag = "DamageEffect",
			Items = t60,
			Multi = true,
			Callback = function(p249)
				if next(p249) then
					v1403:SetText("Selected: " .. table.concat(p249, ", "))
				else
					v1403:SetText("Selected: None")
				end
			end
		})
		v1403 = v1399:Label("Selected: None")
		v1399:Slider({
			Name = "Life time",
			Flag = "DamageEffectLifetime",
			Decimals = 0.1,
			Suffix = "s",
			Min = 0.1,
			Max = 5,
			Default = 1
		})
	end

	do
		local v1404 = v1395:Section({
			Name = "Sounds",
			Side = 2
		})
		local v1405

		if not isfolder("Cysense/Sounds/DamageSounds") then
			makefolder("Cysense/Sounds/DamageSounds")
		end

		local t61 = {}
		local t62 = {}

		for _, v in ipairs({
			{
				Name = "1nn",
				File = "1nn.mp3"
			},
			{
				Name = "67",
				File = "67.mp3"
			},
			{
				Name = "AmongUs",
				File = "AmongUs.mp3"
			},
			{
				Name = "Bameware",
				File = "Bameware.mp3"
			},
			{
				Name = "BatHit",
				File = "BatHit.mp3"
			},
			{
				Name = "Beep",
				File = "Beep.mp3"
			},
			{
				Name = "Bonk",
				File = "Bonk.mp3"
			},
			{
				Name = "Bow",
				File = "Bow.mp3"
			},
			{
				Name = "Bubble",
				File = "Bubble.mp3"
			},
			{
				Name = "Bubble2",
				File = "Bubble2.mp3"
			},
			{
				Name = "CSGO",
				File = "CSGO.mp3"
			},
			{
				Name = "Cod",
				File = "Cod.mp3"
			},
			{
				Name = "Fairy1",
				File = "Fairy1.mp3"
			},
			{
				Name = "Fairy2",
				File = "Fairy2.mp3"
			},
			{
				Name = "Fatality",
				File = "Fatality.mp3"
			},
			{
				Name = "Fatality2",
				File = "Fatality2.mp3"
			},
			{
				Name = "Hentai1",
				File = "Hentai1.mp3"
			},
			{
				Name = "Hentai2",
				File = "Hentai2.mp3"
			},
			{
				Name = "Hentai3",
				File = "Hentai3.mp3"
			},
			{
				Name = "Lazer",
				File = "Lazer.mp3"
			},
			{
				Name = "MarioCoins",
				File = "MarioCoins.mp3"
			},
			{
				Name = "MinecraftXP",
				File = "MinecraftXP.mp3"
			},
			{
				Name = "Neverlose",
				File = "Neverlose.mp3"
			},
			{
				Name = "OSU",
				File = "OSU.mp3"
			},
			{
				Name = "PubgPan",
				File = "PubgPan.mp3"
			},
			{
				Name = "Rifk7",
				File = "Rifk7.mp3"
			},
			{
				Name = "RustHeadshot",
				File = "RustHeadshot.mp3"
			},
			{
				Name = "Skeet",
				File = "Skeet.mp3"
			},
			{
				Name = "SpanishMoan",
				File = "SpanishMoan.mp3"
			},
			{
				Name = "StaryKrow",
				File = "StaryKrow.mp3"
			},
			{
				Name = "Steve",
				File = "Steve.mp3"
			},
			{
				Name = "TF2Crit",
				File = "TF2Crit.mp3"
			},
			{
				Name = "TF2Default",
				File = "TF2Default.mp3"
			},
			{
				Name = "Windows",
				File = "Windows.mp3"
			},
			{
				Name = "boolean",
				File = "boolean.ogg"
			},
			{
				Name = "disable",
				File = "disable.ogg"
			},
			{
				Name = "enable",
				File = "enable.ogg"
			},
			{
				Name = "keypress",
				File = "keypress.ogg"
			},
			{
				Name = "keyrelease",
				File = "keyrelease.ogg"
			},
			{
				Name = "lobby",
				File = "lobby.mp3"
			},
			{
				Name = "moan1",
				File = "moan1.ogg"
			},
			{
				Name = "moan2",
				File = "moan2.ogg"
			},
			{
				Name = "moan3",
				File = "moan3.ogg"
			},
			{
				Name = "moan4",
				File = "moan4.ogg"
			},
			{
				Name = "orthodox",
				File = "orthodox.ogg"
			},
			{
				Name = "pmsound",
				File = "pmsound.ogg"
			},
			{
				Name = "rifk",
				File = "rifk.ogg"
			},
			{
				Name = "scroll",
				File = "scroll.ogg"
			},
			{
				Name = "skeet",
				File = "skeet.ogg"
			},
			{
				Name = "swipein",
				File = "swipein.ogg"
			},
			{
				Name = "swipeout",
				File = "swipeout.ogg"
			},
			{
				Name = "uwu",
				File = "uwu.ogg"
			}
		}) do
			table.insert(t61, v.Name)
			table.insert(t62, v.File)
		end

		v1404:Toggle({
			Name = "Damage Sounds",
			Flag = "DamageSounds",
			Default = false
		})
		v1404:Searchbox({
			Name = "Effects",
			Flag = "DamageSound",
			Items = t61,
			Multi = false,
			Callback = function(p250)
				if p250 then
					t23.DamageSoundId = getcustomasset("Cysense/Sounds/DamageSounds/" .. t62[table.find(t61, p250)])
					v1405:SetText("Selected: " .. p250)
				else
					v1405:SetText("Selected: None")
				end
			end
		})

		local v1410 = v1404:Button()

		v1410:Add("Play Sound", function()
			local DamageSoundId = t23.DamageSoundId

			if not DamageSoundId then
				return u373:Notification("No sound selected.", "Select a sound to play.", 5)
			end

			local Sound = Instance.new("Sound", hui)

			Sound.SoundId = DamageSoundId
			Sound:Play()
			Sound.Ended:Connect(function()
				Sound:Destroy()
			end)
		end)
		v1405 = v1404:Label("Selected: None")

		for _, v in pairs(t62) do
			if not isfile("Cysense/Sounds/DamageSounds/" .. v) then
				t25.DamageSounds:SetVisibility(false)
				t25.DamageSound:SetVisibility(false)
				v1405:SetVisibility(false)
				v1410:SetVisibility(false)

				local v1415 = v1404:Button()

				v1415:Add("Download Damage Sounds", function()
					v1415:SetVisibility(false)

					local v1416 = v1404:Label("Downloading files...")

					for k, v2 in pairs(t62) do
						local v1419 = "Cysense/Sounds/DamageSounds/" .. v2

						v1416:SetText("Downloading: " .. v2 .. " - " .. k .. "/" .. #t62 .. "\n" .. v1419)
						task.wait(0.01)

						if not isfile(v1419) then
							writefile(v1419, game:HttpGet("https://github.com/cyerc/LuaFiles/raw/main/Sounds/" .. v2))
						end
					end

					task.wait(0.5)
					v1416:SetText("Download complete!")
					task.wait(0.5)
					v1416:SetVisibility(false)
					t25.DamageSounds:SetVisibility(true)
					t25.DamageSound:SetVisibility(true)
					v1410:SetVisibility(true)
				end)

				break
			end
		end
	end

	do
		local v1420

		v1420 = v386:Page({
			Name = "Players"
		}):Playerlist({
			Callback = function()
				table.foreach(v1420.Players, print)
				table.foreach(v1420.Players[1], warn)
			end
		})
		v1420:AddButton({
			Name = "Teleport",
			Callback = function(p251)
				if not HumanoidRootPart or not p251 then
					u373:Notification("Failed Teleporting", "Unknown reason.", 5)

					return
				end

				local Character2 = p251.Character

				if not Character2 then
					u373:Notification("Failed Teleporting", p251.DisplayName .. " (@" .. p251.Name .. "). has no Character model.", 5)

					return
				end

				local HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")

				if not HumanoidRootPart2 then
					u373:Notification("Failed Teleporting", p251.DisplayName .. " (@" .. p251.Name .. "). has no HumanoidRootPart.", 5)

					return
				end

				HumanoidRootPart.CFrame = HumanoidRootPart2.CFrame
				HumanoidRootPart.Velocity = Vector3.zero

				if v374.IsActive() then
					v374.RealCFrame = HumanoidRootPart2.CFrame
				end

				u373:Notification("Succesfully Teleported", "Teleported to " .. p251.DisplayName .. " (@" .. p251.Name .. ").", 5)
			end
		})
		v1420:AddButton({
			Name = "Spectate",
			Callback = function(p252)
				if not p252 then
					u373:Notification("Failed Spectating", "Unknown reason.", 5)

					return
				end

				local Character2 = p252.Character

				if not Character2 then
					u373:Notification("Failed Spectating", p252.DisplayName .. " (@" .. p252.Name .. "). has no Character model.", 5)

					return
				end

				local Humanoid2 = Character2:FindFirstChild("Humanoid")

				if not Humanoid2 then
					u373:Notification("Failed Spectating", p252.DisplayName .. " (@" .. p252.Name .. "). has no Humanoid.", 5)

					return
				end

				if CurrentCamera.CameraSubject == Humanoid2 then
					CurrentCamera.CameraSubject = Humanoid
					u373:Notification("Stopped spectating", "You are no longer spectating.", 5)
				else
					CurrentCamera.CameraSubject = Humanoid2
					u373:Notification("Player Spectating", "You are currently spectating " .. p252.DisplayName .. " (@" .. p252.Name .. ").", 5)
				end
			end
		})
		v1420:AddButton({
			Name = "Select as Target",
			Callback = function(p253)
				if t22:HasMaximumTargets() then
					t22:RemoveFromTargets(t22.Targets[1])
					u373:Notification("Target Removed", p253.DisplayName .. " (@" .. p253.Name .. ") has been removed from targets.", 5)

					return
				end

				if t22:IsTarget(p253) then
					t22:RemoveFromTargets(p253)
					u373:Notification("Target Removed", p253.DisplayName .. " (@" .. p253.Name .. ") has been removed from targets.", 5)
				else
					t22:AddToTargets(p253)
					u373:Notification("Target Added", p253.DisplayName .. " (@" .. p253.Name .. ") has been added to targets.", 5)
				end
			end
		})
		v1420:AddButton({
			Name = "Highlight",
			Callback = function(p254)
				if not p254 then
					u373:Notification("Highlight Failed", "Unknown reason.", 5)

					return
				end

				local Character2 = p254.Character

				if Character2 then
					local NewHighlight = Character2:FindFirstChild("NewHighlight")

					if not NewHighlight then
						Instance.new("Highlight", Character2).Name = "NewHighlight"
						u373:Notification("Highlight Added", p254.DisplayName .. " (@" .. p254.Name .. ") has been highlighted.", 5)

						return
					end

					NewHighlight:Destroy()
					u373:Notification("Highlight Removed", p254.DisplayName .. " (@" .. p254.Name .. ") has been unhighlighted.", 5)

					return
				end

				u373:Notification("Highlight Failed", p254.DisplayName .. " (@" .. p254.Name .. ") doesnt have a Character model.", 5)
			end
		})
	end

	do
		local v1427 = v386:Page({
			Name = "Shop",
			SubPages = true
		}):SubPage({
			Name = "Shop",
			Columns = 1
		}):Section({
			Name = "Shop",
			Side = 1
		})

		if t27.Dahood then
			local v1428

			v1427:Searchbox({
				Name = "Shop Items",
				Flag = "ShopItems",
				Items = {
					"AUG",
					"Camera",
					"Firework",
					"Flamethrower",
					"Flashbang",
					"Flowers",
					"Glock",
					"Grenade",
					"Flintlock",
					"Hair Glue",
					"Hamburger",
					"HeavyWeights",
					"Key",
					"Knife",
					"LMG",
					"LockPicker",
					"Money Gun",
					"Pencil",
					"PepperSpray",
					"Pizza",
					"Popcorn",
					"RPG",
					"Revolver",
					"Rifle",
					"Silencer",
					"Taco",
					"TacticalShotgun",
					"Taser",
					"TearGas",
					"Weights",
					"Whip"
				},
				Multi = true,
				Callback = function(p255)
					if next(p255) then
						v1428:SetText("Selected: " .. table.concat(p255, ", "))
					else
						v1428:SetText("Selected: None")
					end
				end
			})
			v1428 = v1427:Label("Selected: None")
			v1427:Toggle({
				Name = "Auto Buy",
				Flag = "AutoBuy",
				Default = false,
				Callback = function(p256)
					t25.IncludeAmmo:SetVisibility(p256)
					t24.AutoBuying = false
				end
			})
			v1427:Toggle({
				Name = "Include Ammo",
				Flag = "IncludeAmmo",
				Default = false,
				Visible = false
			})
			v1427:Toggle({
				Name = "Auto-Equip",
				Flag = "AutoEquip",
				Default = false,
				Callback = function(p257)
					local _, _, v1431 = t25.AutoEquipKeybind:Get()

					if v1431 ~= p257 then
						t25.AutoEquipKeybind:Press()
					end

					if not p257 then
						Humanoid:UnequipTools()
					end
				end
			}):Keybind({
				Flag = "AutoEquipKeybind",
				Mode = "Toggle",
				Default = "None",
				Callback = function(p258)
					if t26.AutoEquip ~= p258 then
						t25.AutoEquip:Set(p258)
					end
				end
			})

			local v1432 = v1427:Button()

			v1432:Add("Buy Item", function()
				if t24.AutoBuying or not t26.ShopItems then
					return
				end

				t24.AutoBuying = true
				Humanoid:UnequipTools()

				for _, shopItem in pairs(t26.ShopItems) do
					local v1435

					for _, child in pairs(Workspace.Ignored.Shop:GetChildren()) do
						if child:IsA("Model") then
							if child.Name:find(shopItem) then
								if not child.Name:find("Ammo") and child:FindFirstChild("Head") and child.Head.Transparency == 0 then
									v1435 = child

									break
								end
							end
						end
					end

					if v1435 then
						task.wait(0.1)
						t33.Teleport(v1435.Head.CFrame - Vector3.new(0, 10, 0))
						task.wait(0.3)
						fireclickdetector(v1435.ClickDetector)
					end
				end

				t24.AutoBuying = false
			end)
			v1432:Add("Buy Ammo", function()
				if t24.AutoBuying or not t26.ShopItems then
					return
				end

				t24.AutoBuying = true
				Humanoid:UnequipTools()

				for i = 1, t26.PurchaseAmount do
					local PurchaseAmount = t26.PurchaseAmount

					for _, shopItem in pairs(t26.ShopItems) do
						local v1442

						for _, child in pairs(Workspace.Ignored.Shop:GetChildren()) do
							if child:IsA("Model") then
								if child.Name:find(shopItem) then
									if child.Name:find("Ammo") and child:FindFirstChild("Head") and child.Head.Transparency == 0 then
										v1442 = child

										break
									end
								end
							end
						end

						if v1442 then
							task.wait(0.1)
							t33.Teleport(v1442.Head.CFrame - Vector3.new(0, 10, 0))
							task.wait(0.3)
							fireclickdetector(v1442.ClickDetector)
						end
					end

					if t26.PurchaseAmount ~= PurchaseAmount then
						break
					end
				end

				t24.AutoBuying = false
			end)
			v1427:Slider({
				Name = "Purchase Amount",
				Flag = "PurchaseAmount",
				Decimals = 1,
				Suffix = "x",
				Min = 1,
				Max = 10,
				Default = 1
			})
			v1427:Toggle({
				Name = "Auto Armor",
				Flag = "AutoArmor",
				Default = false,
				Callback = function(p259)
					t25.MinimumArmor:SetVisibility(p259)
				end
			})
			v1427:Slider({
				Name = "Minimum Armor Requirement",
				Flag = "MinimumArmor",
				Decimals = 1,
				Suffix = "",
				Min = 1,
				Max = 130,
				Default = 130,
				Visible = false
			})
			v1427:Toggle({
				Name = "Auto Fire Armor",
				Flag = "AutoFireArmor",
				Default = false
			})
			v1427:Slider({
				Name = "Minimum Fire Armor Requirement",
				Flag = "MinimumFireArmor",
				Decimals = 1,
				Suffix = "",
				Min = 1,
				Max = 200,
				Default = 200,
				Visible = false
			})
			v1427:Toggle({
				Name = "Auto Heal",
				Flag = "AutoHeal",
				Default = false,
				Callback = function(p260)
					t25.MinimumHealth:SetVisibility(p260)

					if not p260 then
						t24.AutoHeal = false

						if Character:FindFirstChild("[Hamburger]") then
							Humanoid:UnequipTools()
						end
					end
				end
			})
			v1427:Slider({
				Name = "Minimum Health Requirement",
				Flag = "MinimumHealth",
				Decimals = 1,
				Suffix = "",
				Min = 1,
				Max = 100,
				Default = 100,
				Visible = false
			})
			v1427:Toggle({
				Name = "Auto Mask",
				Flag = "AutoMask",
				Default = false
			})
		elseif not t27.Dahood then
			v1427:Label("[!] This section is unavailable in this game.")
		end
	end

	local v1445 = v386:Page({
		Name = "World",
		SubPages = true
	}):SubPage({
		Name = "World",
		Columns = 1
	}):Section({
		Name = "Lighting",
		Side = 1
	})

	do
		local GlobalShadows = Lighting.GlobalShadows

		v1445:Toggle({
			Name = "Global Shadows",
			Flag = "GlobalShadows",
			Default = false,
			Callback = function(p261)
				local GlobalShadows2 = p261 and t26.GlobalShadows

				Lighting.GlobalShadows = GlobalShadows2 or GlobalShadows
			end
		})
	end

	do
		local Brightness = Lighting.Brightness

		v1445:Toggle({
			Name = "Brightness",
			Flag = "BrightnessToggle",
			Default = false,
			Callback = function(p262)
				t25.Brightness:SetVisibility(p262)
				Lighting.Brightness = p262 and t26.Brightness or Brightness
			end
		})
		v1445:Slider({
			Name = "Brightness",
			Flag = "Brightness",
			Default = Brightness,
			Min = 0,
			Max = 10,
			Decimals = 0.1,
			Visible = false
		})
	end

	do
		local ClockTime = Lighting.ClockTime

		v1445:Toggle({
			Name = "Clock Time",
			Flag = "ClockTimeToggle",
			Default = false,
			Callback = function(p263)
				t25.ClockTime:SetVisibility(p263)
				Lighting.ClockTime = p263 and t26.ClockTime or ClockTime
			end
		})
		v1445:Slider({
			Name = "Clock Time",
			Flag = "ClockTime",
			Default = ClockTime,
			Min = 0,
			Max = 24,
			Decimals = 0.1,
			Visible = false
		})
	end

	do
		local FogColor = Lighting.FogColor
		local FogEnd = Lighting.FogEnd
		local FogStart = Lighting.FogStart

		v1445:Toggle({
			Name = "Fog",
			Flag = "FogToggle",
			Default = false,
			Callback = function(p264)
				t25.FogStart:SetVisibility(p264)
				t25.FogEnd:SetVisibility(p264)
				Lighting.FogColor = p264 and Color3.fromHex(t26.FogColor.Color) or FogColor
				Lighting.FogEnd = p264 and t26.FogEnd or FogEnd
				Lighting.FogStart = p264 and t26.FogStart or FogStart
			end
		}):Colorpicker({
			Name = "Fog Color",
			Flag = "FogColor",
			Default = FogColor
		})
		v1445:Slider({
			Name = "Fog Start",
			Flag = "FogStart",
			Default = FogStart,
			Min = 0,
			Max = 1000,
			Visible = false
		})
		v1445:Slider({
			Name = "Fog End",
			Flag = "FogEnd",
			Default = FogEnd,
			Min = 0,
			Max = 1000,
			Visible = false
		})
	end

	do
		local Ambient = Lighting.Ambient

		v1445:Toggle({
			Name = "Ambient",
			Flag = "AmbientColorToggle",
			Default = false,
			Callback = function(p265)
				Lighting.Ambient = p265 and Color3.fromHex(t26.AmbientColor.Color) or Ambient
			end
		}):Colorpicker({
			Name = "Ambient",
			Flag = "AmbientColor",
			Default = Ambient
		})
	end

	do
		local OutdoorAmbient = Lighting.OutdoorAmbient

		v1445:Toggle({
			Name = "Outdoor Ambient",
			Flag = "OutdoorAmbientToggle",
			Default = false,
			Callback = function(p266)
				Lighting.OutdoorAmbient = p266 and Color3.fromHex(t26.OutdoorAmbient.Color) or OutdoorAmbient
			end
		}):Colorpicker({
			Name = "Outdoor Ambient",
			Flag = "OutdoorAmbient",
			Default = OutdoorAmbient
		})
	end

	do
		local ShadowSoftness = Lighting.ShadowSoftness

		v1445:Toggle({
			Name = "Shadow Softness",
			Flag = "ShadowSoftnessToggle",
			Default = false,
			Callback = function(p267)
				t25.ShadowSoftness:SetVisibility(p267)
				Lighting.ShadowSoftness = p267 and t26.ShadowSoftness or ShadowSoftness
			end
		})
		v1445:Slider({
			Name = "Shadow Softness",
			Flag = "ShadowSoftness",
			Default = ShadowSoftness,
			Min = 0,
			Max = 1,
			Visible = false,
			Decimals = 0.1
		})
	end

	do
		local EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale

		v1445:Toggle({
			Name = "Environment Diffuse",
			Flag = "EnvironmentDiffuseToggle",
			Default = false,
			Callback = function(p268)
				t25.EnvironmentDiffuse:SetVisibility(p268)
				Lighting.EnvironmentDiffuseScale = p268 and t26.EnvironmentDiffuse or EnvironmentDiffuseScale
			end
		})
		v1445:Slider({
			Name = "Environment Diffuse",
			Flag = "EnvironmentDiffuse",
			Default = EnvironmentDiffuseScale,
			Min = 0,
			Max = 1,
			Visible = false,
			Decimals = 0.1
		})
	end

	do
		local EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale

		v1445:Toggle({
			Name = "Environment Specular",
			Flag = "EnvironmentSpecularToggle",
			Default = false,
			Callback = function(p269)
				t25.EnvironmentSpecular:SetVisibility(p269)
				Lighting.EnvironmentSpecularScale = p269 and t26.EnvironmentSpecular or EnvironmentSpecularScale
			end
		})
		v1445:Slider({
			Name = "Environment Specular",
			Flag = "EnvironmentSpecular",
			Default = EnvironmentSpecularScale,
			Min = 0,
			Max = 1,
			Visible = false,
			Decimals = 0.1
		})
	end

	do
		local GeographicLatitude = Lighting.GeographicLatitude

		v1445:Toggle({
			Name = "Geographic Latitude",
			Flag = "GeoLatitudeToggle",
			Default = false,
			Callback = function(p270)
				t25.GeoLatitude:SetVisibility(p270)
				Lighting.GeographicLatitude = p270 and t26.GeoLatitude or GeographicLatitude
			end
		})
		v1445:Slider({
			Name = "Geographic Latitude",
			Flag = "GeoLatitude",
			Default = GeographicLatitude,
			Min = -90,
			Max = 90,
			Visible = false,
			Decimals = 1
		})
	end

	if Lighting:FindFirstChild("Technology") then
		v1445:Dropdown({
			Name = "Lighting Technology",
			Flag = "LightingTech",
			Items = {
				"Compatibility",
				"Voxel",
				"ShadowMap",
				"Future",
				"Legacy"
			},
			Default = tostring(Lighting.Technology),
			Callback = function(p271)
				Lighting.Technology = Enum.Technology[p271]
			end
		})
	end

	do
		local ColorShift_Top = Lighting.ColorShift_Top

		v1445:Toggle({
			Name = "Colorshift",
			Flag = "ColorShiftToggle",
			Default = false,
			Callback = function(p272)
				Lighting.ColorShift_Top = p272 and Color3.fromHex(t26.ColorShift.Color) or ColorShift_Top
			end
		}):Colorpicker({
			Name = "Colorshift",
			Flag = "ColorShift",
			Default = ColorShift_Top
		})
	end

	do
		local ExposureCompensation = Lighting.ExposureCompensation

		v1445:Toggle({
			Name = "Exposure",
			Flag = "ExposureToggle",
			Default = false,
			Callback = function(p273)
				t25.Exposure:SetVisibility(p273)
				Lighting.ExposureCompensation = p273 and t26.Exposure or ExposureCompensation
			end
		})
		v1445:Slider({
			Name = "Exposure",
			Flag = "Exposure",
			Default = ExposureCompensation,
			Min = -5,
			Max = 5,
			Visible = false,
			Decimals = 0.1
		})
	end

	do
		local Sky = Lighting:FindFirstChild("Sky")
		local t63 = {
			Heaven = {
				Back = "rbxassetid://7951826533",
				Bottom = "rbxassetid://7951706908",
				Front = "rbxassetid://7951694757",
				Left = "rbxassetid://7951697216",
				Right = "rbxassetid://7951700251",
				Top = "rbxassetid://7951703855"
			},
			["Blue Space"] = {
				Back = "http://www.roblox.com/asset/?id=366731024",
				Bottom = "http://www.roblox.com/asset/?id=367147970",
				Front = "http://www.roblox.com/asset/?id=366731193",
				Left = "http://www.roblox.com/asset/?id=366731613",
				Right = "http://www.roblox.com/asset/?id=366731514",
				Top = "http://www.roblox.com/asset/?id=367149078"
			},
			Cloudy = {
				Back = "rbxassetid://246480323",
				Bottom = "rbxassetid://246480523",
				Front = "rbxassetid://246480105",
				Left = "rbxassetid://246480549",
				Right = "rbxassetid://246480565",
				Top = "rbxassetid://246480504"
			},
			["Dark Skies"] = {
				Back = "http://www.roblox.com/asset/?id=149397692",
				Bottom = "http://www.roblox.com/asset/?id=149397686",
				Front = "http://www.roblox.com/asset/?id=149397697",
				Left = "http://www.roblox.com/asset/?id=149397684",
				Right = "http://www.roblox.com/asset/?id=149397688",
				Top = "http://www.roblox.com/asset/?id=149397702"
			},
			Dawn = {
				Back = "rbxassetid://323479840",
				Bottom = "rbxassetid://323481190",
				Front = "rbxassetid://323480314",
				Left = "rbxassetid://323480786",
				Right = "rbxassetid://323480131",
				Top = "rbxassetid://323478865"
			},
			Dusk = {
				Back = "rbxassetid://9778108979",
				Bottom = "rbxassetid://9778110864",
				Front = "rbxassetid://9778101192",
				Left = "rbxassetid://9778103329",
				Right = "rbxassetid://9778104889",
				Top = "rbxassetid://9778106496"
			},
			Earth = {
				Back = "rbxassetid://15753305495",
				Bottom = "rbxassetid://15753362674",
				Front = "rbxassetid://15753305823",
				Left = "rbxassetid://15753310707",
				Right = "rbxassetid://15753304774",
				Top = "rbxassetid://15753304473"
			},
			Ethereal = {
				Back = "http://www.roblox.com/asset/?id=16823386986",
				Bottom = "http://www.roblox.com/asset/?id=16823388586",
				Front = "http://www.roblox.com/asset/?id=16823390254",
				Left = "http://www.roblox.com/asset/?id=16823392344",
				Right = "http://www.roblox.com/asset/?id=16823394120",
				Top = "http://www.roblox.com/asset/?id=16823395515"
			},
			["Night Light"] = {
				Back = "http://www.roblox.com/asset/?id=171447054",
				Bottom = "http://www.roblox.com/asset/?id=171447094",
				Front = "http://www.roblox.com/asset/?id=171447041",
				Left = "http://www.roblox.com/asset/?id=171447128",
				Right = "http://www.roblox.com/asset/?id=171447111",
				Top = "http://www.roblox.com/asset/?id=171447068"
			},
			["Pink Clouds"] = {
				Back = "http://www.roblox.com/asset/?id=271042516",
				Bottom = "http://www.roblox.com/asset/?id=271077243",
				Front = "http://www.roblox.com/asset/?id=271042556",
				Left = "http://www.roblox.com/asset/?id=271042310",
				Right = "http://www.roblox.com/asset/?id=271042467",
				Top = "http://www.roblox.com/asset/?id=271077958"
			},
			["Da Hood"] = {
				Back = "rbxassetid://600830446",
				Bottom = "rbxassetid://600831635",
				Front = "rbxassetid://600832720",
				Left = "rbxassetid://600886090",
				Right = "rbxassetid://600833862",
				Top = "rbxassetid://600835177"
			},
			["Black Storm"] = {
				Back = "rbxassetid://15502511288",
				Bottom = "rbxassetid://15502508460",
				Front = "rbxassetid://15502510289",
				Left = "rbxassetid://15502507918",
				Right = "rbxassetid://15502509398",
				Top = "rbxassetid://15502511911"
			},
			["Blue Space 2"] = {
				Back = "rbxassetid://15536110634",
				Bottom = "rbxassetid://15536112543",
				Front = "rbxassetid://15536116141",
				Left = "rbxassetid://15536114370",
				Right = "rbxassetid://15536118762",
				Top = "rbxassetid://15536117282"
			},
			Realistic = {
				Back = "rbxassetid://653719502",
				Bottom = "rbxassetid://653718790",
				Front = "rbxassetid://653719067",
				Left = "rbxassetid://653719190",
				Right = "rbxassetid://653718931",
				Top = "rbxassetid://653719321"
			},
			Stormy = {
				Back = "http://www.roblox.com/asset/?id=18703245834",
				Bottom = "http://www.roblox.com/asset/?id=18703243349",
				Front = "http://www.roblox.com/asset/?id=18703240532",
				Left = "http://www.roblox.com/asset/?id=18703237556",
				Right = "http://www.roblox.com/asset/?id=18703235430",
				Top = "http://www.roblox.com/asset/?id=18703232671"
			},
			Pink = {
				Back = "rbxassetid://12216109205",
				Bottom = "rbxassetid://12216109875",
				Front = "rbxassetid://12216109489",
				Left = "rbxassetid://12216110170",
				Right = "rbxassetid://12216110471",
				Top = "rbxassetid://12216108877"
			}
		}

		if Sky then
			t63.Game = {
				Back = Sky.SkyboxBk,
				Bottom = Sky.SkyboxDn,
				Front = Sky.SkyboxFt,
				Left = Sky.SkyboxLf,
				Right = Sky.SkyboxRt,
				Top = Sky.SkyboxUp
			}
		end

		v1445:Toggle({
			Name = "Custom Skybox",
			Flag = "CustomSkybox",
			Default = Sky,
			Callback = function(p274)
				t25.SkyboxSelection:SetVisibility(p274)

				if p274 then
					local Sky2 = Lighting:FindFirstChild("Sky") or Instance.new("Sky", Lighting)
					local v1464 = t63[t26.SkyboxSelection]

					Sky2.SkyboxFt = v1464.Front
					Sky2.SkyboxBk = v1464.Back
					Sky2.SkyboxLf = v1464.Left
					Sky2.SkyboxRt = v1464.Right
					Sky2.SkyboxUp = v1464.Top
					Sky2.SkyboxDn = v1464.Bottom
				else
					local Sky2 = Lighting:FindFirstChild("Sky")

					if Sky2 then
						Sky2:Destroy()
					end
				end
			end
		})

		local t64 = {}

		for k in pairs(t63) do
			table.insert(t64, k)
		end

		table.sort(t64)
		v1445:Dropdown({
			Name = "Skybox",
			Flag = "SkyboxSelection",
			Items = t64,
			Default = "Game",
			Visible = Sky or false,
			Callback = function(p275)
				if t26.CustomSkybox then
					local v1468 = t63[p275]
					local Sky2 = Lighting:FindFirstChild("Sky") or Instance.new("Sky", Lighting)

					Sky2.SkyboxFt = v1468.Front
					Sky2.SkyboxBk = v1468.Back
					Sky2.SkyboxLf = v1468.Left
					Sky2.SkyboxRt = v1468.Right
					Sky2.SkyboxUp = v1468.Top
					Sky2.SkyboxDn = v1468.Bottom
				end
			end
		})
	end

	do
		local v1470 = v386:Page({
			Name = "Waypoints",
			SubPages = true
		}):SubPage({
			Name = "Waypoints",
			Columns = 1
		}):Section({
			Name = "Waypoints",
			Side = 1
		})

		t23.Waypoints = {}

		local s15 = "Cysense/Locations/Waypoints.json"

		if not t29.IsJSONDecodable(s15) then
			writefile(s15, HttpService:JSONEncode({ {
				Name = "Zero",
				Position = {
					X = 0,
					Y = 0,
					Z = 0
				},
				Visible = false,
				Color = {
					R = 255,
					G = 228,
					B = 136
				}
			} }))
		end

		local data = HttpService:JSONDecode(readfile(s15))
		local t65 = {}
		local t66 = {}

		for _, v in ipairs(data) do
			table.insert(t65, v.Name)
			table.insert(t66, CFrame.new(v.Position.X, v.Position.Y, v.Position.Z))
		end

		local function v1477(p276, p277)
			local v1478 = t66[p276]
			local v1479 = t29.CreateDrawing(v30, {
				Color = p277.Color and Color3.fromRGB(p277.Color.R, p277.Color.G, p277.Color.B) or u373.Theme.Accent,
				Visible = false,
				Outline = true,
				Center = true,
				Size = 13,
				Font = 1
			})

			v1470:Toggle({
				Name = "Show Waypoint",
				Flag = "ShowWaypoint" .. p277.Name,
				Default = p277.Visible or false,
				Visible = false,
				Callback = function(p278)
					p277.Visible = p278
					writefile(s15, HttpService:JSONEncode(data))

					if p278 then
						t23.Waypoints[p277.Name] = {
							Position = v1478,
							Text = v1479
						}
					else
						t23.Waypoints[p277.Name] = nil
						v1479.Visible = false
					end
				end
			}):Colorpicker({
				Name = "Waypoint Color",
				Flag = "WaypointColor" .. p277.Name,
				Default = p277.Color and Color3.fromRGB(p277.Color.R, p277.Color.G, p277.Color.B) or u373.Theme.Accent,
				Alpha = 0,
				Callback = function(p279)
					v1479.Color = p279
					v1479.Transparency = (1 - t26["WaypointColor" .. p277.Name].Alpha) / 1
					p277.Color = {
						R = math.floor(p279.R * 255),
						G = math.floor(p279.G * 255),
						B = math.floor(p279.B * 255)
					}
					writefile(s15, HttpService:JSONEncode(data))
				end
			})

			return v1479
		end

		v1470:Searchbox({
			Name = "Location Themes",
			Flag = "LocationThemes",
			Items = t65,
			Multi = false,
			Default = t65[1],
			Callback = function(p280)
				for _, v in pairs(t65) do
					if t25["ShowWaypoint" .. v] then
						t25["ShowWaypoint" .. v]:SetVisibility(false)
					end
				end

				if p280 then
					if t25["ShowWaypoint" .. p280] then
						t25["ShowWaypoint" .. p280]:SetVisibility(true)
					end
				end
			end
		})

		local v1482 = v1470:Button()

		v1482:Add("Teleport", function()
			if t26.LocationThemes then
				HumanoidRootPart.CFrame = t66[table.find(t65, t26.LocationThemes)]

				if v374.IsActive() then
					v374.RealCFrame = t66[table.find(t65, t26.LocationThemes)]
				end
			else
				u373:Notification("Error", "Select a waypoint first.", 5)
			end
		end)
		v1482:Add("View", function()
			if not t26.LocationThemes and not t23.ViewPart then
				u373:Notification("Error", "Select a waypoint first.", 5)

				return
			end

			if t23.ViewPart then
				t23.ViewPart:Destroy()
				CurrentCamera.CameraSubject = Humanoid
			else
				t23.ViewPart = Instance.new("Part", Workspace)
				t23.ViewPart.CFrame = t66[table.find(t65, t26.LocationThemes)]
				t23.ViewPart.Anchored = true
				t23.ViewPart.Transparency = 1
				t23.ViewPart.Size = Vector3.new(0.001, 0.001, 0.001)
				CurrentCamera.CameraSubject = t23.ViewPart
			end
		end)
		v1470:Textbox({
			Name = "Waypoint Name",
			Default = "New Waypoint",
			Flag = "WaypointName",
			PlaceHolder = "Enter a name"
		})

		local s16 = "1000, 1000, 1000"

		v1470:Textbox({
			Name = "Waypoint Position",
			Default = "1000, 1000, 1000",
			Flag = "WaypointPosition",
			PlaceHolder = "Enter a Vector3 position",
			Finished = true,
			Callback = function(p281)
				if p281 == s16 then
					return
				end

				local parts = p281:gsub(" ", ""):split(",")

				for i = 1, 3 do
					local v1486 = tonumber(parts[i])

					parts[i] = v1486 and math.clamp(v1486, -2e9, 2e9) or 0
				end

				local value, v1488, v1489 = table.unpack(parts)
				local v1490 = value .. ", " .. v1488 .. ", " .. v1489

				s16 = v1490
				t25.WaypointPosition:Set(v1490)
			end
		})

		local v1491 = v1470:Button()

		v1491:Add("Add Waypoint", function()
			if not t26.WaypointName or t26.WaypointName == "" then
				return u373:Notification("Invalid Name", "Enter a valid waypoint name.", 5)
			end

			if table.find(t65, t26.WaypointName) then
				return u373:Notification("Invalid Name", "Waypoint with this name already exists.", 5)
			end

			local v1492, v1493, v1494 = t29.TableToNumbers(t26.WaypointPosition:split(", "))
			local t67 = {
				Name = t26.WaypointName,
				Position = {
					X = v1492,
					Y = v1493,
					Z = v1494
				},
				Visible = false,
				Color = {
					R = 255,
					G = 228,
					B = 136
				}
			}

			table.insert(data, t67)
			table.insert(t65, t26.WaypointName)
			table.insert(t66, CFrame.new(v1492, v1493, v1494))
			v1477(#data, t67)
			t25.LocationThemes:Add(t26.WaypointName)
			t25.LocationThemes:Set(t26.WaypointName)
			writefile(s15, HttpService:JSONEncode(data))
			u373:Notification("Success", "Waypoint '" .. t26.WaypointName .. "' added!", 5)
		end)
		v1491:Add("Delete Waypoint", function()
			local v1496 = table.find(t65, t26.LocationThemes)

			if not v1496 then
				return u373:Notification("Error", "Select a waypoint to delete.", 5)
			end

			local LocationThemes = t26.LocationThemes

			if t23.Waypoints[LocationThemes] then
				t23.Waypoints[LocationThemes].Text.Visible = false
				t23.Waypoints[LocationThemes] = nil
			end

			if t23.ViewPart then
				t23.ViewPart:Destroy()
				t23.ViewPart = nil
				CurrentCamera.CameraSubject = Humanoid
			end

			t25["ShowWaypoint" .. LocationThemes]:SetVisibility(false)
			table.remove(data, v1496)
			table.remove(t65, v1496)
			table.remove(t66, v1496)
			t25.LocationThemes:Remove(t26.LocationThemes)
			t25.LocationThemes:Set()
			writefile(s15, HttpService:JSONEncode(data))
			u373:Notification("Success", "Waypoint deleted successfully!", 5)
		end)
		v1470:Button():Add("Copy Coordinates", function()
			if not HumanoidRootPart then
				return u373:Notification("Error", "Could not retrieve coordinates", 5)
			end

			local Position = HumanoidRootPart.Position

			setclipboard(math.floor(Position.X) .. ", " .. math.floor(Position.Y) .. ", " .. math.floor(Position.Z))
			u373:Notification("Success", "Copied coordinates to clipboard!", 5)
		end)

		for i, v in ipairs(data) do
			v1477(i, v)
		end

		if t65[1] and t25["ShowWaypoint" .. t65[1]] then
			t25["ShowWaypoint" .. t65[1]]:SetVisibility(true)
		end
	end

	do
		local v1501 = v386:Page({
			Name = "Animations",
			SubPages = true
		}):SubPage({
			Name = "Animations",
			Columns = 1
		}):Section({
			Name = "Animations",
			Side = 1
		})
		local Animation
		local u1503

		if not t29.IsJSONDecodable("Cysense/Animations/Emotes.json") then
			writefile("Cysense/Animations/Emotes.json", HttpService:JSONEncode({
				{
					Name = "L Dance",
					ID = "rbxassetid://127750948928504"
				},
				{
					Name = "Cool Dance",
					ID = "rbxassetid://15609995579"
				},
				{
					Name = "Infinite Dab",
					ID = "rbxassetid://129470135909814"
				},
				{
					Name = "Sidekicks",
					ID = "rbxassetid://10370362157"
				},
				{
					Name = "Baby Dance",
					ID = "rbxassetid://10713983178"
				},
				{
					Name = "Rasputin",
					ID = "rbxassetid://114872820353992"
				},
				{
					Name = "Default Dance",
					ID = "rbxassetid://139771007418981"
				},
				{
					Name = "Sturdy",
					ID = "rbxassetid://122884053950359"
				},
				{
					Name = "Tuff Dance",
					ID = "rbxassetid://82293338535013"
				},
				{
					Name = "Gangnam Style",
					ID = "rbxassetid://101944868952743"
				},
				{
					Name = "Vibe",
					ID = "rbxassetid://128160283445749"
				},
				{
					Name = "Relaxed",
					ID = "rbxassetid://77840765435893"
				},
				{
					Name = "Absolute W",
					ID = "rbxassetid://122933004953259"
				},
				{
					Name = "Macarena",
					ID = "rbxassetid://86357978981014"
				},
				{
					Name = "Shattered",
					ID = "rbxassetid://79757971761739"
				},
				{
					Name = "Orbit",
					ID = "rbxassetid://109873544976020"
				},
				{
					Name = "Orange Justice",
					ID = "rbxassetid://78927657777256"
				},
				{
					Name = "Electro Swing",
					ID = "rbxassetid://73130892183726"
				},
				{
					Name = "Griddy",
					ID = "rbxassetid://121966805049108"
				},
				{
					Name = "Floss",
					ID = "rbxassetid://10714340543"
				},
				{
					Name = "Rampage",
					ID = "rbxassetid://139658061151500"
				},
				{
					Name = "Rambunctious",
					ID = "rbxassetid://85916053135662"
				}
			}))
		end

		local data = HttpService:JSONDecode(readfile("Cysense/Animations/Emotes.json"))
		local t68 = {}
		local t69 = {}

		for _, v in ipairs(data) do
			table.insert(t68, v.Name)
			table.insert(t69, v.ID)
		end

		v1501:Searchbox({
			Name = "Animation Presets",
			Flag = "AnimationPresets",
			Items = t68,
			Default = "L Dance",
			Callback = function(p282)
				if u1503 and u1503.IsPlaying then
					u1503:Stop()
					u1503 = nil
				end

				if Animation then
					if Animation:IsA("Animation") then
						Animation:Destroy()
					end
				end

				if p282 and t26.PlayAnimation then
					Animation = Instance.new("Animation", hui)
					Animation.AnimationId = t69[table.find(t68, p282)]
					u1503 = Humanoid:LoadAnimation(Animation)
					u1503:Play()
					u1503:AdjustSpeed(t26.AnimationSpeed / 100)
				end
			end
		})
		v1501:Toggle({
			Name = "Play",
			Flag = "PlayAnimation",
			Default = true,
			Callback = function(p283)
				local _, _, v1511 = t25.PlayAnimationKeybind:Get()

				if v1511 ~= p283 then
					t25.PlayAnimationKeybind:Press()
				end

				if u1503 and u1503.IsPlaying then
					u1503:Stop()
					u1503 = nil
				end

				if Animation and Animation:IsA("Animation") then
					Animation:Destroy()
				end

				if p283 then
					Animation = Instance.new("Animation", hui)
					Animation.AnimationId = t69[table.find(t68, t26.AnimationPresets)]
					u1503 = Humanoid:LoadAnimation(Animation)
					u1503:Play()
					u1503:AdjustSpeed(t26.AnimationSpeed / 100)
				end
			end
		}):Keybind({
			Flag = "PlayAnimationKeybind",
			Mode = "Toggle",
			Default = "None",
			Callback = function(p284)
				if t26.PlayAnimation ~= p284 then
					t25.PlayAnimation:Set(p284)
				end
			end
		})
		v1501:Slider({
			Name = "Speed",
			Flag = "AnimationSpeed",
			Default = 100,
			Min = 0,
			Max = 1000,
			Suffix = "%",
			Callback = function(p285)
				u1503:AdjustSpeed(p285 / 100)
			end
		})
		v1501:Textbox({
			Name = "Animation Name",
			Default = "New Animation",
			Flag = "AnimationName",
			PlaceHolder = "Enter a name"
		})
		v1501:Textbox({
			Name = "Animation ID",
			Default = "rbxassetid://74608751145756",
			Flag = "AnimationID",
			PlaceHolder = "Enter an asset ID"
		})

		local v1512 = v1501:Button()

		v1512:Add("Add Animation", function()
			local v1513 = table.find(t69, t29.GetAssetId(t26.AnimationID)) or table.find(t68, t26.AnimationName)

			if v1513 then
				return u373:Notification("Error", "This animation already exists with name '" .. t68[v1513] .. "'", 5)
			end

			table.insert(data, {
				Name = t26.AnimationName,
				ID = t29.GetAssetId(t26.AnimationID)
			})
			table.insert(t68, t26.AnimationName)
			table.insert(t69, t29.GetAssetId(t26.AnimationID))
			t25.AnimationPresets:Add(t26.AnimationName)
			t25.AnimationPresets:Set(t26.AnimationName)
			u373:Notification("Succes", "Animation '" .. t26.AnimationName .. "' has been added!", 5)
			writefile("Cysense/Animations/Emotes.json", HttpService:JSONEncode(data))
		end)
		v1512:Add("Delete Animation", function()
			local v1514 = table.find(t68, t26.AnimationPresets)

			if not v1514 then
				return u373:Notification("Error", "Select an animation to delete.", 5)
			end

			table.remove(data, v1514)
			table.remove(t69, v1514)
			table.remove(t68, v1514)
			t25.AnimationPresets:Remove(t26.AnimationPresets)
			t25.AnimationPresets:Set()
			u373:Notification("Succes", "Succesfully deleted " .. t26.AnimationPresets .. "!", 5)
			writefile("Cysense/Animations/Emotes.json", HttpService:JSONEncode(data))
		end)
	end

	local v1515 = v386:Page({
		Name = "Settings",
		SubPages = true
	})

	do
		local v1516 = v1515:SubPage({
			Name = "Game",
			Columns = 2
		})
		local v1517 = v1516:Section({
			Name = "Client",
			Side = 1
		})

		v1517:Dropdown({
			Name = "FPS",
			Flag = "FPS",
			Items = {
				"10",
				"15",
				"30",
				"60",
				"120",
				"144",
				"240",
				"1000",
				"99999"
			},
			Default = "99999",
			Callback = function(p286)
				setfpscap(tonumber(p286))
			end
		})
		v1517:Toggle({
			Name = "Rendering",
			Flag = "Rendering",
			Default = true,
			Callback = function(p287)
				local _, _, v1520 = t25.RenderingKeybind:Get()

				if v1520 ~= p287 then
					t25.RenderingKeybind:Press()
				end

				RunService:Set3dRenderingEnabled(p287)
			end
		}):Keybind({
			Flag = "RenderingKeybind",
			Mode = "Toggle",
			Default = "None",
			Callback = function(p288)
				if t26.Rendering ~= p288 then
					t25.Rendering:Set(p288)
				end
			end
		})
		t25.RenderingKeybind:Press()

		local v1521 = v1516:Section({
			Name = "Servers",
			Side = 1
		})
		local v1522 = v1521:Button()

		v1522:Add("Copy JobId", function()
			setclipboard(game.JobId)
		end)
		v1522:Add("Copy GameId", function()
			setclipboard(game.GameId)
		end)

		local v1523 = v1521:Button()

		v1523:Add("Rejoin", function()
			TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
		end)
		v1523:Add("Server hop", function()
			local data = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")).data

			TeleportService:TeleportToPlaceInstance(game.PlaceId, data[math.random(1, #data)].id, LocalPlayer)
		end)
		v1521:Button():Add("Copy Join Script", function()
			setclipboard("game:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. game.PlaceId .. ", \"" .. game.JobId .. "\", game.Players.LocalPlayer)")
		end)

		local v1525 = v1521:Label("Game: " .. s5 .. " - " .. game.PlaceId .. "\nPlayers: " .. #Players:GetPlayers() .. "/" .. Players.MaxPlayers)

		task.spawn(function()
			while task.wait(1) do
				v1525:SetText("Game: " .. s5 .. " - " .. game.PlaceId .. "\nPlayers: " .. #Players:GetPlayers() .. "/" .. Players.MaxPlayers)
			end
		end)

		local v1526 = v1516:Section({
			Name = "Music Player",
			Side = 2
		})
		local Sound = Instance.new("Sound", hui)

		if not isfolder("Cysense/Sounds/Music") then
			makefolder("Cysense/Sounds/Music")
		end

		local t70 = {}
		local t71 = {}

		for _, v in ipairs({
			{
				Name = "John 14 - Jesus Christ",
				File = "Jesus.mp3"
			},
			{
				Name = "Gangsta's Paradise - Coolio",
				File = "Gangstas_Paradise.mp3"
			},
			{
				Name = "Don't like - Chief Keef",
				File = "Dont_Like.mp3"
			},
			{
				Name = "Shook ones - Mobb Deep",
				File = "ShookOnes.mp3"
			},
			{
				Name = "Sonne - Rammstein",
				File = "Sonne.mp3"
			},
			{
				Name = "Cheri Lady - Modern Talking",
				File = "Cheri_Lady.mp3"
			},
			{
				Name = "miss me - TREFUEGO",
				File = "MissMe.mp3"
			},
			{
				Name = "Kills - Chief Keef",
				File = "Kills.mp3"
			},
			{
				Name = "PTSD - NEMZZZ",
				File = "PTSD.mp3"
			},
			{
				Name = "Anti Piracy - King Von",
				File = "KingVonAntiPiracy.mp3"
			}
		}) do
			table.insert(t70, v.Name)
			table.insert(t71, v.File)
		end

		v1526:Dropdown({
			Name = "Select Music",
			Flag = "SelectMusic",
			Items = t70,
			Default = "John 14 - Jesus Christ"
		})

		local v1532 = v1526:Button()

		v1532:Add("Play Music", function()
			if not t26.SelectMusic then
				return u373:Notification("Error", "Select the music you want to play first.", 5)
			end

			Sound.SoundId = getcustomasset("Cysense/Sounds/Music/" .. t71[table.find(t70, t26.SelectMusic)])
			Sound:Play()
		end)
		v1532:Add("Stop Music", function()
			Sound:Stop()
		end)
		v1526:Slider({
			Name = "Volume",
			Flag = "MusicVolume",
			Decimals = 1,
			Suffix = "%",
			Default = 50,
			Min = 0,
			Max = 100,
			Callback = function(p289)
				Sound.Volume = p289 / 10
			end
		})

		local v1533 = false

		for _, v in pairs(t71) do
			if not isfile("Cysense/Sounds/Music/" .. v) then
				v1533 = true

				break
			end
		end

		if v1533 then
			t25.SelectMusic:SetVisibility(false)
			v1532:SetVisibility(false)
			t25.MusicVolume:SetVisibility(false)

			local v1536 = v1526:Button()

			v1536:Add("Download Music", function()
				v1536:SetVisibility(false)

				local v1537 = v1526:Label("Downloading files...")

				for k, v in pairs(t71) do
					local v1540 = "Cysense/Sounds/Music/" .. v

					v1537:SetText("Downloading: " .. v .. " - " .. k .. "/" .. #t71 .. "\n" .. v1540)
					task.wait(0.01)

					if not isfile(v1540) then
						writefile(v1540, game:HttpGet("https://github.com/cyerc/LuaFiles/raw/main/Sounds/" .. v))
					end
				end

				task.wait(0.5)
				v1537:SetText("Download complete!")
				task.wait(0.5)
				v1537:SetVisibility(false)
				t25.SelectMusic:SetVisibility(true)
				v1532:SetVisibility(true)
				t25.MusicVolume:SetVisibility(true)
			end)
		end
	end

	do
		local v1541 = v1515:SubPage({
			Name = "UI",
			Columns = 3
		})
		local v1542 = v1541:Section({
			Name = "Themes",
			Side = 1
		})

		for k, v in u373.Theme, nil, nil do
			if typeof(v) == "Color3" then
				v1542:Label(k):Colorpicker({
					Name = k,
					Flag = k .. "Theme",
					Default = v,
					Callback = function(p290)
						u373.Theme[k] = p290
						u373:ChangeTheme(k, p290)
						u373:ChangeTheme(k .. "Transparency", t26[k .. "Theme"].Alpha)
					end
				})
			end
		end

		v1542:Textbox({
			Name = "Background ID",
			Default = "rbxassetid://0",
			Flag = "BackgroundID",
			PlaceHolder = "Enter an Asset ID",
			Finished = true,
			Callback = function(p291)
				u373:ChangeTheme("WindowBackground", t29.GetAssetId(p291))
			end
		})
		v1542:Searchbox({
			Name = "SearchboxThemes",
			Flag = "ThemesSearchBox",
			Items = {},
			Multi = false,
			Callback = function(p292)
				if p292 then
					t25.ThemeName:Set(p292:gsub(".json", ""))
				else
					t25.AutoTheme:Set(false)
				end

				if t26.AutoTheme then
					u373.Settings.AutoTheme = p292 and "Cysense/Themes/" .. p292 or ""
					writefile("Cysense/Settings.json", HttpService:JSONEncode(u373.Settings))
				end
			end
		})
		v1542:Toggle({
			Name = "Auto Theme",
			Flag = "AutoTheme",
			Default = t29.IsJSONDecodable(u373.Settings.AutoTheme),
			Callback = function(p293)
				if p293 then
					local ThemesSearchBox = t26.ThemesSearchBox or t26.ThemeName ~= "" and t26.ThemeName .. ".json"

					u373.Settings.AutoTheme = ThemesSearchBox and "Cysense/Themes/" .. ThemesSearchBox or ""
				else
					u373.Settings.AutoTheme = ""
				end

				writefile("Cysense/Settings.json", HttpService:JSONEncode(u373.Settings))
			end
		})
		v1542:Textbox({
			Name = "Theme name",
			Default = "",
			Flag = "ThemeName",
			Placeholder = "Enter text"
		})

		local v1546 = v1542:Button()

		v1546:Add("Save", function()
			local ok2, result2 = pcall(function()
				local v1549 = t26.ThemeName ~= "" and t26.ThemeName .. ".json"
				local v1550 = v1549 and u373.Folders.Themes .. "/" .. v1549

				v1550 = v1550 or ""

				if not v1549 then
					return u373:Notification("Error", "Theme name can't be empty", 5)
				end

				if isfile(v1550) then
					writefile(v1550, u373:GetTheme())
					u373:Notification("Success", "Saved Theme " .. v1549 .. " successfully", 5)
					u373:RefreshThemesList(t25.ThemesSearchBox)
				else
					writefile(v1550, u373:GetTheme())
					u373:Notification("Success", "Created Theme " .. v1549 .. " successfully", 5)
					u373:RefreshThemesList(t25.ThemesSearchBox)
				end
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		v1546:Add("Load", function()
			local ok2, result2 = pcall(function()
				local ThemesSearchBox = t26.ThemesSearchBox or t26.ThemeName ~= "" and t26.ThemeName .. ".json"
				local v1554 = ThemesSearchBox and u373.Folders.Themes .. "/" .. ThemesSearchBox or ""

				if not isfile(v1554) then
					return u373:Notification("Error", "Select a Theme to load", 5)
				end

				local v1555, v1556 = u373:LoadTheme(readfile(v1554))

				if v1555 then
					u373:Notification("Success", "Loaded Theme " .. ThemesSearchBox .. " successfully", 5)
					u373:ChangeTheme("WindowBackground", t29.GetAssetId(t26.BackgroundID))
				else
					u373:Notification("Error", "Failed to load Theme " .. ThemesSearchBox .. " report this to the devs:\n" .. v1556, 5)
				end
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)

		local v1557 = v1542:Button()

		v1557:Add("Delete", function()
			local ok2, result2 = pcall(function()
				local ThemesSearchBox = t26.ThemesSearchBox or t26.ThemeName ~= "" and t26.ThemeName .. ".json"

				if not isfile(ThemesSearchBox and u373.Folders.Themes .. "/" .. ThemesSearchBox or "") then
					return u373:Notification("Error", "Select a Theme to delete", 5)
				end

				u373:DeleteTheme(ThemesSearchBox)
				u373:Notification("Success", "Deleted Theme " .. ThemesSearchBox .. " successfully", 5)
				u373:RefreshThemesList(t25.ThemesSearchBox)
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		v1557:Add("Refresh", function()
			local ok2, result2 = pcall(function()
				u373:RefreshThemesList(t25.ThemesSearchBox)
				u373:Notification("Success", "Refreshed Themes list", 5)
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		u373:RefreshThemesList(t25.ThemesSearchBox)

		local v1563 = v1541:Section({
			Name = "Configs",
			Side = 2
		})

		v1563:Searchbox({
			Name = "SearchboxConfigs",
			Flag = "ConfigsSearchBox",
			Items = {},
			Multi = false,
			Callback = function(p294)
				if p294 then
					t25.ConfigName:Set(p294:gsub(".json", ""))
				else
					t25.AutoConfig:Set(false)
				end

				if t26.AutoConfig then
					u373.Settings.AutoConfig = p294 and "Cysense/Configs/" .. p294 or ""
					writefile("Cysense/Settings.json", HttpService:JSONEncode(u373.Settings))
				end
			end
		})
		v1563:Toggle({
			Name = "Auto Config",
			Flag = "AutoConfig",
			Default = t29.IsJSONDecodable(u373.Settings.AutoConfig),
			Callback = function(p295)
				if p295 then
					local ConfigsSearchBox = t26.ConfigsSearchBox or t26.ConfigName ~= "" and t26.ConfigName .. ".json"

					u373.Settings.AutoConfig = ConfigsSearchBox and "Cysense/Configs/" .. ConfigsSearchBox or ""
				else
					u373.Settings.AutoConfig = ""
				end

				writefile("Cysense/Settings.json", HttpService:JSONEncode(u373.Settings))
			end
		})
		v1563:Textbox({
			Name = "Config name",
			Default = "",
			Flag = "ConfigName",
			Placeholder = "Enter text"
		})

		local v1565 = v1563:Button()

		v1565:Add("Save", function()
			local ok2, result2 = pcall(function()
				local v1568 = t26.ConfigName ~= "" and t26.ConfigName .. ".json"
				local v1569 = v1568 and u373.Folders.Configs .. "/" .. v1568

				v1569 = v1569 or ""

				if not v1568 then
					return u373:Notification("Error", "Config name can't be empty", 5)
				end

				if isfile(v1569) then
					writefile(v1569, u373:GetConfig())
					u373:Notification("Success", "Saved config " .. v1568 .. " successfully", 5)
					u373:RefreshConfigsList(t25.ConfigsSearchBox)
				else
					writefile(v1569, u373:GetConfig())
					u373:Notification("Success", "Created config " .. v1568 .. " successfully", 5)
					u373:RefreshConfigsList(t25.ConfigsSearchBox)
				end
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		v1565:Add("Load", function()
			local ok2, result2 = pcall(function()
				local ConfigsSearchBox = t26.ConfigsSearchBox or t26.ConfigName ~= "" and t26.ConfigName .. ".json"
				local v1573 = ConfigsSearchBox and u373.Folders.Configs .. "/" .. ConfigsSearchBox or ""

				if not isfile(v1573) then
					return u373:Notification("Error", "Select a config to load", 5)
				end

				local v1574, v1575 = u373:LoadConfig(readfile(v1573))

				if v1574 then
					u373:Notification("Success", "Loaded config " .. ConfigsSearchBox .. " successfully", 5)
					u373:ChangeTheme("WindowBackground", t29.GetAssetId(t26.BackgroundID))
				else
					u373:Notification("Error", "Failed to load config " .. ConfigsSearchBox .. " report this to the devs:\n" .. v1575, 5)
				end
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)

		local v1576 = v1563:Button()

		v1576:Add("Delete", function()
			local ok2, result2 = pcall(function()
				local ConfigsSearchBox = t26.ConfigsSearchBox or t26.ConfigName ~= "" and t26.ConfigName .. ".json"
				local v1580 = ConfigsSearchBox and u373.Folders.Configs .. "/" .. ConfigsSearchBox

				if isfile(v1580 or "") then
					u373:DeleteConfig(ConfigsSearchBox)
					u373:Notification("Success", "Deleted config " .. ConfigsSearchBox .. " successfully", 5)
					u373:RefreshConfigsList(t25.ConfigsSearchBox)

					return
				end

				return u373:Notification("Error", "Select a config to delete", 5)
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		v1576:Add("Refresh", function()
			local ok2, result2 = pcall(function()
				u373:RefreshConfigsList(t25.ConfigsSearchBox)
				u373:Notification("Success", "Refreshed configs list", 5)
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		v1563:Textbox({
			Name = "Import Config",
			Default = "",
			Flag = "ImportConfig",
			Placeholder = "Enter Config"
		})

		local v1583 = v1563:Button()

		v1583:Add("Import", function()
			local ok2, result2 = pcall(function()
				if t26.ImportConfig == "" then
					return u373:Notification("Error", "Paste a config in the 'Import Config' textbox", 5)
				end

				local ok2, result2 = pcall(function()
					return HttpService:JSONDecode(t26.ImportConfig)
				end)

				if not ok2 then
					return u373:Notification("Error", "Invalid config format. Make sure you copied the config correctly\n" .. result2, 5)
				end

				local v1588 = u373.Folders.Configs .. "/" .. result2.ConfigName .. ".json"

				if isfile(v1588) then
					return u373:Notification("Error", "Config " .. result2.ConfigName .. ".json already exists, please delete the old one.", 5)
				end

				writefile(v1588, t26.ImportConfig)
				u373:Notification("Success", "Imported config " .. result2.ConfigName .. ".json successfully", 5)
				u373:RefreshConfigsList(t25.ConfigsSearchBox)
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		v1583:Add("Export", function()
			local ok2, result2 = pcall(function()
				local ConfigsSearchBox = t26.ConfigsSearchBox or t26.ConfigName ~= "" and t26.ConfigName .. ".json"
				local v1592 = ConfigsSearchBox and u373.Folders.Configs .. "/" .. ConfigsSearchBox or ""

				if not isfile(v1592) then
					return u373:Notification("Error", "Select a config to export", 5)
				end

				setclipboard(readfile(v1592))
				u373:Notification("Success", "Copied config " .. ConfigsSearchBox .. ".json successfully", 5)
			end)

			if not ok2 then
				u373:Notification("Error", result2, 5)
			end
		end)
		u373:RefreshConfigsList(t25.ConfigsSearchBox)

		local v1593 = v1541:Section({
			Name = "Settings",
			Side = 3
		})

		v1593:Toggle({
			Name = "Watermark",
			Flag = "Watermark",
			Default = false,
			Callback = function(p296)
				Cysense_2:SetVisibility(p296)
			end
		})
		t25.Watermark:Settings():Textbox({
			Name = "Watermark Text",
			Default = "{Script} | {Version} | {Game} | {Displayname} (@{Username})",
			Flag = "WatermarkTextbox",
			Placeholder = "Enter text",
			Finished = true,
			Callback = function(p297)
				local v1594 = tostring(math.floor(u373.Theme.Accent.R * 255))
				local v1595 = tostring(math.floor(u373.Theme.Accent.G * 255))
				local v1596 = tostring(math.floor(u373.Theme.Accent.B * 255))
				local v1597 = p297:gsub("{Script}", "<font color='rgb(" .. v1594 .. "," .. v1595 .. "," .. v1596 .. ")'>Cysense</font>"):gsub("{Version}", "<font color='rgb(" .. v1594 .. "," .. v1595 .. "," .. v1596 .. ")'>Developer</font>"):gsub("{Game}", "<font color='rgb(" .. v1594 .. "," .. v1595 .. "," .. v1596 .. ")'>" .. s5 .. "</font>"):gsub("{Username}", "<font color='rgb(" .. v1594 .. "," .. v1595 .. "," .. v1596 .. ")'>" .. LocalPlayer.Name .. "</font>"):gsub("{Displayname}", "<font color='rgb(" .. v1594 .. "," .. v1595 .. "," .. v1596 .. ")'>" .. LocalPlayer.DisplayName .. "</font>")

				Cysense_2:Set(v1597)
			end
		})
		v1593:Toggle({
			Name = "Keybind list",
			Flag = "KeybindList",
			Default = false,
			Callback = function(p298)
				v388:SetVisibility(p298)
			end
		})
		v1593:Slider({
			Name = "Fade time",
			Flag = "FadeTime",
			Default = u373.FadeSpeed,
			Min = 0,
			Max = 1,
			Decimals = 0.01,
			Callback = function(p299)
				u373.FadeSpeed = p299
			end
		})
		v1593:Slider({
			Name = "Tween time",
			Flag = "TweenTime",
			Default = u373.Tween.Time,
			Min = 0,
			Max = 1,
			Decimals = 0.01,
			Callback = function(p300)
				u373.Tween.Time = p300
			end
		})
		v1593:Dropdown({
			Name = "Tween style",
			Flag = "TweenStyle",
			Items = {
				"Linear",
				"Quad",
				"Quart",
				"Back",
				"Bounce",
				"Circular",
				"Cubic",
				"Elastic",
				"Exponential",
				"Sine",
				"Quint"
			},
			Default = "Cubic",
			Callback = function(p301)
				u373.Tween.Style = Enum.EasingStyle[p301]
			end
		})
		v1593:Dropdown({
			Name = "Tween direction",
			Flag = "TweenDirection",
			Items = {
				"In",
				"Out",
				"InOut"
			},
			Default = "Out",
			Callback = function(p302)
				u373.Tween.Direction = Enum.EasingDirection[p302]
			end
		})
		v1593:Label("UI Keybind"):Keybind({
			Name = "Menu keybind",
			Flag = "UIKeybind",
			Default = u373.MenuKeybind,
			Mode = "Toggle",
			Callback = function()
				u373.MenuKeybind = t26.UIKeybind.Key
			end
		})
	end

	do
		local AutoTheme = u373.Settings.AutoTheme
		local AutoConfig = u373.Settings.AutoConfig

		if t29.IsJSONDecodable(AutoConfig) then
			u373:LoadConfig(readfile(AutoConfig))
			t25.ConfigsSearchBox:Set(AutoConfig:gsub("Cysense/Configs/", ""))
		end

		if t29.IsJSONDecodable(AutoTheme) then
			u373:LoadTheme(readfile(AutoTheme))
			t25.ThemesSearchBox:Set(AutoTheme:gsub("Cysense/Themes/", ""))
		end
	end

	if not Cysense_.Offgrid then
		t30:AddWire(RunService.RenderStepped, function()
			if Cysense_.Blackout then
				return
			end

			local mouseLocation = not v363 and UserInputService:GetMouseLocation() or Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)
			local v1601 = t22.Targets[1]

			if t26.Triggerbot then
				local function v1602()
					local playerFromCharacter = mouse.Target and Players:GetPlayerFromCharacter(mouse.Target:FindFirstAncestorOfClass("Model"))
					local Parent = playerFromCharacter and mouse.Target.Parent
					local TriggerbotConditions = t26.TriggerbotConditions

					if not Parent or table.find(TriggerbotConditions, "Alive Check") and t33.IsKnocked(playerFromCharacter) or table.find(TriggerbotConditions, "Team Check") and playerFromCharacter.Team == LocalPlayer.Team or table.find(TriggerbotConditions, "Forcefield Check") and Parent:FindFirstChildOfClass("ForceField") or t26.TriggerbotToolOnly and not Character:FindFirstChildWhichIsA("Tool") then
						if t24.Triggerbotting then
							t24.Triggerbotting = false
							mouse1release()
						end

						return
					end

					t24.Triggerbotting = true
					mouse1press()
				end

				v1602()
			end

			if t26.RapidFire then
				t23.GunCooldowns = t23.GunCooldowns or {}

				for _, child in pairs(Character:GetChildren()) do
					if child:IsA("Tool") then
						local ShootingCooldown = child:FindFirstChild("ShootingCooldown")
						local ToleranceCooldown = child:FindFirstChild("ToleranceCooldown")

						if (ShootingCooldown or ToleranceCooldown) and not t23.GunCooldowns[child] then
							t23.GunCooldowns[child] = {
								Shooting = ShootingCooldown and ShootingCooldown.Value,
								Tolerance = ToleranceCooldown and ToleranceCooldown.Value
							}
						end

						if ShootingCooldown and t23.GunCooldowns[child] then
							local LocalScript = child:FindFirstChildWhichIsA("LocalScript")
							local value = t23.GunCooldowns[child].Shooting * (1 - t26.FireRate / 100)

							if ShootingCooldown.Value == value then
								if not LocalScript.Enabled then
									LocalScript.Enabled = true
								end
							else
								ShootingCooldown.Value = value
								RunService.RenderStepped:Wait()
								LocalScript.Enabled = false
							end
						end

						if ToleranceCooldown and t23.GunCooldowns[child] then
							ToleranceCooldown.Value = t23.GunCooldowns[child].Tolerance * (1 - t26.FireRate / 100)
						end
					end
				end
			end

			if t26.AutoReload then
				local function v1612()
					if Character then
						if (not t26.AutoStomp or not t33.CanStomp(v1601)) and (not t26.AutoGrab or not t33.CanGrab(v1601)) then
							local BodyEffects = Character:FindFirstChild("BodyEffects")

							if not BodyEffects or BodyEffects.Reload.Value or BodyEffects.SDeath.Value then
								return
							end

							for _, child in pairs(Character:GetChildren()) do
								if child:FindFirstChild("Ammo") and child.Ammo.Value <= 0 then
									ReplicatedStorage.MainEvent:FireServer("Reload", child)

									break
								end
							end

							return
						end
					end
				end

				v1612()
			end

			if t26.Visualize then
				local SpoofedCFrame = v374.IsActive() and v374.SpoofedCFrame or HumanoidRootPart.CFrame

				if t26.VisualizerCharacter then
					v374.Visualizer.HumanoidRootPart.CFrame = SpoofedCFrame
				end

				local v1617, v1618 = CurrentCamera:WorldToViewportPoint(SpoofedCFrame.Position)

				if v1618 then
					local vector2 = Vector2.new(v1617.X, v1617.Y)

					if t26.VisualizerDot then
						t35.VisualizerDot.Visible = true
						t35.VisualizerDot.Position = vector2
					end

					if t26.VisualizerTracer then
						t35.VisualizerTracer.Visible = true
						t35.VisualizerTracer.From = mouseLocation
						t35.VisualizerTracer.To = vector2
					end
				else
					t35.VisualizerDot.Visible = false
					t35.VisualizerTracer.Visible = false
				end
			end

			if t26.WalkSpeed then
				Humanoid.WalkSpeed = t26.WalkSpeedSlider
			end

			if t26.JumpPower then
				Humanoid.JumpPower = t26.JumpPowerPower
				Humanoid.UseJumpPower = true
			end

			if t26.AntiStomp and t33.CanGrab(LocalPlayer) then
				Humanoid.Health = 0
			end

			if t26.SpamStomp then
				ReplicatedStorage.MainEvent:FireServer("Stomp", false)
			end

			if t26.AutoDropCash then
				ReplicatedStorage.MainEvent:FireServer("DropMoney", t26.CashAmount)
			end

			for k, waypoint in pairs(t23.Waypoints) do
				local v1622, v1623 = CurrentCamera:WorldToViewportPoint(waypoint.Position.Position)

				waypoint.Text.Visible = v1623

				if v1623 then
					local Magnitude = (CurrentCamera.CFrame.Position - waypoint.Position.Position).Magnitude

					waypoint.Text.Position = Vector2.new(v1622.X, v1622.Y)
					waypoint.Text.Text = k .. " [" .. math.floor(Magnitude) .. "m]"
				end
			end

			if t26.AntiVoid then
				Workspace.FallenPartsDestroyHeight = (0/0)
			end

			if t26.GlobalShadows then
				Lighting.GlobalShadows = t26.GlobalShadows
			end

			if t26.BrightnessToggle then
				Lighting.Brightness = t26.Brightness
			end

			if t26.ClockTimeToggle then
				Lighting.ClockTime = t26.ClockTime
			end

			if t26.FogToggle then
				Lighting.FogColor = Color3.fromHex(t26.FogColor.Color)
				Lighting.FogEnd = t26.FogEnd
				Lighting.FogStart = t26.FogStart
			end

			if t26.AmbientColorToggle then
				Lighting.Ambient = Color3.fromHex(t26.AmbientColor.Color)
			end

			if t26.OutdoorAmbientToggle then
				Lighting.OutdoorAmbient = Color3.fromHex(t26.OutdoorAmbient.Color)
			end

			if t26.ShadowSoftnessToggle then
				Lighting.ShadowSoftness = t26.ShadowSoftness
			end

			if t26.EnvironmentDiffuseToggle then
				Lighting.EnvironmentDiffuseScale = t26.EnvironmentDiffuse
			end

			if t26.EnvironmentSpecularToggle then
				Lighting.EnvironmentSpecularScale = t26.EnvironmentSpecular
			end

			if t26.GeoLatitudeToggle then
				Lighting.GeographicLatitude = t26.GeoLatitude
			end

			if t26.ColorShiftToggle then
				Lighting.ColorShift_Top = Color3.fromHex(t26.ColorShift.Color)
			end

			if t26.ExposureToggle then
				Lighting.ExposureCompensation = t26.Exposure
			end

			if t26.TargetAutoSelect then
				if t22:HasMaximumTargets() then
					t22:RemoveFromTargets(t22.Targets[1])
				end

				t22:AddToTargets(t22:GetClosestCandidate())
				v1601 = t22.Targets[1]
			end

			if t26.MultiSelect and t26.PrioritizeClosestTarget then
				t22:SkipToTarget(t22:GetClosestTarget())
			end

			if t26.TargetFOV then
				t35.TargetFOV.Position = mouseLocation
			end

			if v1601 then
				local function v1625()
					local Character2 = v1601.Character

					if not Character2 then
						return
					end

					local HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")
					local Humanoid2 = Character2:FindFirstChildOfClass("Humanoid")

					if not HumanoidRootPart2 or not Humanoid2 then
						return
					end

					local VelocityResolver = t26.VelocityResolver and t33.ResolveVelocity(HumanoidRootPart2) or HumanoidRootPart2.Velocity

					if t26.Aimbot then
						local AimbotBodyPart = t26.AimbotBodyPart and Character2:FindFirstChild(t26.AimbotBodyPart) or HumanoidRootPart2
						local v1631 = AimbotBodyPart.Position + VelocityResolver * (t26.AimbotPrediction / 100)
						local v1632 = (100 - t26.AimbotSmoothness) / 100

						CurrentCamera.CFrame = CurrentCamera.CFrame:Lerp(CFrame.new(CurrentCamera.CFrame.Position, Vector3.new(v1631.X, AimbotBodyPart.Position.Y, v1631.Z)), v1632)
					end
				end

				v1625()
			end

			if t26.TargetTracer or t26.TargetHighlight then
				for k, target in pairs(t22.Targets) do
					local Character2 = target.Character

					if Character2 then
						if t26.TargetHighlight then
							local TargetHighlight = Character2:FindFirstChild("TargetHighlight") or Instance.new("Highlight", Character2)

							TargetHighlight.Name = "TargetHighlight"
							TargetHighlight.OutlineTransparency = 0

							if t26.MultiSelect and k == 1 then
								TargetHighlight.OutlineColor = Color3.fromHex(t26.MainTargetHighlightColor.Color)
								TargetHighlight.FillColor = Color3.fromHex(t26.MainTargetHighlightColor.Color)
							else
								TargetHighlight.OutlineColor = Color3.fromHex(t26.TargetHighlightColor.Color)
								TargetHighlight.FillColor = Color3.fromHex(t26.TargetHighlightColor.Color)
							end
						end

						if t26.TargetTracer then
							local HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")
							local Tracer = t22.Drawings[target].Tracer

							if HumanoidRootPart2 then
								local v1639, v1640 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart2.Position)

								Tracer.Visible = v1640

								if v1640 then
									Tracer.From = mouseLocation
									Tracer.To = Vector2.new(v1639.X, v1639.Y)

									if t26.MultiSelect and k == 1 then
										Tracer.Color = Color3.fromHex(t26.MainTargetTracerColor.Color)
									else
										Tracer.Color = Color3.fromHex(t26.TargetTracerColor.Color)
									end
								end
							else
								Tracer.Visible = false
							end
						end
					end
				end
			end

			if t26.FieldOfView then
				CurrentCamera.FieldOfView = t26.FieldOfViewSlider
			end

			if t26.VerticalScale then
				CurrentCamera.CFrame *= CFrame.new(0, 0, 0, 1, 0, 0, 0, t26.VerticalScaleSlider, 0, 0, 0, 1)
			end

			if t26.HorizontalScale then
				CurrentCamera.CFrame *= CFrame.new(0, 0, 0, t26.HorizontalScaleSlider, 0, 0, 0, 1, 0, 0, 0, 1)
			end

			if t26.Esp then
				for k, v in pairs(t31.Players.Cache) do
					if k ~= LocalPlayer or t26.SelfEsp then
						local Character2 = k.Character
						local HumanoidRootPart2 = Character2 and Character2:FindFirstChild("HumanoidRootPart")
						local Position = HumanoidRootPart2 and HumanoidRootPart2.Position
						local Drawings = v.Drawings

						if HumanoidRootPart2 then
							local v1647, v1648 = CurrentCamera:WorldToViewportPoint(Position)

							if v1648 then
								local RightVector = CurrentCamera.CFrame.RightVector
								local v1650 = CurrentCamera:WorldToViewportPoint(Position + RightVector).X - CurrentCamera:WorldToViewportPoint(Position - RightVector).X
								local vector2 = Vector2.new(v1650 * 2, v1650 * 3)
								local vector22 = Vector2.new(v1647.X - vector2.X * 0.5, v1647.Y - vector2.Y * 0.4)

								if t26.ShowBoxes then
									local BoxInline = Drawings.BoxInline

									BoxInline.Size = vector2
									BoxInline.Position = vector22
									BoxInline.Visible = true

									local BoxOutline = Drawings.BoxOutline

									BoxOutline.Size = vector2 + Vector2.new(2, 2)
									BoxOutline.Position = vector22 - Vector2.new(1, 1)
									BoxOutline.Visible = true
								end

								if t26.ShowNames then
									local Name = Drawings.Name
									local Magnitude = (CurrentCamera.CFrame.Position - HumanoidRootPart2.Position).Magnitude

									Name.Visible = true
									Name.Position = Vector2.new(vector22.X + vector2.X / 2, vector22.Y - 16)
									Name.Text = t26.ShowNamesText:gsub("{Script}", "Cysense"):gsub("{Version}", "Developer"):gsub("{Game}", s5):gsub("{Username}", k.Name):gsub("{Displayname}", k.DisplayName):gsub("{Distance}", math.floor(Magnitude))
								end

								if t26.ShowWeapon then
									local Weapon = Drawings.Weapon
									local Tool = Character2:FindFirstChildWhichIsA("Tool")

									Weapon.Visible = true
									Weapon.Position = Vector2.new(vector22.X + vector2.X / 2, vector22.Y + vector2.Y + 5)
									Weapon.Text = Tool and "[" .. Tool.Name:gsub("[%[%]]", "") .. "]" or "[None]"
								end

								if t26.ShowHealth then
									local Health = Drawings.Health
									local Humanoid2 = Character2:FindFirstChildOfClass("Humanoid")

									Health.Visible = true
									Health.Position = Vector2.new(vector22.X - 16, vector22.Y + vector2.Y / 2)
									Health.Text = Humanoid2 and tostring(math.floor(Humanoid2.Health)) or "0"
								end
							else
								for _, Drawing_ in pairs(Drawings) do
									Drawing_.Visible = false
								end
							end
						else
							for _, Drawing_ in pairs(Drawings) do
								Drawing_.Visible = false
							end
						end
					end
				end
			end

			if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
				t23.HoldingMouseButton = tick()
			end
		end)
		t30:AddWire(RunService.Heartbeat, function(p303)
			if Cysense_.Blackout then
				return
			end

			local v1665 = t22.Targets[1]

			if t26.Speed and not t26.Fly and not t33.IsKnocked(LocalPlayer) and HumanoidRootPart and Humanoid then
				HumanoidRootPart.CFrame += Humanoid.MoveDirection * t26.SpeedSlider * p303
			end

			if t26.Fly and (not t26.Strafe or not v1665 or v374.IsActive()) and not t33.IsKnocked(LocalPlayer) then
				local vector3 = Vector3.zero

				if not UserInputService:GetFocusedTextBox() then
					vector3 = Vector3.new(UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or UserInputService:IsKeyDown(Enum.KeyCode.A) and -1 or 0, 0, UserInputService:IsKeyDown(Enum.KeyCode.S) and 1 or UserInputService:IsKeyDown(Enum.KeyCode.W) and -1 or 0)
				end

				Humanoid.PlatformStand = true
				HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position) * CurrentCamera.CFrame.Rotation * CFrame.new(vector3 * t26.FlySpeed * p303)
				HumanoidRootPart.Velocity = Vector3.zero
			end

			if t26.Csync and not t24.BuyingItem and not t24.AutoBuying then
				local v1667, v1668, v1669, v1670, v1671, v1672 = t29.TableToNumbers(t26.CsyncRadiusTextbox:split(", "))
				local v1673, v1674, v1675, v1676, v1677, v1678 = t29.TableToNumbers(t26.CsyncRotation:split(", "))

				v374.SpoofedCFrame = (HumanoidRootPart.CFrame + Vector3.new(math.random(v1667, v1670), math.random(v1668, v1671), math.random(v1669, v1672))) * CFrame.Angles(math.random(v1673, v1676), math.random(v1674, v1677), math.random(v1675, v1678))
			end

			if t26.AutoBuy and t26.ShopItems then
				for _, shopItem in pairs(t26.ShopItems) do
					if not t26.ShopItems or t24.AutoHeal or t24.AutoBuying or t24.BuyingItem then
						break
					end

					if not Character:FindFirstChild("[" .. shopItem .. "]") then
						if not LocalPlayer.Backpack:FindFirstChild("[" .. shopItem .. "]") then
							task.spawn(function()
								t24.AutoBuying = true
								Humanoid:UnequipTools()

								for _, child in pairs(Workspace.Ignored.Shop:GetChildren()) do
									if child:IsA("Model") then
										if child.Name:find(shopItem) then
											if not child.Name:find("Ammo") and child:FindFirstChild("Head") and child.Head.Transparency == 0 then
												v374.SpoofedCFrame = child.Head.CFrame - Vector3.new(0, 10, 0)
												task.wait(0.3)
												fireclickdetector(child.ClickDetector)

												break
											end
										end
									end
								end

								t24.AutoBuying = false
							end)

							continue
						end
					end

					if t26.IncludeAmmo then
						if LocalPlayer.DataFolder.Inventory:FindFirstChild("[" .. shopItem .. "]") and LocalPlayer.DataFolder.Inventory["[" .. shopItem .. "]"].Value == "0" then
							task.spawn(function()
								t24.AutoBuying = true
								Humanoid:UnequipTools()

								for _, child in pairs(Workspace.Ignored.Shop:GetChildren()) do
									if child:IsA("Model") then
										if child.Name:find(shopItem) then
											if child.Name:find("Ammo") and child:FindFirstChild("Head") and child.Head.Transparency == 0 then
												v374.SpoofedCFrame = child.Head.CFrame - Vector3.new(0, 10, 0)
												task.wait(0.3)
												fireclickdetector(child.ClickDetector)

												break
											end
										end
									end
								end

								t24.AutoBuying = false
							end)
						end
					end
				end
			end

			if t26.AutoEquip and t26.ShopItems and not t24.AutoBuying then
				if not t24.BuyingItem and not t24.Clicking then
					for _, shopItem in pairs(t26.ShopItems) do
						local v1687 = LocalPlayer.Backpack:FindFirstChild("[" .. shopItem .. "]")

						if v1687 then
							v1687.Parent = Character
						end
					end
				end
			end

			local function v1688()
				if t26.AutoArmor and not t24.BuyingItem then
					if Character:FindFirstChild("BodyEffects") and Character.BodyEffects.Armor.Value < t26.MinimumArmor then
						t33.BuyItem("[High-Medium Armor] - $2589")

						return
					end
				end

				if t26.AutoFireArmor and not t24.BuyingItem then
					local BodyEffects = Character:FindFirstChild("BodyEffects")

					if BodyEffects and BodyEffects.FireArmor.Value < t26.MinimumFireArmor then
						t33.BuyItem("[Fire Armor] - $2701")

						return
					end
				end

				if t26.AutoHeal and not t24.BuyingItem then
					local Hamburger = Character:FindFirstChild("[Hamburger]") or LocalPlayer.Backpack:FindFirstChild("[Hamburger]")

					if not Hamburger then
						t33.BuyItem("[Hamburger] - $6")

						return
					end

					if Humanoid.Health < t26.MinimumHealth and not t33.IsKnocked(LocalPlayer) then
						t24.AutoHeal = true
						Hamburger.Parent = Character
						Hamburger:Activate()

						local v1691, v1692, v1693, v1694, v1695, v1696 = t29.TableToNumbers(t26.StrafeIdleRadius:split(", "))

						v374.SpoofedCFrame = t22.Targets[1] and t26.Strafe and t26.IdleResolver and CFrame.new(math.random(v1691, v1694), math.random(v1692, v1695), math.random(v1693, v1696)) or CFrame.new(t29.GetRandomOffset3(10000))

						return
					end

					if t24.AutoHeal then
						t24.AutoHeal = false
						Hamburger.Parent = LocalPlayer.Backpack
					end
				end

				if t26.AutoMask and not t24.BuyingItem then
					local Mask = Character:FindFirstChild("[Mask]") or LocalPlayer.Backpack:FindFirstChild("[Mask]")

					if not Mask then
						t33.BuyItem("[Paintball Mask] - $68")

						return
					end

					if not Character:FindFirstChild("In-gameMask") then
						t24.AutoMask = true
						Mask.Parent = Character
						Mask:Activate()

						return
					end

					if t24.AutoMask then
						t24.AutoMask = false
						Mask.Parent = LocalPlayer.Backpack
					end
				end
			end

			v1688()

			if v1665 then
				for _, target in ipairs(t22.Targets) do
					local Character2 = target.Character

					if Character2 and t33.GetTorso(Character2) then
						if not t26.AutoBag or t26.Strafe or t26.Fling or t26.AutoShoot or t26.AutoKnife or Character2:FindFirstChild("Christmas_Sock") or t33.IsKnocked(target) then
							if not t26.AutoStomp and not t26.AutoGrab and not t33.IsKnocked(target) then
								t22:SkipToTarget(target)

								break
							end
						else
							t22:SkipToTarget(target)

							break
						end
					end
				end

				local function v1701()
					local Character2 = v1665.Character

					if not Character2 then
						t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Waiting for Character Model.\nCysense.cc"

						return
					end

					local BuyingItem = t24.BuyingItem or t24.AutoBuying or t24.AutoHeal
					local v1704 = t33.GetTorso(Character2)
					local HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")

					if not HumanoidRootPart2 or not v1704 then
						if t26.Strafe and t26.StrafeIdleResolver and not BuyingItem then
							local v1706, v1707, v1708, v1709, v1710, v1711 = t29.TableToNumbers(t26.StrafeIdleRadius:split(", "))

							t33.Teleport(CFrame.new(math.random(v1706, v1709), math.random(v1707, v1710), math.random(v1708, v1711)))
						end

						t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Waiting for HumanoidRootPart.\nCysense.cc"

						return
					end

					local ResolvedVelocity = t26.VelocityResolver and t33.ResolvedVelocity or HumanoidRootPart2.Velocity
					local v1713 = t33.IsKnocked(v1665)
					local ForceField = Character2:FindFirstChildOfClass("ForceField")
					local Head = Character2:FindFirstChild("Head")

					if t26.AutoShoot and Head and not v1713 then
						if not ForceField then
							t33.ShootGun(Head, HumanoidRootPart2.Position + ResolvedVelocity * (t26.ShootPrediction / 100))
						end
					end

					if t26.TargetSpectate then
						CurrentCamera.CameraSubject = Character2
					end

					if BuyingItem then
						return
					end

					if t26.AutoGrab and t33.CanGrab(v1665) then
						if t28.CanHook then
							t33.Teleport(v1704.CFrame)
							sethiddenproperty(HumanoidRootPart, "PhysicsRepRootPart", v1704)
						else
							if not t24.RepositioningTargetRoot then
								t24.RepositioningTargetRoot = true
								task.spawn(function()
									task.wait(0.5)
									t24.RepositioningTargetRoot = false
								end)
								HumanoidRootPart2.Position = v1704.Position
							end

							t33.Teleport(CFrame.new(HumanoidRootPart2.Position + Vector3.new(0, 2.5, 0)))
						end

						if not t24.Grabbing then
							ReplicatedStorage.MainEvent:FireServer("Grabbing", false)
							t24.Grabbing = true
							task.spawn(function()
								task.wait(0.2)
								t24.Grabbing = false
							end)
						end

						t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Grabbing.\nCysense.cc"

						return
					end

					if t26.AutoStomp then
						if t33.CanStomp(v1665) then
							if t28.CanHook then
								t33.Teleport(v1704.CFrame)
								sethiddenproperty(HumanoidRootPart, "PhysicsRepRootPart", v1704)
							else
								if not t24.RepositioningTargetRoot then
									t24.RepositioningTargetRoot = true
									task.spawn(function()
										task.wait(0.5)
										t24.RepositioningTargetRoot = false
									end)
									HumanoidRootPart2.Position = v1704.Position
								end

								t33.Teleport(CFrame.new(HumanoidRootPart2.Position + Vector3.new(0, 2.5, 0)))
							end

							ReplicatedStorage.MainEvent:FireServer("Stomp", false)
							t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Stomping.\nCysense.cc"

							return
						end
					end

					if t26.AutoBag then
						local BrownBag = Character:FindFirstChild("[BrownBag]") or LocalPlayer.Backpack:FindFirstChild("[BrownBag]")

						if not BrownBag then
							t33.BuyItem("[BrownBag] - $28")

							return
						end

						if not Character2:FindFirstChild("Christmas_Sock") and not t33.IsKnocked(v1665) then
							BrownBag.Parent = Character
							BrownBag:Activate()
							t33.Teleport(v1704.CFrame * CFrame.new(0, 0, 3.5))
							sethiddenproperty(HumanoidRootPart, "PhysicsRepRootPart", v1704)
							t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Bagging.\nCysense.cc"

							return
						end

						if BrownBag.Parent == Character then
							BrownBag.Parent = LocalPlayer.Backpack
						end
					end

					if t26.AutoKnife then
						local Knife = Character:FindFirstChild("[Knife]") or LocalPlayer.Backpack:FindFirstChild("[Knife]")

						if not Knife then
							t33.BuyItem("[Knife] - $169")

							return
						end

						if not v1713 and not ForceField then
							Knife.Parent = Character
							Knife:Activate()
							Knife:Deactivate()
							t33.Teleport(v1704.CFrame * CFrame.new(0, 0, 3.5))
							sethiddenproperty(HumanoidRootPart, "PhysicsRepRootPart", v1704)
							t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Knifing.\nCysense.cc"

							return
						end

						if Knife.Parent == Character then
							Knife.Parent = LocalPlayer.Backpack
						end
					end

					if t26.Fling then
						if t28.CanSetHiddenProperty then
							sethiddenproperty(HumanoidRootPart, "PhysicsRepRootPart", HumanoidRootPart2)
						end

						t33.Teleport(HumanoidRootPart2.CFrame)
						t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Flinging.\nCysense.cc"

						return
					end

					if not t26.Strafe then
						if t26.Silentaim then
							t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Locking.\nCysense.cc"

							return
						elseif t26.Aimbot then
							t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Locking.\nCysense.cc"
						else
							t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Inactive.\nCysense.cc"
						end

						return
					end

					local v1718 = t33.IsStomped(v1665) or not t26.AutoStomp and v1713

					if not t26.StrafeIdleResolver or (not t26.StrafeIdleSpam or not (tick() % (t26.IdleSpamIdleTime + t26.IdleSpamStrafeTime) < t26.IdleSpamIdleTime)) and not v1718 and not ForceField and (not t26.StrafeIdleReload or not Character.BodyEffects.Reload.Value) then
						local v1719, v1720, v1721, v1722, v1723, v1724 = t29.TableToNumbers(t26.StrafeRadiusTextbox:split(", "))
						local v1725, v1726, v1727, v1728, v1729, v1730 = t29.TableToNumbers(t26.StrafeRotationTextbox:split(", "))

						t33.Teleport(CFrame.new(HumanoidRootPart2.Position + ResolvedVelocity * (t26.StrafePrediction / 100) + Vector3.new(math.random(v1719, v1722), math.random(v1720, v1723), math.random(v1721, v1724))) * CFrame.Angles(math.random(v1725, v1728), math.random(v1726, v1729), math.random(v1727, v1730)))
						t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Strafing.\nCysense.cc"

						return
					end

					local v1731, v1732, v1733, v1734, v1735, v1736 = t29.TableToNumbers(t26.StrafeIdleRadius:split(", "))

					t33.Teleport(CFrame.new(math.random(v1731, v1734), math.random(v1732, v1735), math.random(v1733, v1736)))
					t35.TargetInfo.Text = "Target: " .. v1665.DisplayName .. " (@" .. v1665.Name .. ")\nState: Idle.\nCysense.cc"
				end

				v1701()
			else
				t35.TargetInfo.Text = "Target: None.\nState: Inactive.\nCysense.cc"
			end

			v374.RealCFrame = HumanoidRootPart.CFrame

			local Velocity = HumanoidRootPart.Velocity
			local v1738 = v374.IsActive()

			if v1738 then
				v374.FakeCamera.CFrame = v374.RealCFrame * CFrame.new(0, 2, 0)

				if CurrentCamera.CameraSubject == Humanoid then
					CurrentCamera.CameraSubject = v374.FakeCamera
				end

				HumanoidRootPart.CFrame = v374.SpoofedCFrame
			end

			if t22.Targets[1] and t26.Fling then
				HumanoidRootPart.Velocity = Vector3.new(-1e9, -1e9, -1e9)
			elseif t26.VelocitySpoofer then
				local v1739, v1740, v1741 = t29.TableToNumbers(t26.VelocitySpooferTextbox:split(", "))

				HumanoidRootPart.Velocity = Vector3.new(v1739, v1740, v1741)
			end

			local Fling = t26.Fling or t26.VelocitySpoofer

			RunService.RenderStepped:Wait()

			if v1738 then
				HumanoidRootPart.CFrame = v374.RealCFrame

				if CurrentCamera.CameraSubject == v374.FakeCamera then
					CurrentCamera.CameraSubject = Humanoid
				end
			end

			if Fling then
				HumanoidRootPart.Velocity = Velocity
			end
		end)
	end

	if not Cysense_.Offgrid then
		t30:AddWire(t34.PlayerAdded.Event, function(p304)
			if not p304 then
				return
			end

			t32[p304] = {
				LastTimeFiredGun = 0,
				LastTimeShotPlayer = 0,
				LastTimeAttacked = 0,
				LastTimeStomped = 0,
				LastTimeSpawned = 0,
				LastPlayerAttacked = nil
			}
			t30:AddCable(p304, p304.CharacterAdded, function(p305)
				t32[p304].LastTimeSpawned = tick()
				t34.CharacterAdded:Fire(p304, p305)
			end)
			t30:AddCable(p304, p304.CharacterRemoving, function(p306)
				local v1743 = string.byte("\0004F\210", 1, nil)
				local v1744 = bit32.countrz(v1743)
				local v1745 = 1948 + bit32.countrz(v1744) + -1952
				local v1746 = p306

				t34.CharacterRemoving:Fire(p304, v1746)
			end)
			t30:AddCable(p304, p304.Chatted, function(p307)
				t34.Chatted:Fire(p304, p307)
			end)
			t34.CharacterAdded:Fire(p304, p304.Character)

			if t27.Dahood then
				local DataFolder = p304:WaitForChild("DataFolder")

				DataFolder:WaitForChild("ShotTotal")
				t30:AddCable(p304, DataFolder.ShotTotal:GetPropertyChangedSignal("Value"), function()
					t32[p304].LastTimeFiredGun = tick()
					t34.FiredGun:Fire(p304)
				end)
				DataFolder:WaitForChild("ShotLand")
				t30:AddCable(p304, DataFolder.ShotLand:GetPropertyChangedSignal("Value"), function()
					t32[p304].LastTimeShotPlayer = tick()
					task.wait(0.1)
					t34.ShotPlayer:Fire(p304, t32[p304].LastPlayerAttacked)
				end)
			end
		end)
		t30:AddWire(t34.PlayerRemoving.Event, function(p308)
			if not p308 then
				return
			end

			t30:RemoveCable(p308.Character)
			t30:RemoveCable(p308)

			if t22:IsTarget(p308) then
				if t26.TargetNotifications and table.find(t26.TargetNotificationOptions, "Left") then
					u373:Notification("Target Left", p308.DisplayName .. " (@" .. p308.Name .. ") has left the server!", t26.TargetNotificationDuration)
				end

				t22:RemoveFromTargets(p308)
			end
		end)

		local CFrame_ = HumanoidRootPart and HumanoidRootPart.CFrame or CFrame.new()
		local CFrame_2 = CurrentCamera and CurrentCamera.CFrame or CFrame.new()

		t30:AddWire(t34.CharacterAdded.Event, function(p309, p310)
			if p309 then
				if p310 then
					if t22:IsTarget(p309) then
						if t26.TargetNotifications and table.find(t26.TargetNotificationOptions, "Respawned") then
							u373:Notification("Target Respawned", p309.DisplayName .. " (@" .. p309.Name .. ") has respawned!", t26.TargetNotificationDuration)
						end

						t22:RotateTarget(p309)
					end

					local HumanoidRootPart2 = p310:WaitForChild("HumanoidRootPart")

					t34.RootAdded:Fire(p309, p310, HumanoidRootPart2)

					local Humanoid2 = p310:WaitForChild("Humanoid")

					t34.HumanoidAdded:Fire(p309, p310, Humanoid2)

					if p309 == LocalPlayer then
						Character = p310

						if t26.ReturnByDeath then
							local Position = CFrame_.Position
							local LookVector = CFrame_.LookVector

							HumanoidRootPart.CFrame = CFrame.lookAt(Position, Position + Vector3.new(LookVector.X, 0, LookVector.Z))
							CurrentCamera.CFrame = CFrame_2
						end

						if t26.Auras then
							t25.Auras:Set(t25.Auras:Get())
						end

						if t26.SelectTool then
							t25.SelectTool:Set(false)
							t25.SelectTool:Set(true)
						end
					end

					if t27.Dahood then
						t30:AddCable(p310, p310:WaitForChild("BodyEffects"):WaitForChild("SDeath"):GetPropertyChangedSignal("Value"), function()
							t32[p309].LastTimeStomped = tick()
							t34.PlayerStomped:Fire(p309)
						end)
					end

					return
				end
			end
		end)
		t30:AddWire(t34.CharacterRemoving.Event, function(p311, p312)
			if not p311 or not p312 then
				return
			end

			t30:RemoveCable(p312)

			if p311 == LocalPlayer then
				CFrame_ = HumanoidRootPart.CFrame
				CFrame_2 = CurrentCamera.CFrame
			end
		end)
		t30:AddWire(t34.RootAdded.Event, function(p313, p314, p315)
			if not p313 or not p314 or not p315 then
				return
			end

			if p313 == LocalPlayer then
				HumanoidRootPart = p315
			end
		end)
		t30:AddWire(t34.HumanoidAdded.Event, function(p316, p317, p318)
			if not p316 or not p317 or not p318 then
				return
			end

			local Health = p318.Health

			t30:AddCable(p317, p318.HealthChanged, function(p319)
				t34.HealthChanged:Fire(p316, p319, Health)
				Health = p319
			end)

			if p316 == LocalPlayer then
				Humanoid = p318

				if t26.AntiSit then
					Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
				end

				if t26.PlayAnimation then
					task.wait(0.1)
					t25.PlayAnimation:Set(false)
					t25.PlayAnimation:Set(true)
				end
			end
		end)
		t30:AddWire(t34.HealthChanged.Event, function(p320, p321, p322)
			if not p320 then
				return
			end

			local Character2 = p320.Character
			local v1756 = math.ceil(p322 - p321)

			if Character2 and v1756 > 0 then
				local v1757

				if t27.Dahood then
					task.wait(0.02)

					local BodyEffects = Character2:FindFirstChild("BodyEffects")
					local LastDamager = BodyEffects and BodyEffects:FindFirstChild("LastDamager")
					local Value = LastDamager and LastDamager.Value
					local playerFromCharacter = Players:GetPlayerFromCharacter(Value)

					if not playerFromCharacter then
						return
					end

					local BodyEffects2 = Value:FindFirstChild("BodyEffects")
					local Attacking = BodyEffects2 and BodyEffects2:FindFirstChild("Attacking")
					local GunFiring = BodyEffects2 and BodyEffects2:FindFirstChild("GunFiring")

					if Attacking and Attacking.Value or GunFiring and GunFiring.Value or tick() - t32[playerFromCharacter].LastTimeShotPlayer < 0.1 then
						v1757 = playerFromCharacter
					end
				else
					local v1765 = tick() - t23.HoldingMouseButton <= 0.1
					local v1766 = Target == p320 or t29.GetClosestFromMouse() == p320

					v1757 = v1765 and v1766 and LocalPlayer
				end

				if v1757 then
					t32[v1757].LastPlayerAttacked = p320
					t32[v1757].LastTimeAttacked = tick()
				end

				t34.PlayerDamaged:Fire(p320, v1756, v1757, p322, p321)
			end
		end)
		t30:AddWire(t34.PlayerDamaged.Event, function(p323, p324, p325, p326, p327)
			if not p323 then
				return
			end

			if p325 ~= LocalPlayer then
				if t26.TargetDefense then
					if p325 and p323 == LocalPlayer then
						if t22:IsTarget(p325) then
							t22:SkipToTarget(p325)
						else
							if t22:HasMaximumTargets() then
								t22:RemoveFromTargets(t22.Targets[1])
							end

							t22:AddToTargets(p325)
						end
					end
				end

				return
			end

			local Character2 = p323.Character
			local HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")

			if t26.DamageNotifications then
				local t72 = {
					Title = t26.DamageNotificationsTitle,
					Description = t26.DamageNotificationsDescription
				}

				for k, v in pairs(t72) do
					t72[k] = v:gsub("{Displayname}", p323.DisplayName):gsub("{Username}", p323.Name):gsub("{Damage}", p324):gsub("{NewHealth}", math.floor(p327)):gsub("{OldHealth}", math.floor(p326))
				end

				u373:Notification(t72.Title, t72.Description, t26.DamageNotificationLifetime)
			end

			if t26.DamageNumbers then
				task.spawn(function()
					local Part = Instance.new("Part", workspace)

					Part.Anchored = true
					Part.CanCollide = false
					Part.Transparency = 1
					Part.Size = Vector3.new(0.01, 0.01, 0.01)
					Part.Position = HumanoidRootPart2.Position + Vector3.new(t29.GetRandomOffset3(1.5))

					local BillboardGui = Instance.new("BillboardGui", Part)

					BillboardGui.Size = UDim2.new(0, 200, 0, 100)
					BillboardGui.Adornee = Part
					BillboardGui.AlwaysOnTop = true

					local TextLabel = Instance.new("TextLabel", BillboardGui)

					TextLabel.Text = tostring(p324)
					TextLabel.TextColor3 = Color3.fromHex(t26.DamageNumberColor.Color)
					TextLabel.TextSize = t26.DamageNumbersize
					TextLabel.FontFace = u373.Font
					TextLabel.BackgroundTransparency = 1
					TextLabel.TextStrokeTransparency = 0.2
					TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
					TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel.Rotation = math.random(-45, 45)
					task.wait(t26.DamageNumberLifetime)

					local tween = TweenService:Create(TextLabel, TweenInfo.new(t26.DamageNumberFadetime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
						TextTransparency = 1,
						TextStrokeTransparency = 1
					})

					tween.Completed:Once(function()
						TextLabel:Destroy()
						BillboardGui:Destroy()
						Part:Destroy()
					end)
					tween:Play()
				end)
			end

			if t26.DamageEffects and t26.DamageEffect then
				for _, v in pairs(t26.DamageEffect) do
					for _, child in pairs(t23.Effects[v]:GetChildren()) do
						task.spawn(function()
							local t73 = {}
							local clone = child:Clone()

							for _, descendant in pairs(clone:GetDescendants()) do
								table.insert(t73, descendant)
								descendant.Name = "DamageEffect"

								if descendant.Parent == clone then
									descendant.Parent = Character2:FindFirstChild(child.Name) or HumanoidRootPart2
								end
							end

							clone:Destroy()
							task.wait(t26.DamageEffectLifetime)

							for _, v2 in pairs(t73) do
								if v2:IsA("ParticleEmitter") then
									v2.Enabled = false
								end
							end

							task.wait(3)

							for _, v2 in pairs(t73) do
								v2:Destroy()
							end
						end)
					end
				end
			end

			if t26.DamageChams then
				task.spawn(function()
					Character2.Archivable = true

					local clone = Character2:Clone()

					Character2.Archivable = false
					clone.Parent = workspace

					for _, descendant in pairs(clone:GetDescendants()) do
						if descendant:IsA("BasePart") then
							descendant.CanCollide = false
							descendant.CanTouch = false
							descendant.CanQuery = false
							descendant.Massless = true
							descendant.Anchored = true
							descendant.Color = Color3.fromHex(t26.DamageChamsColor.Color)
							descendant.Material = Enum.Material.Neon
						else
							descendant:Destroy()
						end
					end

					task.wait(t26.DamageChamsLifetime)

					for _, child in pairs(clone:GetChildren()) do
						if child:IsA("BasePart") then
							local tween = TweenService:Create(child, TweenInfo.new(t26.DamageChamsFadetime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
								Transparency = 1
							})

							tween.Completed:Once(function()
								clone:Destroy()
							end)
							tween:Play()
						end
					end
				end)
			end

			if t26.DamageSounds and t26.DamageSound then
				local Sound = Instance.new("Sound", hui)

				Sound.SoundId = t23.DamageSoundId
				Sound:Play()
				Sound.Ended:Once(function()
					Sound:Destroy()
				end)
			end
		end)
		t30:AddWire(t34.FiredGun.Event, function(p328)
			if p328 then
				return
			end
		end)
		t30:AddWire(t34.ShotPlayer.Event, function(p329, p330)
			if p329 and p330 then
				return
			end
		end)
		t30:AddWire(t34.PlayerStomped.Event, function(p331)
			if not p331 then
				return
			end

			if t22:IsTarget(p331) then
				if t26.TargetNotifications and table.find(t26.TargetNotificationOptions, "Stomped") then
					u373:Notification("Target Stomped", p331.DisplayName .. " (@" .. p331.Name .. ") has been stomped!", t26.TargetNotificationDuration)
				end

				t22:RotateTarget(p331)
			end
		end)
		t30:AddWire(Players.PlayerRemoving, function(p332)
			local PlayerRemoving = t34.PlayerRemoving
			local v1796 = PlayerRemoving
			local Fire = PlayerRemoving.Fire
			local v1798 = string.len("\159")
			local v1799 = -32489067 + bit32.lrotate(bit32.countlz(v1798), 20) + -16788

			Fire(v1796, p332)
		end)
		t30:AddWire(Players.PlayerAdded, function(p333)
			t34.PlayerAdded:Fire(p333)
		end)

		for _, player in pairs(Players:GetPlayers()) do
			t34.PlayerAdded:Fire(player)
		end

		if t27.Dahood then
			task.spawn(function()
				Character:WaitForChild("FULLY_LOADED_CHAR")
				ReplicatedStorage.MainEvent.OnClientEvent:Connect(function(p334)
					if t26.NoRecoil and p334 == "ShootingRecoil" then
						local CFrame_3 = CurrentCamera.CFrame

						task.defer(function()
							CurrentCamera.CFrame = CFrame_3
						end)
					end
				end)
			end)
		end
	end

	if t28.CanHook and not Cysense_.Freeflow and not t27.Dahood then
		local v1803

		v1803 = hookmetamethod(game, "__index", newcclosure(function(...)
			if t26.Silentaim and not checkcaller() then
				local v1804 = t22.Targets[1]

				if v1804 then
					local SilentaimHitChance = t26.SilentaimHitChance

					if math.random(1, 100) <= SilentaimHitChance then
						if ... == mouse and select(2, ...) == "Hit" then
							local Character2 = v1804.Character
							local v1807 = Character2 and Character2:FindFirstChild(t26.SilentaimBodyPart)

							if v1807 then
								return CFrame.new(v1807.Position + (t26.VelocityResolver and t33.ResolvedVelocity or v1807.Velocity) * (t26.SilentaimPrediction / 100))
							end
						end
					end
				end
			end

			return v1803(...)
		end))
	end

	if not Cysense_.Stalled then
		u373:Notification("Loaded!", "Menu took " .. string.format("%.4f", tick() - now2) .. " seconds to load", 5)
		print(game:HttpGet("https://labs.bible.org/api/?passage=random&formatting=plain"))

		if not LocalPlayer:IsInGroup(106097077) then
			local ok2, result2 = pcall(function()
				GroupService:PromptJoinAsync(106097077)
			end)

			if ok2 and result2 == Enum.GroupMembershipStatus.Joined then
				u373:Notification("Joined Group", "Thank you for joining the Cysense Group!", 10)

				if t27.Dahood and Character:WaitForChild("FULLY_LOADED_CHAR") then
					ReplicatedStorage.MainEvent:FireServer("JoinCrew", 106097077)
				end
			end
		elseif t27.Dahood and Character:WaitForChild("FULLY_LOADED_CHAR") then
			ReplicatedStorage.MainEvent:FireServer("JoinCrew", 106097077)
		end

		if type(websocket) == "table" then
			type(websocket.connect)
		end
	end

	Cysense_.Awakened = true

	return
end
