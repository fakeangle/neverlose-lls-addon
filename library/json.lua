---@meta json

---@class json
json = {}

---
---Will deserialize any UTF-8 JSON string into a Lua value or table.
---
---@param json_text string # UTF-8 JSON text
---@return any
---
---[View documents](https://lua.neverlose.cc/documentation/variables/json#parse)
function json.parse(json_text) end

---
---Will serialize a Lua value into a string containing the JSON representation.
---
---@param value any # A lua boolean, number, string, table or nil
---@return string
---
---[View documents](https://lua.neverlose.cc/documentation/variables/json#stringify)
function json.stringify(value) end

return json