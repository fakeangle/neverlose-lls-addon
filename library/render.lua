---@meta render

---@class image_object
---@field width number
---@field height number
---@field resolution number
local image_object = {}

---@enum neverlose_font
local neverlose_font = {
    Default = 1,
    Small = 2,
    Console = 3,
    Bold = 4,
}

---@class font_object
---@field width number
---@field height number
---@field resolution number
local font_object = {}

---
---Sets the new font size.
---
---@param size number # New size of the font
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#set_size)
function font_object:set_size(size) end

---
---Sets the new font size.
---
---@param size vector_object # A vector object containing `width`, `height`, and `spacing`.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#set_size)
function font_object:set_size(size) end

---@class render
render = {}

---
---@return vector_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#screen_size)
function render.screen_size() end

---
---Returns the camera position vector.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#camera_position)
function render.camera_position() end

---
---Sets the camera angles.
---
---@param angles vector_object # New camera angles
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#camera_angles)
function render.camera_angles(angles) end

---
---Returns the camera angles.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#camera_angles)
function render.camera_angles() end

---
---Returns the screen position vector, or nil if the world position is not visible on your screen. This can only be called from the render callback.
---
---@param position vector_object # Position in world space
---@return vector_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#world_to_screen)
function render.world_to_screen(position) end

---
---Returns the `position`, `rotation`, and `is_out_of_fov` arguments or `nil` on failure.
---
---@param position vector_object # Position in world space
---@param radius number # Distance from the center of the screen as a percentage in the range [0.0, ∞]
---@param accurate? boolean # Optional. If `true` then accurate calculations will be used
---@return vector_object, number, boolean
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#get_offscreen)
function render.get_offscreen(position, radius, accurate) end

---
---Returns the color of the specified pixel on the screen.
---
---@param position vector_object # Screen position
---@return color_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#get_pixel)
function render.get_pixel(position) end

---
---Returns the `FontObject` struct or nil on failure.
---
---@param name string # Font that will be initialized
---@param size number # Size of the font
---@param flags? string # `a` for anti-aliasing, `i` for cursive text, and `b` for bold text, `o` for outlined text, `d` for the drop shadow effect.
---@return font_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#load_font)
function render.load_font(name, size, flags) end

---
---Returns the `FontObject` struct or nil on failure.
---
---@param name string # Font that will be initialized
---@param size vector_object # A vector object containing `width`, `height`, and `spacing`.
---@param flags? string # `a` for anti-aliasing, `i` for cursive text, and `b` for bold text, `o` for outlined text, `d` for the drop shadow effect.
---@return font_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#load_font)
function render.load_font(name, size, flags) end

---
---Returns the `ImgObject` struct or nil on failure. Supports JPG, PNG, BMP, SVG, and GIF formats.
---
---@param contents string # Raw image file contents
---@param size vector_object # Size of the image
---@return image_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#load_image)
function render.load_image(contents, size) end

---
---Returns the `ImgObject` struct or nil on failure.
---
---@param contents string # `RGBA` buffer (`HEX` encoded)
---@param size vector_object # Size of the image
---@return image_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#load_image_rgba)
function render.load_image_rgba(contents, size) end

---
---Returns the `ImgObject` struct or nil on failure. Supports JPG, PNG, BMP, SVG, and GIF formats.
---
---@param path string # Path to the image
---@param size vector_object # Size of the image
---@return image_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#load_image_from_file)
function render.load_image_from_file(path, size) end

---
---Returns the `ImgObject` struct or nil on failure. Supports JPG, PNG, BMP, SVG, and GIF formats.
---
---@param font font_object | neverlose_font # Font object or `1` for `Default` font, `2` for `Small` font, `3` for `Console` font, or `4` for `Bold` font
---@param flags? "s" # Optional. `s` for DPI scaled text
---@param text string # Text that will be measured
---@return image_object
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#measure_text)
function render.measure_text(font, flags, text) end

