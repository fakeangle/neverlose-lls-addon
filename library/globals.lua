---@meta globals

---@class globals
---@field curtime number # Server time in seconds.
---@field realtime number # Local time in seconds.
---@field frametime number # Duration of the last game frame in seconds.
---@field framecount number # Amount of frames since the game started.
---@field absoluteframetime number # Duration of the last game frame in seconds.
---@field tickcount number # Number of ticks elapsed on the server.
---@field tickinterval number # Duration of a tick in seconds.
---@field max_players number # Maximum number of players on the server.
---@field is_connected boolean # Returns `true` if the player is connected, but not necessarily active in game (could still be loading).
---@field is_in_game boolean # Returns `true` if the player is currently connected to a game server.
---@field choked_commands number # Number of choked commands.
---@field commandack number # Current command number acknowledged by server.
---@field commandack_prev number # Sequence number of last outgoing command.
---@field last_outgoing_command number # Number of last command sequence number acknowledged by server.
---@field server_tick number # Last-received tick from the server.
---@field client_tick number # The client's own tick count.
---@field delta_tick number # Last-valid received snapshot (server) tick.
---@field clock_offset number # Difference between the server and client tick counts, used to predict the current server tick count.
globals = {}

return globals