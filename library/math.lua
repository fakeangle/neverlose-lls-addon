---@meta math

---@class math
---@field huge number # The value HUGE_VAL, a value larger than or equal to any other numerical value.
---@field pi number # The value of pi.
math = {}

---
---Returns the clamped value.
---
---@param value number # The value to clamp
---@param min? number # The minimum value
---@param max? number # The maximum value
---@return number
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/math#clamp)
function math.clamp(value, min, max) end

---
---Linearly maps two number ranges and returns the mapped value.
---
---@param value number # The value to map
---@param in_from number # Out minimum value
---@param in_to number # In maximum value
---@param out_from number # Out minimum value
---@param out_to number # Out maximum value
---@param should_clamp? boolean # Clamp `In` range
---@return number
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/math#clamp)
function math.map(value, in_from, in_to, out_from, out_to, should_clamp) end

---
---Returns the normalized yaw angle value.
---
---@param x number # Number
---@return number
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/math#normalize_yaw)
function math.normalize_yaw(x) end

return math