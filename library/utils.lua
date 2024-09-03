---@meta utils

---@enum trace_type
local trace_type = {
    Everything = 0,
    World = 1,
    Entities = 2,
    EverythingFilterProps = 3,
}

---@class trace_t
---@field start_pos vector_object # Start position
---@field end_pos vector_object # Final position
---@field plane { normal: vector_object, dist: number, type: number, signbits: number } # Surface normal at impact. Contains `normal`, `dist`, `type`, and `signbits` values
---@field fraction number # Percentage in the range [0.0, 1.0]. How far the trace went before hitting something. `1.0` - didn't hit anything
---@field contents number # Contents on other side of surface hit
---@field disp_flags number # Displacement flags for marking surfaces with data
---@field all_solid boolean # Returns `true` if the plane is invalid
---@field start_solid boolean # Returns `true` if the initial point was in a solid area
---@field fraction_left_solid number # Percentage in the range [0.0, 1.0]. How far the trace went before leaving solid. Only valid if we started in solid
---@field surface { name: string, props: number, flags: number } # Surface hit (impact surface). Contains `name`, `props`, and `flags` values
---@field hitgroup number # `0` - generic, non-zero is specific body part
---@field physics_bone number # Physics bone that was hit by the trace
---@field world_surface_index number # Index of the msurface2_t, if applicable
---@field entity ent # Entity that was hit by the trace
---@field hitbox number # Box that was hit by the trace
---@field did_hit function # Returns `true` if there was any kind of impact at all
---@field did_hit_world function # Returns `true` if the `entity` points at the world entity
---@field did_hit_non_world function # Returns `true` if the trace hit something and it wasn't the world
---@field is_visible function # Returns `true` if the final position is visible
local trace_t = {}

---
---Returns the `outgoing` flow
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#netchannel)
---@alias outgoing_flow number

---
---Returns the `incoming` flow
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#netchannel)
---@alias incoming_flow number

---@alias channels { [0]: outgoing_flow, [1]: incoming_flow }

---@class net_channel
---@field time number # Current network time.
---@field time_connected number # Connection time in seconds.
---@field time_since_last_received number # Time since last received packet in seconds.
---@field is_loopback boolean # Returns `true` if server is a loopback (local server).
---@field is_playback boolean # Returns `true` if demo is being played.
---@field is_timing_out boolean # Returns `true` if client is timing out.
---@field sequence_nr channels # Last sent sequence number.
---@field latency channels # Current latency (RTT), more accurate but jittering.
---@field avg_latency channels # Average latency in seconds.
---@field loss channels # Percentage in the range [0.0, 1.0] of the current packet loss.
---@field choke channels # Percentage in the range [0.0, 1.0] of the current packet choke.
---@field packets channels # Average amount of packets/sec.
---@field data channels # Data flow in bytes/sec.
---@field total_packets channels # Total amount of packets/sec.
---@field total_data channels # Total data flow in bytes/sec.
local net_channel = {}

---
---Returns a table containing `rate`, `name`, `address`, `frame_time`, and `deviation` (or nil on failure).
---
---@return { rate: number, name: string, address: string, frame_time: number, deviation: number }
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#get_server_info)
function net_channel:get_server_info() end

---
---Returns `true` if the packet is valid.
---
---@params flow number # Channel (Flow)
---@params frame number # Sequence number
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#is_valid_packet)
function net_channel:is_valid_packet(flow, frame) end

---
---Returns the time when the packet was sent.
---
---@params flow number # Channel (Flow)
---@params frame number # Sequence number
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#get_packet_time)
function net_channel:get_packet_time(flow, frame) end

---
---Returns the group size of this packet.
---
---@params flow number # Channel (Flow)
---@params frame number # Sequence number
---@params group number # Group of this packet
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#get_packet_bytes)
function net_channel:get_packet_bytes(flow, frame, group) end

---
---Returns `latency_msecs`, `choke` of this packet.
---
---@params flow number # Channel (Flow)
---@params frame number # Sequence number
---@return number, number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#get_packet_response_latency)
function net_channel:get_packet_response_latency(flow, frame) end

---@class utils
utils = {}

