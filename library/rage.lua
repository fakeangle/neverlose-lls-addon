---@meta rage

---@class antiaim
local antiaim = {}

---
---Returns the maximum amount of desync.
---
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#get_max_desync)
function antiaim:get_max_desync() end

---
---Returns the current anti-aim rotation.
---
---@param value? boolean # Optional. If `true`, fake rotation will be returned.
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#get_rotation)
function antiaim:get_rotation(value) end

---
---Returns the at target yaw rotation or nil if not available.
---
---@param return_fr? boolean # Optional. If `true`, freestanding yaw will be returned.
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#get_target)
function antiaim:get_target(return_fr) end

---
---Gets or sets the state of the anti-aim inverter.
---
---@param value? boolean # Optional. Inverter state.
---@return boolean
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#inverter)
function antiaim:inverter(value) end

---
---Overrides the hidden pitch to the desired value.
---
---@param value number # Hidden pitch value.
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#override_hidden_pitch)
function antiaim:override_hidden_pitch(value) end

---
---Overrides the hidden yaw offset to the desired value.
---
---@param value number # Hidden yaw offset value.
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#override_hidden_yaw_offset)
function antiaim:override_hidden_yaw_offset(value) end

---@class exploit
local exploit = {}

---
---Returns the exploit charge as a unit interval (value in the range [0, 1]).
---
---@return number
---@nodiscard
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#get)
function exploit:get() end

---
---Allows/blocks exploit charge.
---
---@param value? boolean # Optional. If `true`, allows exploit charge. If `false`, blocks exploit charge. Defaults to `true`
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#allow_charge)
function exploit:allow_charge(value) end

---
---Allows/blocks defensive exploit discharge.
---
---@param value? boolean # Optional. If `true`, allows the cheat to discharge defensive exploit. If `false`, blocks defensive exploit discharge. Defaults to `true`
---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#allow_defensive)
function exploit:allow_defensive(value) end

---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#force_teleport)
function exploit:force_teleport() end

---
---[View documents](https://docs-csgo.neverlose.cc/documentation/variables/rage#force_charge)
function exploit:force_charge() end

---@class rage
---@field antiaim antiaim
---@field exploit exploit
rage = {}

return rage