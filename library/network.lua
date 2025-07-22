---@meta network

---@class network
network = {}

---
---Sends a GET request to the URL.
---
---@param url string # URL
---@param headers? table # Headers
---@param callback? function # Callback
---@return string
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/network#get)
function network.get(url, headers, callback) end

---
---Sends a POST request to the URL.
---
---@param url string # URL
---@param data? table # Post data
---@param headers? table # Headers
---@param callback? function # Callback
---@return string
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/network#post)
function network.post(url, data, headers, callback) end

return network