---
---Highlights the specified hitbox / hitboxes.
---
---@param entity ent
---@param hitbox number
---@param color color_object
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#highlight_hitbox)
function render.highlight_hitbox(entity, hitbox, color) end

---
---Returns the DPI scale value.
---
---@param type number # The type of DPI scale to return. `1` - Menu Scale, `2` - ESP Scale.
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#get_scale)
function render.get_scale(type) end

---
---@param position_a vector_object # Start position
---@param position_b vector_object # End position
---@param strength number # Blur strength
---@param alpha number # Alpha percentage in the range [0.0, 1.0]
---@param rounding number # Optional. Rounding of the blur rectangle in pixels
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#blur)
function render.blur(position_a, position_b, strength, alpha, rounding) end

---
---@param position_a vector_object # Start position
---@param position_b vector_object # End position
---@param color color_object # Color of the line
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#line)
function render.line(position_a, position_b, color) end

---
---@param color color_object # Color of the polyline
---@param positions vector_object # Screen positions
---@param ... any # Comma-separated vectors to concatenate with `positions`
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#poly)
function render.poly(color, positions, ...) end

---
---@param opacity number # Opacity percentage in the range [0.0, 1.0]
---@param strength number # Blur strength
---@param positions vector_object # Screen positions
---@param ... any # Comma-separated vectors to concatenate with `positions`
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#poly_blur)
function render.poly_blur(opacity, strength, positions, ...) end

---
---@param color color_object # Color of the polyline
---@param positions vector_object # Screen positions
---@param ... any # Comma-separated vectors to concatenate with `positions`
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#poly_line)
function render.poly_line(color, positions, ...) end

---
---@param position_a vector_object # Start position
---@param position_b vector_object # End position
---@param color color_object # Color of the rectangle
---@param rounding? number # Optional. Rounding of the rectangle in pixels
---@param no_clamp? boolean # Optional. If `true`, negative sizes will be allowed
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#rect)
function render.rect(position_a, position_b, color, rounding, no_clamp) end

---
---@param position_a vector_object # Start position
---@param position_b vector_object # End position
---@param color color_object # Color of the rectangle
---@param thickness? number # Optional. Thickness of the rectangle in pixels
---@param rounding? number # Optional. Rounding of the rectangle in pixels
---@param no_clamp? boolean # Optional. If `true`, `position_a < position_b` will be allowed
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#rect_outline)
function render.rect_outline(position_a, position_b, color, thickness, rounding, no_clamp) end

---
---@param position_a vector_object # Start position
---@param position_b vector_object # End position
---@param top_left color_object # Color of the top left rectangle position
---@param top_right color_object # Color of the top right rectangle position
---@param bottom_left color_object # Color of the bottom left rectangle position
---@param bottom_right color_object # Color of the bottom right rectangle position
---@param rounding? number # Optional. Rounding of the gradient in pixels
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#gradient)
function render.gradient(position_a, position_b, top_left, top_right, bottom_left, bottom_right, rounding) end

---
---@param position vector_object # Screen position
---@param color color_object # Color of the circle
---@param radius number # Radius of the circle in pixels
---@param start_deg number # `0` is the right side, `90` is the bottom, `180` is the left, `270` is the top
---@param pct number # Percentage in the range [0.0-1.0] determining how full the circle is
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#circle)
function render.circle(position, color, radius, start_deg, pct) end

---
---@param position vector_object # Screen position
---@param color color_object # Color of the circle
---@param radius number # Radius of the circle in pixels
---@param start_deg number # `0` is the right side, `90` is the bottom, `180` is the left, `270` is the top
---@param pct number # Percentage in the range [0.0-1.0] determining how full the circle is
---@param thickness? number # Optional. Thickness of the outline in pixels
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#circle_outline)
function render.circle_outline(position, color, radius, start_deg, pct, thickness) end

