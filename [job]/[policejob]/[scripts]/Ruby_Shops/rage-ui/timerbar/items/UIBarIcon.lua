---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 05/10/2019 22:44
---

---@type table
UIBarIcon = setmetatable({}, UIBarIcon)

---@type table
UIBarIcon.__index = UIBarIcon

---@type table
UIBarIcon.__call = function()
    return "UIBarIcon"
end

function UIBarIcon.New(IconDictionary, IconTexture, ProgressValue, ProgressRGB, TextureDictionary, TextureName, Heading, R, G, B, A)
    Heading = tonumber(Heading) or 0
    R = tonumber(R) or 255
    G = tonumber(G) or 255
    B = tonumber(B) or 255
    A = tonumber(A) or 200
    local _UIBarIcon = {
        Background = { Dictionary = TextureDictionary or "timerbars", Texture = TextureName or "all_black_bg", Color = { R = R, G = G, B = B, A = A } },
        Icon = { Dictionary = IconDictionary, Texture = IconTexture },
        Progress = { Value = ProgressValue or 50, R = ProgressRGB.R or 255, G = ProgressRGB.G or 255, B = ProgressRGB.B or 255, A = 255 },
        Position = { X = 1540, Y = 1060 },
    }
    return setmetatable(_UIBarIcon, UIBarIcon)
end


function UIBarIcon:Visible(Pool, Value)
    if Value then
        table.insert(Pool.BarVisible, self)
    else
        for i = 1, #Pool.BarVisible, 1 do
            if Pool.BarVisible[i] == self then
                table.remove(Pool.BarVisible, i)
                break
            end
        end
    end
end

function UIBarIcon:SetPercentage(Value)
    if (Value <= 100) then
        self.Progress.Value = Value
    else
        self.Progress.Value = 100
    end
end

function UIBarIcon:Draw(Interval)
    RenderSprite(self.Background.Dictionary, self.Background.Texture, self.Position.X, self.Position.Y - Interval, 350, 35, 0, 0, 0, 0, 255)
    RenderRectangle(self.Position.X + 142.0, self.Position.Y - Interval + 10.0, 200, 17, self.Progress.R, self.Progress.G, self.Progress.B, 100)
    RenderRectangle(self.Position.X + 142.0, self.Position.Y - Interval + 10.0, self.Progress.Value * 2, 17, self.Progress.R, self.Progress.G, self.Progress.B, self.Progress.A)
    RenderSprite(self.Icon.Dictionary, self.Icon.Texture, self.Position.X + 90, self.Position.Y - Interval, 37, 37)
end
