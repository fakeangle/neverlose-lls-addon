---@meta ui

---@enum hotkey_mode
local hotkey_mode = {
    Hold = 1,
    Toggle = 2
}

---@class hotkey_t
---@field name string # Hotkey name
---@field mode hotkey_mode # Hotkey mode
---@field value any # Hotkey value
---@field active boolean # Hotkey state
---@field reference menu_item # Pointer to the menu item
local hotkey_t = {}

---@class style_t
---@field ["Active Text"] color_object
---@field ["Active Window Title"] color_object
---@field ["Block Background"] color_object
---@field ["Border"] color_object
---@field ["Button"] color_object
---@field ["Button Active"] color_object
---@field ["Button Active Text"] color_object
---@field ["Disabled Text"] color_object
---@field ["Frame Active Background"] color_object
---@field ["Frame Background"] color_object
---@field ["Link"] color_object
---@field ["Link Active"] color_object
---@field ["Logo"] color_object
---@field ["Logo Back"] color_object
---@field ["Main Window Background"] color_object
---@field ["Popup Background"] color_object
---@field ["Preview Background"] color_object
---@field ["Scrollbar Background"] color_object
---@field ["Scrollbar Grab"] color_object
---@field ["Scrollbar Grab Active"] color_object
---@field ["Selection"] color_object
---@field ["Separator"] color_object
---@field ["Shadows"] color_object
---@field ["Sidebar Background"] color_object
---@field ["Sidebar Selection"] color_object
---@field ["Sidebar Text"] color_object
---@field ["Slider Active Background"] color_object
---@field ["Slider Background"] color_object
---@field ["Slider Grab"] color_object
---@field ["Slider Grab Active"] color_object
---@field ["Small Text"] color_object
---@field ["Spinner"] color_object
---@field ["Switch"] color_object
---@field ["Switch Active"] color_object
---@field ["Switch Active Background"] color_object
---@field ["Switch Background"] color_object
---@field ["Tab"] color_object
---@field ["Text"] color_object
---@field ["Text Preview"] color_object
---@field ["Text Selection"] color_object
---@field ["Window Title"] color_object
local style_t = {}

---@class menu_item
local menu_item = {}

---
---Returns the value of the menu item.
---
---@return any
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get)
function menu_item:get() end

---
---Returns the unique id of the menu item.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#id)
function menu_item:id() end

---
---Returns the list of items. `combo` / `selectable` menu item objects only.
---
---@return table
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#list)
function menu_item:list() end

---
---Returns the type of the menu item.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#type)
function menu_item:type() end

---
---Overrides the item value without changing the menu / config values. If the `value` argument is `nil` or missing, the override is undone.
---
---@param value any # The value to which the menu item will be set
---@param ... any
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#override)
function menu_item:override(value, ...) end

---
---Returns the value of the menu item it's overriden to.
---
---@return any
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_override)
function menu_item:get_override() end

---
---Updates the values of the menu item.
---
---@param ... any
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#update)
function menu_item:update(...) end

---
---Resets the menu item to it's original value.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#reset)
function menu_item:reset() end

---
---Sets the value of the menu item.
---
---@param value any # The value to which the menu item will be set
---@param ... any
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#set)
function menu_item:set(value, ...) end

---
---Sets the menu item visibility depending on the value of `state`.
---
---@param state boolean # New visibility state
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#visibility)
function menu_item:visibility(state) end

---
---Gets the menu item visibility.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#visibility)
function menu_item:visibility() end

---
---Sets the menu item disabled state depending on the value of `state`.
---
---@param state boolean # New disabled state
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#disabled)
function menu_item:disabled(state) end

---
---Gets the menu item disabled state.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#disabled)
function menu_item:disabled() end

---
---Sets the callback to the specified menu item.
---
---@param callback function # Function that will be called when the menu item is interacted with
---@param force_call? boolean # Pass `true` to call the callback function after setup
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#set_callback)
function menu_item:set_callback(callback, force_call) end

---
---Unsets the callback that was set via the `:set_callback` function.
---
---@param callback function # Lua function that was passed to the `:set_callback` function
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#unset_callback)
function menu_item:unset_callback(callback) end

---
---Attaches a color picker to the current menu item object.
---
---@param color? color_object # Optional. Initial color value
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#render.line-1)
function menu_item:color_picker(color) end

---
---Attaches a color picker to the current menu item object.
---
---@param colors? color_object[] # Table containing tables with a string index, and those tables should contain one or multiple color objects. Check UI examples.
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#render.line-1)
function menu_item:color_picker(colors) end

---
---Attaches a group (gear) to the current menu item object.
---
---@return menu_group
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#create-1)
function menu_item:create() end

---
---Returns the parent object of the menu item.
---
---@return menu_item | menu_group
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#parent)
function menu_item:parent() end

