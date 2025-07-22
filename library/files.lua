---@meta files

---@class files
files = {}

---
---@param path string # New folder path
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/files#create_folder)
function files.create_folder(path) end

---
---Returns contents of the specified file.
---
---@param path string # Path to the file
---@return any
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/files#read)
function files.read(path) end

---
---Replaces contents of the specified file. Returns `false` on failure.
---
---@param path string # Path to the file
---@param contents any # Contents the file should be set to
---@param is_binary? boolean # Is `contents` a binary
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/files#write)
function files.write(path, contents, is_binary) end

---
---Returns the crc32 checksum of the file.
---
---@param path string # Path to the file
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/files#get_crc32)
function files.get_crc32(path) end

return files