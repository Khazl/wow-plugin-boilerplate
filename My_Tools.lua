-- Variables
local WOWVERSION = select(4, GetBuildInfo())
local color = "|cfc03a1ff"

-- Need a frame for events
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:RegisterEvent("MINIMAP_PING")
eventFrame:SetScript("OnEvent",function(self,event,...) self[event](self,event,...);end)

-- Event listeners
function eventFrame:MINIMAP_PING()
	SetMinimapText("Hey!")
end

function eventFrame:PLAYER_ENTERING_WORLD()
	WelcomeMessage()
end

-- Functions for events
function SetMinimapText(txt)
	MinimapZoneText:SetText(txt);
end

function WelcomeMessage()
	DEFAULT_CHAT_FRAME:AddMessage(color.."My tools loaded!")
end
