---@meta entity

---@class animation_state_t
---@field abs_yaw number
---@field abs_yaw_last number
---@field acceleration vector_object
---@field acceleration_weight number
---@field action_weight_bias_remainder number
---@field adjust_started boolean
---@field aim_matrix_transition number
---@field aim_matrix_transition_delay number
---@field aim_pitch_max number
---@field aim_pitch_min number
---@field aim_yaw_max number
---@field aim_yaw_min number
---@field anim_duck_amount number
---@field animstate_model_version number
---@field cached_model_index number
---@field camera_smooth_height number
---@field crouch_walk_aim userdata
---@field defuse_started boolean
---@field duck_additional number
---@field duration_in_air number
---@field duration_move_weight_is_too_high number
---@field duration_moving number
---@field duration_still number
---@field duration_strafing number
---@field eye_pitch number
---@field eye_position_smooth_lerp number
---@field eye_yaw number
---@field feet_crossed boolean
---@field first_foot_plant_since_init boolean
---@field first_run_since_init boolean
---@field flashed boolean
---@field foot_left userdata
---@field foot_lerp number
---@field foot_right userdata
---@field in_air_smooth_value number
---@field jump_to_fall number
---@field ladder_speed number
---@field ladder_weight number
---@field land_anim_multiplier number
---@field landed_on_ground_this_frame boolean
---@field landing boolean
---@field last_foot_plant_update number
---@field last_rendered_eye_z number
---@field last_time_velocity_over_ten number
---@field last_update_frame number
---@field last_update_increment number
---@field last_update_time number
---@field last_velocity_test_time number
---@field layer_order_preset userdata
---@field left_ground_height number
---@field left_the_ground_this_frame boolean
---@field move_weight number
---@field move_weight_smoothed number
---@field move_yaw number
---@field move_yaw_current_to_ideal number
---@field move_yaw_ideal number
---@field next_twitch_time number
---@field on_ground boolean
---@field on_ladder boolean
---@field plant_anim_started boolean
---@field player ent
---@field player_is_accelerating boolean
---@field pose_param_mappings userdata
---@field position_current vector_object
---@field position_last vector_object
---@field previous_move_state number
---@field primary_cycle number
---@field recrouch_weight number
---@field smooth_height_valid boolean
---@field speed_as_portion_of_crouch_top_speed number
---@field speed_as_portion_of_run_top_speed number
---@field speed_as_portion_of_walk_top_speed number
---@field stand_run_aim userdata
---@field stand_walk_aim userdata
---@field static_approach_speed number
---@field step_height_left number
---@field step_height_right number
---@field strafe_change_cycle number
---@field strafe_change_target_weight number
---@field strafe_change_weight number
---@field strafe_change_weight_smooth_fall_off number
---@field strafe_changing boolean
---@field strafe_sequence number
---@field stutter_step number
---@field target_acceleration vector_object
---@field time_of_last_known_injury number
---@field time_to_align_lower_body number
---@field twitch_anim_started boolean
---@field velocity vector_object
---@field velocity_last vector_object
---@field velocity_length_xy number
---@field velocity_length_z number
---@field velocity_normalized vector_object
---@field velocity_normalized_non_zero vector_object
---@field walk_run_transition number
---@field walk_to_run_transition_state boolean
---@field weapon ent
---@field weapon_last ent
---@field weapon_last_bone_setup ent
local animation_state_t = {}

---@class animation_layer_t
---@field activity number
---@field cycle number
---@field dispatched_dst number
---@field dispatched_src number
---@field dispatched_studio_hdr userdata
---@field invalidate_physics_bits number
---@field layer_animtime number
---@field layer_fade_outtime number
---@field order number
---@field owner ent
---@field playback_rate number
---@field prev_cycle number
---@field sequence number
---@field weight number
---@field weight_delta_rate number
local animation_layer_t = {}

---@class sim_ctx
---@field origin vector_object
---@field velocity vector_object
---@field view_offset number
---@field duck_amount number
---@field did_hit_collision boolean
---@field obb_mins vector_object
---@field obb_maxs vector_object
---@field move vector_object
---@field simulation_ticks number
---@field gravity_per_apply number
---@field original_max_speed number
---@field max_speed number
---@field is_speed_cropped boolean
---@field velocity_modifier number
---@field duck_speed number
---@field stamina number
---@field surface_friction number
---@field trace trace_t
local sim_ctx = {}