---
---@param position vector_object # Screen position
---@param color_outer color_object # Outer color of the circle
---@param color_inner color_object # Inner color of the circle
---@param radius number # Radius of the circle in pixels
---@param start_deg number # `0` is the right side, `90` is the bottom, `180` is the left, `270` is the top
---@param pct number # Percentage in the range [0.0-1.0] determining how full the circle is
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#circle_gradient)
function render.circle_gradient(position, color_outer, color_inner, radius, start_deg, pct) end

---
---@param position vector_object # Screen position
---@param color color_object # Color of the circle
---@param radius number # Radius of the circle in pixels
---@param start_deg number # `0` is the right side, `90` is the bottom, `180` is the left, `270` is the top
---@param pct number # Percentage in the range [0.0-1.0] determining how full the circle is
---@param outline? boolean # Optional. Render the circle outline
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#circle_3d)
function render.circle_3d(position, color, radius, start_deg, pct, outline) end

---
---@param position vector_object # Screen position
---@param color color_object # Color of the circle
---@param radius number # Radius of the circle in pixels
---@param start_deg number # `0` is the right side, `90` is the bottom, `180` is the left, `270` is the top
---@param pct number # Percentage in the range [0.0-1.0] determining how full the circle is
---@param thickness? number # Thickness of the outline in pixels
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#circle_3d_outline)
function render.circle_3d_outline(position, color, radius, start_deg, pct, thickness) end

---
---@param position vector_object # Screen position
---@param color_outer color_object # Outer color of the circle
---@param color_inner color_object # Inner color of the circle
---@param radius number # Radius of the circle in pixels
---@param start_deg number # `0` is the right side, `90` is the bottom, `180` is the left, `270` is the top
---@param pct number # Percentage in the range [0.0-1.0] determining how full the circle is
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#circle_3d_gradient)
function render.circle_3d_gradient(position, color_outer, color_inner, radius, start_deg, pct) end

---
---Draws the specified text.
---
---@param font font_object | neverlose_font # Font object or `1` for `Default` font, `2` for `Small` font, `3` for `Console` font, or `4` for `Bold` font
---@param position vector_object # Screen position
---@param color color_object # Color of the text
---@param flags? string # `c` for centered text, `r` for right-aligned text, `s` for DPI scaled text. `nil` can be used for normal uncentered text.
---@param text any # Text that will be drawn
---@param ... any # Comma-separated vectors to concatenate with `text`
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#text)
function render.text(font, position, color, flags, text, ...) end

---
---@param texture image_object # Image object
---@param position vector_object # Screen position
---@param size? vector_object # Optional. Size of the texture
---@param color? color_object # Optional. Color of the texture
---@param mode? "f" | "r" # Optional. `f` for fill, `r` for repeat
---@param rounding? number # Optional. Roundness of the texture
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#texture)
function render.texture(texture, position, size, color, mode, rounding) end

---
---Applies the rotation for all subsequent elements.
---
---@param degrees number # Rotation degrees (0 - 360)
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#push_rotation)
function render.push_rotation(degrees) end

---
---Discards an early set rotation.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#pop_rotation)
function render.pop_rotation() end

---
---Applies the clip region to the given rectangle for all subsequent elements.
---
---@param pos_a vector_object # Screen position of point A
---@param pos_b vector_object # Screen position of point B
---@param intersect? boolean # Optional. Allow intersections with other clip regions
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#push_clip_rect)
function render.push_clip_rect(pos_a, pos_b, intersect) end

---
---Discards an early set rectangle clipping region.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#pop_clip_rect)
function render.pop_clip_rect() end

---
---Draws a shadow rectangle.
---
---@param pos_a vector_object # Screen position of point A
---@param pos_b vector_object # Screen position of point B
---@param clr color_object # The color of the shadow
---@param thickness? number # The thickness of the shadow
---@param offset? number # Shadow offset
---@param rounding? number # The rounding of the shadow rectangle
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/render#shadow)
function render.shadow(pos_a, pos_b, clr, thickness, offset, rounding) end

return render