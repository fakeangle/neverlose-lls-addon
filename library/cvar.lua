---@meta cvar

---@type table<string, cvar_object>
cvar = {}

---@class cvar_object
local cvar_object = {}

---
---@param ... any # Arguments passed to the callback
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#call)
function cvar_object:call(...) end

---
---Gets the ConVar int value.
---
---@return integer
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#int)
function cvar_object:int() end

---
---Sets the ConVar int value.
---
---@param value integer # New int value
---@param raw? boolean # Optional. If `true` then the `raw` value will be set
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#int)
function cvar_object:int(value, raw) end

---
---Gets the ConVar float value.
---
---@return number
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#float)
function cvar_object:float() end

---
---Sets the ConVar float value.
---
---@param value number # New float value
---@param raw? boolean # Optional. If `true` then the `raw` value will be set
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#float)
function cvar_object:float(value, raw) end

---
---Gets the ConVar string value.
---
---@return string
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#string)
function cvar_object:string() end

---
---Sets the ConVar string value.
---
---@param value? string # New string value. If not specified then returns the string value of the ConVar
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#string)
function cvar_object:string(value) end

---
---Registers the callback to the specified ConVar/Command. The registered function will be called every time the specified convar value is updated.
---
---@param callback? function # Lua function to call
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#set_callback)
function cvar_object:set_callback(callback) end

---
---Unregisters the callback that was set via the `:set_callback`function from the specified ConVar/Command.
---
---@param callback? function # Lua function that was passed to the `:set_callback` function
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/cvar#unset_callback)
function cvar_object:unset_callback(callback) end

return cvar_object