---@class weapon_info_t
---@field max_player_speed number
---@field max_player_speed_alt number
---@field attack_move_speed_factor number
---@field spread number
---@field spread_alt number
---@field inaccuracy_crouch number
---@field inaccuracy_crouch_alt number
---@field inaccuracy_stand number
---@field inaccuracy_stand_alt number
---@field inaccuracy_jump_initial number
---@field inaccuracy_jump_apex number
---@field inaccuracy_jump number
---@field inaccuracy_jump_alt number
---@field inaccuracy_land number
---@field inaccuracy_land_alt number
---@field inaccuracy_ladder number
---@field inaccuracy_ladder_alt number
---@field inaccuracy_fire number
---@field inaccuracy_fire_alt number
---@field inaccuracy_move number
---@field inaccuracy_move_alt number
---@field inaccuracy_reload number
---@field recoil_seed number
---@field recoil_angle number
---@field recoil_angle_alt number
---@field recoil_angle_variance number
---@field recoil_angle_variance_alt number
---@field recoil_magnitude number
---@field recoil_magnitude_alt number
---@field recoil_magnitude_variance_alt number
---@field spread_seed number
---@field recovery_time_crouch number
---@field recovery_time_stand number
---@field recovery_time_crouch_final number
---@field recovery_time_stand_final number
---@field recovery_transition_start_bullet number
---@field recovery_transition_end_bullet number
---@field unzoom_after_shot boolean
---@field hide_view_model_zoomed boolean
---@field zoom_level number
---@field zoom_fov userdata
---@field zoom_time userdata
---@field weapon_class string
---@field has_burst_mode boolean
---@field is_revolver boolean
---@field recoil_magnitude_variance number
---@field weapon_name string
---@field weapon_type number
---@field weapon_price number
---@field console_name string
---@field max_clip1 number
---@field max_clip2 number
---@field world_model string
---@field view_model string
---@field dropped_model string
---@field hud_name string
---@field kill_award number
---@field cycle_time number
---@field cycle_time_alt number
---@field time_to_idle number
---@field full_auto boolean
---@field damage number
---@field headshot_multiplier number
---@field armor_ratio number
---@field bullets number
---@field penetration number
---@field range number
---@field range_modifier number
---@field throw_velocity number
---@field has_silencer boolean
local weapon_info_t = {}

---
---ToDo: Add all valid netprops 
---
---@class ent
---@field [0] userdata
local ent = {}

---
---Returns `true` if the entity is a player entity.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_player)
function ent:is_player() end

---
---Returns `true` if the entity is a weapon entity.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_weapon)
function ent:is_weapon() end

---
---Returns `true` if the entity is dormant.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_dormant)
function ent:is_dormant() end

---
---Returns `true` if the entity is a bot.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_bot)
function ent:is_bot() end

---
---Returns `true` if the entity is alive.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_alive)
function ent:is_alive() end

---
---Returns `true` if the entity is an enemy.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_enemy)
function ent:is_enemy() end

---
---Returns `true` if the entity is visible.
---
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_visible)
function ent:is_visible() end

---
---If the to_entity is nil, the local player is checked. Returns `true` if the entity is completely occluded for the current entity.
---
---@param to_entity? boolean # Optional. The entity that will be checked for occlusion
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#is_occluded)
function ent:is_occluded(to_entity) end

---
---Returns the index of the entity.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_index)
function ent:get_index() end

---
---Returns the player name, weapon name or class name if the entity is neither of those.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_name)
function ent:get_name() end

---
---Returns the position vector of the entity.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_origin)
function ent:get_origin() end

---
---Returns the absolute angles of the entity.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_angles)
function ent:get_angles() end

---
---Returns a table containing `current` and `old` simulation time values.
---
---@return table
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_simulation_time)
function ent:get_simulation_time() end

---
---Returns the name of the entity's class.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_classname)
function ent:get_classname() end

---
---Returns the ID of the entity's class.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_classid)
function ent:get_classid() end

---
---Returns a table containing all materials used by the entity.
---
---@return table
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_materials)
function ent:get_materials() end

---
---Returns the model name of the entity.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_model_name)
function ent:get_model_name() end

---
---Returns the network state of the player.
---
---`0` — The entity is `not dormant`
---
---`1` — The entity is dormant but the cheat has 100% info where the player is
---
---`2` — The entity is dormant (updated by `Shared ESP`)
---
---`3` — The entity is dormant (updated by `Sounds`)
---
---`4` — The entity is dormant (not updated)
---
---`5` — The entity is dormant (data is `unavailable` or `too old`)
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_network_state)
function ent:get_network_state() end

---
---Returns a table containing `pos1`, `pos2`, and `alpha` values.
---
---@return { pos1: vector_object, pos2: vector_object, alpha: number }
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_bbox)
function ent:get_bbox() end

---
---Returns a table containing information from the `player_info_t` structure of the entity.
---
---@return { is_hltv: boolean, is_fake_player: boolean, steamid: number, steamid64: number, userid: number, files_downloaded: number }
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_player_info)
function ent:get_player_info() end

---
---Returns a pointer to the player's weapon entity.
---
---If `all_weapons` is `true`, returns a table containing pointers to every weapon entity the player is currently carrying.
---
---@param all_weapons? boolean # If `true` then all weapons will be included
---@return ent|table
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_player_weapon)
function ent:get_player_weapon(all_weapons) end

---
---Returns a table containing information about the animation state of the player.
---
---@return animation_state_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_anim_state)
function ent:get_anim_state() end

