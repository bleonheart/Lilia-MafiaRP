﻿local MODULE = MODULE
local scrW, scrH = ScrW(), ScrH()
function MODULE:DrawCharInfo(client, _, info)
    if IsHandcuffed(client) then info[#info + 1] = {"Handcuffed", Color(245, 215, 110)} end
end

function MODULE:HUDPaintBackground()
    if not LocalPlayer().getChar(LocalPlayer()) then return end
    if IsHandcuffed(LocalPlayer()) then lia.util.drawText(L"restricted", scrW * 0.5, scrH * 0.33, nil, 1, 1, "liaBigFont") end
end
