---@meta common

---@class common
common = {}

---
---Returns the formatted date.
---
---@param format string # Date format (`strftime`)
---@param unix_time? number # Optional. Unix-format time
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_date)
function common.get_date(format, unix_time) end

---
---Returns the number of seconds that have elapsed since the unix epoch (1 January 1970 00:00:00)
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_unixtime)
function common.get_unixtime() end

---
---Returns the windows time as a table containing the `year`, `month`, `day`, `hours`, `minutes` and `seconds` values.
---
---@return { year: number, month: number, day: number, hours: number, minutes: number, seconds: number }
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_system_time)
function common.get_system_time() end

---
---Returns the product version of the game client.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_product_version)
function common.get_product_version() end

---
---Returns the path to the game client folder.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_game_directory)
function common.get_game_directory() end

---
---Returns a table containing the `name`, `shortname`, and `group` values.
---
---@return { name: string, shortname: string, group: string }
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_map_data)
function common.get_map_data() end

---
---Returns your Neverlose username.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_username)
function common.get_username() end

---
---Returns the name of the currently loaded config.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_config_name)
function common.get_config_name() end

---
---Returns a table of strings containing the names of the loaded scripts.
---
---@return table
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_active_scripts)
function common.get_active_scripts() end

---
---Returns a value that indicates the amount that the mouse wheel has changed.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#get_mouse_wheel_delta)
function common.get_mouse_wheel_delta() end

---
---Returns `true` if the camera is in thirdperson.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#is_in_thirdperson)
function common.is_in_thirdperson() end

---
---Reloads current script.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#reload_script)
function common.reload_script() end

---
---Unloads current script.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#unload_script)
function common.unload_script() end

---
---Forces the server to send a full update packet.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#force_full_update)
function common.force_full_update() end

---
---Sets your in-game clan tag.
---
---@param text string # New clan tag
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#set_clan_tag)
function common.set_clan_tag(text) end

---
---Sets your in-game name.
---
---@param text string # New name
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#set_clan_tag)
function common.set_name(text) end

---
---Prints the text into the upper-left neverlose event panel.
---
---@param text string # Text to print to into the upper-left panel.
---@param icon_name? string # Optional. Fontawesome icon name.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#add_event)
function common.add_event(text, icon_name) end

---
---Draws the notification.
---
---@param title string # Text to print to into the title.
---@param body string # Text to print to into the body of the notification.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#add_notify)
function common.add_notify(title, body) end

---
---Returns `true` if the button is down, or `nil` on failure.
---
---@param key number # Key to check
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#is_button_down)
function common.is_button_down(key) end

---
---Returns `true` if the button is released, or `nil` on failure.
---
---@param key number # Key to check
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/common#is_button_released)
function common.is_button_released(key) end

return common