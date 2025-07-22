---@meta materials

---@class material
local material = {}

---
---Returns the name of the material.
---
---@return string
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#get_name)
function material:get_name() end

---
---Returns the texture group name of the material.
---
---@return string
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#get_texture_group_name)
function material:get_texture_group_name() end

---
---Gets or sets the value of the material var flag.
---
---@param flag number # Material var flag
---@param value? boolean # New material var flag value
---@return boolean
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#var_flag)
function material:var_flag(flag, value) end

---
---Gets or sets the value of the material shader parameter.
---
---@param name string # Shader parameter name
---@param value? any # New shader parameter value
---@return any
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#shader_param)
function material:shader_param(name, value) end

---
---Gets or sets the material color modulation value.
---
---@param color? color_object # New color modulation value
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#color_modulate)
function material:color_modulate(color) end

---
---Gets or sets the material alpha modulation value.
---
---@param alpha? number # New alpha modulation value
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#alpha_modulate)
function material:alpha_modulate(alpha) end

---
---Returns `true` if the material is valid.
---
---@return boolean
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#is_valid)
function material:is_valid() end

---
---Resets the material properties to its original values along with discarding the override.
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#reset)
function material:reset() end

---
---Overrides material properties to properties from another material without setting them.
---
---@param mat material # Material object with the needed properties
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#override)
function material:override(mat) end

---@class materials
materials = {}

---
---Returns the material object in the specified path.
---
---@param path string # Directory to the specified material
---@param force_load? boolean # Loads the material if not loaded
---@return material
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#get)
function materials.get(path, force_load) end

---
---If the callback is nil, it returns the table of material objects along the specified path. Otherwise the callback will be called. Access the material object using the arguments of the specified callback.
---
---@param partial_path string # Directory to the specified materials
---@param force_load? boolean # Loads each material if not loaded
---@param callback? function # A callback with a pointer to the material object as the argument
---@return table
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#get_materials)
function materials.get_materials(partial_path, force_load, callback) end

---
---Creates and returns a new material object.
---
---@param name string # New material name
---@param key_values string # New material values
---@return material
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/materials#create)
function materials.create(name, key_values) end

return materials