---
---Returns a table containing information about the specified animation layer. Pass `nil` to get every animation layer.
---
---@param idx? number # Index of the animation layer
---@return animation_layer_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_anim_overlay)
function ent:get_anim_overlay(idx) end

---
---Returns the eye position of the player.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_eye_position)
function ent:get_eye_position() end

---
---Returns the position of the specified bone.
---
---@param idx number # Index of the bone
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_bone_position)
function ent:get_bone_position(idx) end

---
---Returns the position of the specified hitbox.
---
---@param idx number # Index of the hitbox
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_hitbox_position)
function ent:get_hitbox_position(idx) end

---
---Returns a pointer to the Steam avatar image object of the specified entity.
---
---@return image_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_steam_avatar)
function ent:get_steam_avatar() end

---
---Returns the Steam ID of the player.
---
---@return string
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_xuid)
function ent:get_xuid() end

---
---Returns the pointer to the CCSPlayerResource instance attached to the player, or nil if none exists.
---
---@return ent entity
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_resource)
function ent:get_resource() end

---
---Returns a table of pointers to the players that are currently spectating the specified player.
---
---@return table
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_spectators)
function ent:get_spectators() end

---
---Sets an icon in the scoreboard next to the specified player's avatar. The icon will be removed if no icon was provided.
---
---@param icon? string # Optional. URL to the icon or a panorama path.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#set_icon)
function ent:set_icon(icon) end

---
---This function allows you to simulate players' movement by optionally providing an origin, velocity, and flags. Returns an instance of the `sim_ctx` class containing details and tools for the movement simulation.
---
---@param origin? vector_object # Specifies the origin from which the movement should be simulated. If not provided, it uses the player's current origin.
---@param velocity? vector_object # Specifies the velocity vector for the simulated movement. If not provided, the function will use the player's current velocity as the default for the simulation.
---@param flags? number # Specifies the m_fFlags 32-bit mask for prediction. If not provided, it uses the player's current `m_fFlags` value.
---@return sim_ctx
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#simulate_movement)
function ent:simulate_movement(origin, velocity, flags) end

---
---Simulates the player's movement for a specified number of ticks. If not specified, it defaults to simulating for 1 tick.
---
---@param ticks? number
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#think)
function sim_ctx:think(ticks) end

---
---Returns the index of the weapon.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_weapon_index)
function ent:get_weapon_index() end

---
---Returns the icon of the weapon.
---
---@return image_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_weapon_icon)
function ent:get_weapon_icon() end

---
---Returns a pointer to the CCSWeaponInfo struct of the weapon.
---
---@return weapon_info_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_weapon_info)
function ent:get_weapon_info() end

---
---Returns a pointer to the weapon owner's entity.
---
---@return ent entity
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_weapon_owner)
function ent:get_weapon_owner() end

---
---Returns the weapon reload percentage (0.0-1.0), -1 if not reloading.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_weapon_reload)
function ent:get_weapon_reload() end

---
---Returns the maximum speed the player can move with the weapon.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_max_speed)
function ent:get_max_speed() end

---
---Returns the spread of the weapon in radians.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_spread)
function ent:get_spread() end

---
---Returns the inaccuracy of the weapon in radians.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_inaccuracy)
function ent:get_inaccuracy() end

---@class entity
entity = {}

---
---Returns a pointer to the specified entity.
---
---@param idx number # Index of the entity
---@param by_userid? boolean # If `true` then `idx` will be perceived as a userid
---@return ent entity
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get)
function entity.get(idx, by_userid) end

---
---Returns a pointer to the local player.
---
---@return ent entity
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_local_player)
function entity.get_local_player() end

---
---If the callback is nil, it returns the table of pointers to player entities. Otherwise the callback will be called. Access the player pointer using the arguments of the specified callback.
---
---@param enemies_only? boolean # If `true` then only enemies will be included
---@param include_dormant? boolean # If `true` then dormant players will be included
---@param callback? function # A callback with an entity pointer as the argument
---@return { [number]: ent } players
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_players)
function entity.get_players(enemies_only, include_dormant, callback) end

---
---If the callback is nil, it returns the table of pointers to entities. Otherwise the callback will be called. Access the entity pointer using the arguments of the specified callback.
---
---@param class? number|string # Either a name or an ID of the needed class. Pass `nil` to get every entity.
---@param include_dormant? boolean # If `true` then dormant players will be included
---@param callback? function # A callback with an entity pointer as the argument
---@return { [number]: ent } entities
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_entities)
function entity.get_entities(class, include_dormant, callback) end

---
---Returns a pointer to the current threat.
---
---@param hittable? boolean # If `true` then returns a pointer to the player that can hit you
---@return ent entity
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_threat)
function entity.get_threat(hittable) end

---
---Returns the pointer to the CCSGameRulesProxy instance, or nil if none exists.
---
---@return ent entity
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_game_rules)
function entity.get_game_rules() end

---
---Returns the pointer to the CCSPlayerResource instance, or nil if none exists.
---
---@return ent entity
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/entity#get_player_resource)
function entity.get_player_resource() end

return ent