---
---Executes a console command. Multiple commands can be combined with ';'. Be careful when passing user input (including usernames) to it.
---
---@param cmd string # The console command(s) to execute
---@param ... any # Comma-separated arguments to concatenate with cmd
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#console_exec)
function utils.console_exec(cmd, ...) end

---
---Executes the callback after delay seconds, passing the arguments to it.
---
---@param delay number # Time in seconds to wait before calling callback
---@param callback function # The Lua function that will be called after the delay
---@param ... any # Arguments that will be passed to the callback
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#execute_after)
function utils.execute_after(delay, callback, ...) end

---
---Returns the `NetChannel` struct.
---
---@return net_channel
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#net_channel)
function utils.net_channel() end

---
---Returns a `trace` struct containing all the information.
---
---@param from vector_object # Vector to start tracing from
---@param to vector_object # Vector to trace to
---@param skip? ent | ent[] | function # Optional. Entity skipping options
---@param mask? number # Optional. Trace mask
---@param type? trace_type # Optional. Trace type [0-3].
---@return trace_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#trace_line)
function utils.trace_line(from, to, skip, mask, type) end

---
---Returns a `trace` struct containing all the information.
---
---@param from vector_object # Vector to start tracing from
---@param to vector_object # Vector to trace to
---@param mins vector_object # Hull mins
---@param maxs vector_object # Hull maxs
---@param skip? ent | ent[] | function # Optional. Entity skipping options
---@param mask? number # Optional. Trace mask
---@param type? trace_type # Optional. Trace type [0-3].
---@return trace_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#trace_hull)
function utils.trace_hull(from, to, mins, maxs, skip, mask, type) end

---
---Returns the `damage`, `trace` arguments.
---
---@param from_entity ent # Player whose weapon will be used for this trace
---@param from vector_object # Vector to start tracing from
---@param to vector_object # Vector to trace to
---@param skip? ent | ent[] | function # Optional. Entity skipping options. If not passed, the skip entity will be `from_entity`
---@return number, trace_t
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#trace_bullet)
function utils.trace_bullet(from_entity, from, to, skip) end

---
---Returns a pointer to the specified pattern if it was found. Otherwise returns `nil`.
---
---@param module string # Module name, in which the signature will be scanned.
---@param signature string # IDA style signature, the wildcard is "`?`"
---@param offset? number # Optional offset to apply to the pointer address.
---@return userdata
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#opcode_scan)
function utils.opcode_scan(module, signature, offset) end

---
---Returns a pointer to the specified interface if it was found. Otherwise returns `nil`.
---
---@param module string # Module name containing the interface.
---@param interface string # Interface name.
---@return userdata
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#create_interface)
function utils.create_interface(module, interface) end

---
---Returns the offset of the specified prop. Can be used to manually navigate to the net prop.
---
---@param table string # Datatable name
---@param prop string # Prop name
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#get_netvar_offset)
function utils.get_netvar_offset(table, prop) end

---
---Creates and returns a wrapper function that calls a virtual table function on the specified index.
---
---@param index number # Virtual table index of the function.
---@param ... any # FFI C Type definition.
---@return function
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#get_vfunc)
function utils.get_vfunc(index, ...) end

---
---Creates and returns a wrapper function that calls a virtual table function from the specified interface on the specified index.
---
---@param module string # Module name containing the interface.
---@param interface string # Interface name.
---@param index number # Virtual table index of the function.
---@param ... any # FFI C Type definition.
---@return function
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#get_vfunc-1)
function utils.get_vfunc(module, interface, index, ...) end

---
---Returns a random integer value.
---
---@param min number # Minimum boundary for the random value, included
---@param max number # Maximum boundary for the random value, included
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#random_int)
function utils.random_int(min, max) end

---
---Returns a random float value.
---
---@param min number # Minimum boundary for the random value, included
---@param max number # Maximum boundary for the random value, included
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#random_float)
function utils.random_float(min, max) end

---
---Sets the new random seed.
---
---@param seed number # New random seed value
---
---[View documents](https://lua.neverlose.cc/documentation/variables/utils#random_seed)
function utils.random_seed(seed) end

return utils