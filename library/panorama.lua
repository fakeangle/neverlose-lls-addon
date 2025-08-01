---@meta panorama

---
---ToDo: Dump each panel and define them for more in-depth documentation.
---
---@alias panel table<string, unknown> | userdata

---
---Taken from [Valve's CSGO Panorama API](https://developer.valvesoftware.com/wiki/CSGO_Panorama_API). Possibly outdated.
---
---@class panorama
---@field BlogAPI panel
---@field Button panel
---@field Carousel panel
---@field CarouselNav panel
---@field CompetitiveMatchAPI panel
---@field ContextMenuCustomLayout panel
---@field CSGOAvatarImage panel
---@field CSGOBlurTarget panel
---@field CSGOChat panel
---@field CSGOEndOfMatch panel
---@field CSGOHudFreezePanel panel
---@field CSGOHudMissionPanel panel
---@field CSGOHudWinPanel panel
---@field CSGOLoadout panel
---@field CSGOMainMenu panel
---@field CSGORadialSelector panel
---@field CSGOScoreboard panel
---@field CSGOTeamSelectMenu panel
---@field DataGraphAPI panel
---@field DeepStatsAPI panel
---@field DelayLoadPanel panel
---@field DropDown panel
---@field EmbeddedStreamAPI panel
---@field FantasyAPI panel
---@field Frame panel
---@field FriendsListAPI panel
---@field GameInterfaceAPI panel
---@field GameStateAPI panel
---@field GameTypesAPI panel
---@field GlobalGameAPI panel
---@field HTML panel
---@field Image panel
---@field InventoryAPI panel
---@field InventoryItemList panel
---@field ItemImage panel
---@field ItemPreviewPanel panel
---@field Label panel
---@field LeaderboardsAPI panel
---@field LoadoutAPI panel
---@field LobbyAPI panel
---@field MatchDraftAPI panel
---@field MatchInfoAPI panel
---@field MatchListAPI panel
---@field MatchStatsAPI panel
---@field MedalsAPI panel
---@field MissionsAPI panel
---@field Movie panel
---@field MyPersonaAPI panel
---@field NewsAPI panel
---@field OptionsMenuAPI panel
---@field OverwatchAPI panel
---@field Panel panel
---@field PartyBrowserAPI panel
---@field PartyListAPI panel
---@field PopupCustomLayout panel
---@field PredictionsAPI panel
---@field RadioButton panel
---@field SteamOverlayAPI panel
---@field StoreAPI panel
---@field StreamsAPI panel
---@field TeammatesAPI panel
---@field TextButton panel
---@field TextEntry panel
---@field ToggleButton panel
---@field TooltipContents panel
---@field TournamentsAPI panel
---@field UGCAPI panel
---@field UiToolkitAPI panel
---@field WorkshopAPI panel
panorama = {}

---
---@param js_code string # String containing JavaScript code
---@param panel? string # Optional. Panel name
---@return any
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/panorama#loadstring)
function panorama.loadstring(js_code, panel) end

return panorama