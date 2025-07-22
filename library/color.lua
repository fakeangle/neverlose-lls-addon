---@meta color

---@class color_object
---@field r number # Value between 0 and 255
---@field g number # Value between 0 and 255
---@field b number # Value between 0 and 255
---@field a number # Value between 0 and 255
local color_object = {}

---
---@param r? number # R color range.
---@param g? number # G color range.
---@param b? number # B color range.
---@param a? number # A color range.
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color)
function color(r, g, b, a) end

---
---@param value? string # HEX string value (Format: `AABBCCDD` including all available overloads).
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color)
function color(value) end

---
---Creates and returns a copy of the color object.
---
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#clone)
function color_object:clone() end

---
---Overwrites the color's ranges. Returns itself.
---
---@param r? number # New R color range.
---@param g? number # New G color range.
---@param b? number # New B color range.
---@param a? number # New A color range.
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#init)
function color_object:init(r, g, b, a) end

---
---Overwrites the color's ranges. Returns itself.
---
---@param value? string # HEX string value (Format: `AABBCCDD` including all available overloads).
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#init)
function color_object:init(value) end

---
---Overwrites the color's ranges using the fraction values. Returns itself.
---
---@param r? number # New R color range as a percentage in the range [0.0, 1.0]
---@param g? number # New G color range as a percentage in the range [0.0, 1.0]
---@param b? number # New B color range as a percentage in the range [0.0, 1.0]
---@param a? number # New A color range as a percentage in the range [0.0, 1.0]
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#as_fraction)
function color_object:as_fraction(r, g, b, a) end

---
---Overwrites the color's ranges converting the int32 value to RGBA values. Returns itself.
---
---@param value? number # int32 color value
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#as_int32)
function color_object:as_int32(value) end

---
---Overwrites the color's ranges converting the HSV to RGBA values. Returns itself.
---
---@param h? number # Hue color range [0.0, 1.0]
---@param s? number # Saturation color range [0.0, 1.0]
---@param v? number # Value color range [0.0, 1.0]
---@param a? number # Alpha color range [0.0, 1.0]
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#as_hsv)
function color_object:as_hsv(h, s, v, a) end

---
---Overwrites the color's ranges converting the HSL to RGBA values. Returns itself.
---
---@param h? number # Hue color range [0.0, 1.0]
---@param s? number # Saturation color range [0.0, 1.0]
---@param l? number # Lightness color range [0.0, 1.0]
---@param a? number # Alpha color range [0.0, 1.0]
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#as_hsl)
function color_object:as_hsl(h, s, l, a) end

---
---Returns the r, g, b, and a ranges of the color as a percentage in the range of [0.0, 1.0].
---
---@return [number, number, number, number]
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#to_fraction)
function color_object:to_fraction() end

---
---Returns the HEX string representing the color.
---
---@return string
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#to_hex)
function color_object:to_hex() end

---
---Returns the int32 value representing the color.
---
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#to_int32)
function color_object:to_int32() end

---
---Returns the HSV representation of the color.
---
---@return [number, number, number]
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#to_hsv)
function color_object:to_hsv() end

---
---Returns the HSL representation of the color.
---
---@return [number, number, number]
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#to_hsl)
function color_object:to_hsl() end

---
---Returns the linearly interpolated color between two colors by the specified weight.
---
---@param other color_object # The color to interpolate to
---@param weight number # A value between 0 and 1 that indicates the weight of `other`
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#lerp)
function color_object:lerp(other, weight) end

---
---Returns the grayscaled color.
---
---@param weight? number # Optional. A value between 0 and 1 that indicates the weight of `grayscale`
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#grayscale)
function color_object:grayscale(weight) end

---
---Returns the current color with an overridden Alpha color range.
---
---@param alpha number # Alpha color range [0, 255]
---@return color_object color
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#alpha_modulate)
function color_object:alpha_modulate(alpha) end

---
---Returns the r, g, b, and a values of the color. Note that these fields can be accessed by indexing r, g, b, and a.
---
---@return [number, number, number, number]
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/color#unpack)
function color_object:unpack() end

return color_object