---@meta _G

---
---Get the current script id
---
---@type number
_ID = 0

---
---Returns `true` if the script is coming from the neverlose marketplace.
---
---@type boolean
_IS_MARKET = false

---
---Returns the current script name
---
---@type string
_NAME = "Script"

---
---Prints an error to the console and plays a sound.
---
---@param text string # Text to print into the console.
---@param ... any # Optional arguments to concatenate with `text`.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/_g#print_error)
function print_error(text, ...) end

---
---Prints the text to the in-game chat.
---
---@param text string # Text to print into the in-game chat.
---@param ... any # Optional arguments to concatenate with `text`.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/_g#print_chat)
function print_chat(text, ...) end

---
---Prints the text that can be changed in color by prepending it with `"\a"` followed by the color in the hexadecimal "RRGGBB" format.
---For example, `"\aFF0000Hi"` will print `"Hi"` in red.
---
---@param text string # Text to print into the console.
---@param ... any # Optional arguments to concatenate with `text`.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/_g#print_raw)
function print_raw(text, ...) end

---
---Prints the text into the upper-left console panel.
---
---@param text string # Text to print to into the upper-left console panel.
---@param ... any # Optional arguments to concatenate with `text`.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/_g#print_dev)
function print_dev(text, ...) end

---
---Converts time (seconds) to ticks.
---
---@param time number # The seconds to convert to ticks.
---@return number ticks
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/_g#to_ticks)
function to_ticks(time) end

---
---Converts ticks to time (seconds).
---
---@param ticks number # The seconds to convert to ticks.
---@return number time
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/_g#to_time)
function to_time(ticks) end

---Creates the new class.
---
---@return table # An instance of the new class with defined structures.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/_g#new_class)
function new_class() end