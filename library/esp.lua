---@meta esp

---@class esp_group
---@field get function
---@field set function
---@field name function
---@field create function
local esp_group = {}

---@class esp_class
local esp_class = {}

---@class esp
---@field enemy esp_class
---@field team esp_class
---@field self esp_class
esp = {}

---
---Registers ESP text to the specified class. The callback function is called every frame. It is passed an entity pointer. Return a string in order to manage the output.
---
---@param name string # ESP element picker text
---@param preview string # ESP preview text
---@param callback function # Function that will be called for each entity while drawing the ESP
---@return esp_group ESPGroup
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/esp#new_text)
function esp_class:new_text(name, preview, callback) end

---
---Registers an ESP bar to the specified class. The callback function is called every frame. Access the entity pointer using the arguments of the specified callback. Return a boolean followed by the number in the range [0.0, 1.0].
---
---@param name string # ESP element picker text
---@param callback function # Function that will be called for each entity while drawing the ESP
---@return esp_group ESPGroup
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/esp#new_bar)
function esp_class:new_bar(name, callback) end

---
---Registers an ESP item that is neither text nor a bar.
---
---@param name string # ESP element picker text
---@return esp_group ESPGroup
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/esp#new_item)
function esp_class:new_item(name) end

return esp