---@class menu_group
local menu_group = {}

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param init? boolean # Default value
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#switch)
function menu_group:switch(name, init) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param min number # Minimum allowed value
---@param max number # Maximum allowed value
---@param init? number # Default value
---@param scale? number # Display value multiplier. Can be used for decimal places
---@param tooltip? string | function # A string appends itself to the display value. A function allows you to access the raw display value and displays anything it returns.
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#slider)
function menu_group:slider(name, min, max, init, scale, tooltip) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param items any # One or more comma separated values that will be added to the combo. Alternatively, a table of strings that will be added
---@param ... any
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#combo)
function menu_group:combo(name, items, ...) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param items any # One or more comma separated values that will be added to the combo. Alternatively, a table of strings that will be added
---@param ... any
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#selectable)
function menu_group:selectable(name, items, ...) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param color? color_object # Optional. Initial color value
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#render.line)
function menu_group:color_picker(name, color) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param colors color_object[] # Table containing tables with a string index, and those tables should contain one or multiple color objects. Check UI examples.
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#render.line)
function menu_group:color_picker(name, colors) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param callback? function # Optional. Function that will be called when the button is clicked
---@param alt_style? boolean # Optional. Pass `true` to enable the alternative style for the specified button
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#button)
function menu_group:button(name, callback, alt_style) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param default_key? number # Optional. Default key
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#hotkey)
function menu_group:hotkey(name, default_key) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param text? string # Optional. Default value
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#input)
function menu_group:input(name, text) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param items any # One or more comma separated values that will be added to the combo. Alternatively, a table of strings that will be added
---@param ... any
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#list)
function menu_group:list(name, items, ...) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param name string # Item name
---@param items any # One or more comma separated values that will be added to the combo. Alternatively, a table of strings that will be added
---@param ... any
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#listable)
function menu_group:listable(name, items, ...) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param text string # Label text
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#label)
function menu_group:label(text) end

---
---Creates and returns a menu item object, or throws an error on failure.
---
---@param texture image_object # Image object
---@param size? vector_object # Optional. Size of the image
---@param color? color_object # Optional. Color of the texture
---@param mode? "f" | "r" # Optional. `f` for fill, `r` for repeat
---@param rounding? number # Optional. Image border rounding
---@return menu_item
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#texture)
function menu_group:texture(texture, size, color, mode, rounding) end

---@class ui
ui = {}

---
---Returns the menu opacity as a unit interval (value in the range [0, 1]).
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_alpha)
function ui.get_alpha() end

---
---Returns the current menu size.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_size)
function ui.get_size() end

---
---Returns the current menu position.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_position)
function ui.get_position() end

---
---Returns the current mouse position.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_mouse_position)
function ui.get_mouse_position() end

---
---Returns a table of pointers to hotkeys.
---
---@return hotkey_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_binds)
function ui.get_binds() end

---
---Returns the color of the Style Option.
---
---@param name string
---@return color_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_style)
function ui.get_style(name) end

---
---Returns a table with the style options.
---
---@return style_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_style)
function ui.get_style() end

---
---Returns the unicode converted string corresponding the fontawesome icon.
---
---@param name string
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#get_icon)
function ui.get_icon(name) end

---
---Creates and returns a menu group object.
---
---@param group string # Group name
---@return menu_group
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#create)
function ui.create(group) end

---
---Creates and returns a menu group object.
---
---@param tab string # Tab name
---@param group string # Group name
---@param column? number # Optional. Column ID (`1`: Left `2`: Right or `nil` for automatic alignment).
---@return menu_group
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#create)
function ui.create(tab, group, column) end

---
---ToDo: Declare every single menu element to for better usage and to prevent ESPGroup and MenuItem overlap.
---

---
---Returns the `MenuItem` object that corresponds to the specified path.
---
---@param group_name string # Global group name, e.g. "Settings".
---@param item_name string # Item name, e.g. "Dpi Scale".
---@return menu_item
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#find)
function ui.find(group_name, item_name) end

---
---Returns the `MenuGroup` object that corresponds to the specified path.
---
---@param category string # Category name, e.g. "Aimbot" or "Visuals".
---@param tab string # Tab name that belongs to the category.
---@param sub_tab? string # Sub-tab name.
---@param group? string # Name of the needed group.
---@return menu_group
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#find)
function ui.find(category, tab, sub_tab, group) end

---
---Returns the `MenuItem` object that corresponds to the specified path.
---
---@param category string # Category name, e.g. "Aimbot" or "Visuals".
---@param tab string # Tab name that belongs to the category.
---@param sub_tab? string # Sub-tab name.
---@param group string # Name of group with the item.
---@param item string # The needed item.
---@param sub_item? string # The sub-item in the item group.
---@return menu_item
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#find)
function ui.find(category, tab, sub_tab, group, item, sub_item) end

---
---Returns the `ESPGroup` object that corresponds to the specified path.
---
---@param category string # Category name, e.g. "Aimbot" or "Visuals".
---@param tab string # Tab name that belongs to the category.
---@param sub_tab string # Sub-tab name.
---@param group string # Name of group with the item.
---@param item_category string # The item category in the group.
---@param item string # The needed item.
---@return esp_group
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#find)
function ui.find(category, tab, sub_tab, group, item_category, item) end

---
---Sets the sidebar tab name and an icon.
---
---@param name? string # Optional. Sidebar tab name
---@param icon_name? string # Optional. Icon name (Brand icons are currently not supported)
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#sidebar)
function ui.sidebar(name, icon_name) end

---
---Gets the sidebar tab name and icon.
---
---@return string, string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#sidebar)
function ui.sidebar() end

---
---Returns the localized string for the specified language code. If `localized` is present, the `str` will be localized accordingly.
---
---@param lang string # Language code.
---@param str string # String to localize or to get the localized string from.
---@param localized? string # Optional. The localized variant.
---@return string|nil
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/ui#localize)
function ui.localize(lang, str, localized) end

return ui