---@meta vector

---@class vector_object
---@field x number
---@field y number
---@field z number
local vector_object = {}

---
---@param x? number
---@param y? number
---@param z? number
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector)
function vector(x, y, z) end

---
---Converts the angle into a forward vector overwriting the vector's coordinates. Returns itself.
---
---@param pitch number # Pitch component of the angle
---@param yaw number # Yaw component of the angle
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#angles)
function vector_object:angles(pitch, yaw) end

---
---Converts the angle into a forward vector overwriting the vector's coordinates. Returns itself.
---
---@param angle vector_object # Angle vector component
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#angles)
function vector_object:angles(angle) end

---
---Returns the angle vector representing the normal of the vector.
---
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#angles)
function vector_object:angles() end

---
---Ceils & overwrites the x, y, and z coordinates of a vector. Returns itself.
---
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#ceil)
function vector_object:ceil() end

---
---Creates and returns a copy of the vector.
---
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#clone)
function vector_object:clone() end

---
---Returns the vector of the closest point along a ray.
---
---@param ray_start vector_object # Ray start position
---@param ray_end vector_object # Ray end position
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#closest_ray_point)
function vector_object:closest_ray_point(ray_start, ray_end) end

---
---Returns the cross product of two given vectors.
---
---@param other vector_object # The vector to calculate the cross product with
---@return vector_object vector
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#cross)
function vector_object:cross(other) end

---
---Returns the Euclidean distance between the two given vectors.
---
---@param other vector_object # The vector to get the distance to
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#dist)
function vector_object:dist(other) end

---
---Returns the 2D distance to another vector.
---
---@param other vector_object # The vector to get the distance to
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#dist2d)
function vector_object:dist2d(other) end

---
---Returns the squared 2D distance to another vector.
---
---@param other vector_object # The vector to get the squared distance to
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#dist2dsqr)
function vector_object:dist2dsqr(other) end

---
---Returns the squared Euclidean distance to another vector.
---
---@param other vector_object # The vector to get the squared distance to
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#distsqr)
function vector_object:distsqr(other) end

---
---Returns the distance to a ray.
---
---@param ray_start vector_object # Ray start position
---@param ray_direction vector_object # Ray direction
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#dist_to_ray)
function vector_object:dist_to_ray(ray_start, ray_direction) end

---
---Returns the dot product of the two given vectors.
---
---@param other vector_object # The vector to calculate the dot product with
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#dot)
function vector_object:dot(other) end

---
---Rounds the x, y, and z coordinates of the vector down to the largest integer that is less than or equal. Returns itself.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#floor)
function vector_object:floor() end

---
---Returns true if the vector is within the given distance to another vector.
---
---@param other vector_object # The vector to calculate the distance to
---@param range number # The distance
---@return boolean
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#in_range)
function vector_object:in_range(other, range) end

---
---Overwrites the vector's coordinates. Returns itself.
---
---@param x number # New X coordinate
---@param y number # New Y coordinate
---@param z number # New Z coordinate
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#init)
function vector_object:init(x, y, z) end

---
---Returns the Euclidean length of the vector.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#length)
function vector_object:length() end

---
---Returns the length of the vector in two dimensions, without the Z axis.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#length2d)
function vector_object:length2d() end

---
---Returns the squared length of the vectors x and y value.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#length2dsqr)
function vector_object:length2dsqr() end

---
---Returns the squared length of the vector.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#lengthsqr)
function vector_object:lengthsqr() end

---
---Returns the linearly interpolated vector between two vectors by the specified weight.
---
---@param other vector_object # The vector to interpolate to
---@param weight number # A value between 0 and 1 that indicates the weight of `other`
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#lerp)
function vector_object:lerp(other, weight) end

---
---Normalizes the vector and returns the length of the vector.
---
---@return number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#normalize)
function vector_object:normalize() end

---
---Returns a vector with the same direction as the specified vector, but with a length of one.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#normalized)
function vector_object:normalized() end

---
---Multiplies the vector by the specified scalar.
---
---@param scalar number # The scalar value
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#scale)
function vector_object:scale(scalar) end

---
---Returns a copy of the vector multiplied by the specified scalar.
---
---@param scalar number # The scalar value
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#scaled)
function vector_object:scaled(scalar) end

---
---Returns the forward vector from itself to another vector.
---
---@param other vector_object # The vector to get the direction to.
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#to)
function vector_object:to(other) end

---
---Returns a vector containing the coordinates where the specified position vector appears on the screen.
---
---@return vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#to_screen)
function vector_object:to_screen() end

---
---Returns the x, y, and z coordinates of the vector. Note that these fields can be accessed by indexing x, y, and z.
---
---@return number, number, number
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#unpack)
function vector_object:unpack() end

---
---Returns the right and up vector of a forward vector.
---
---@return vector_object, vector_object
---@nodiscard
---
---[View documents](https://lua.neverlose.cc/documentation/variables/vector#vectors)
function vector_object:vectors() end

return vector_object