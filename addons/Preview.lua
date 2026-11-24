local HttpService = cloneref(game:GetService("HttpService"))

local ESPPreview = {} do
    ESPPreview.Library = nil
    ESPPreview.Folder = 'espPreviewForRawr/ESPPreview'
    ESPPreview.Instance = nil
    ESPPreview.Toggle = nil
    ESPPreview.Groupbox = nil
    ESPPreview._Visible = false

    function ESPPreview:SetLibrary(library)
        self.Library = library
    end

    function ESPPreview:SetFolder(folder)
        self.Folder = folder
        if not isfolder(folder) then makefolder(folder) end
    end

    function ESPPreview:Ensure()
        if self.Instance then return self.Instance end
        if not self.Library then
            error("ESPPreview:SetLibrary must be called before Ensure")
        end
        if type(self.Library.CreateESPPreview) ~= "function" then
            error("Library.CreateESPPreview is missing — is Library.lua up to date?")
        end
        self.Instance = self.Library:CreateESPPreview()
        self.Instance:SetVisibility(false)
        getgenv().ESPPreview = self.Instance
        return self.Instance
    end

    function ESPPreview:SetVisible(value)
        self._Visible = value and true or false
        if self._Visible then
            local inst = self:Ensure()
            if inst.SetVisibility then inst:SetVisibility(true) end
        else
            if self.Instance and self.Instance.SetVisibility then
                self.Instance:SetVisibility(false)
            end
        end
    end

    function ESPPreview:BuildESPPreviewSection(tab)
        assert(self.Library, "ESPPreview:SetLibrary must be called before BuildESPPreviewSection")

        local box = tab:AddRightGroupbox('Widgets')
        self.Groupbox = box

        local toggle = box:AddToggle('ESPPreviewVisible', {
            Text = 'ESP Preview',
            Default = false,
        })
        self.Toggle = toggle

        toggle:OnChanged(function(Value)
            ESPPreview:SetVisible(Value)
        end)

        toggle:AddKeyPicker('ESPPreviewKeybind', {
            Default = 'RightShift',
            SyncToggleState = true,
            Mode = 'Toggle',
            Text = 'Bind',
            NoUI = false,
        })

        box:AddButton('Reroll Target', function()
            if ESPPreview.Instance and ESPPreview.Instance.Reroll then
                ESPPreview.Instance:Reroll()
            end
        end)

        -- Ensure the panel exists immediately (hidden) so the Reroll button works
        self:Ensure()

        if toggle.Value then
            ESPPreview:SetVisible(true)
        end

        return box
    end

    function ESPPreview:Unload()
        if self.Instance then
            if self.Instance.SetVisibility then
                self.Instance:SetVisibility(false)
            end
            if self.Instance.Destroy then
                self.Instance:Destroy()
            end
        end
        self.Instance = nil
        getgenv().ESPPreview = nil
    end
end

return ESPPreview
