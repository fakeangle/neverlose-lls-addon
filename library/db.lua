---@meta database

---@type table<string, table>
---
---Indexing database keys is a heavy process. Do not do it inside callbacks that are called a lot of times per second.
---
---[View documents](https://lua.neverlose.cc/documentation/variables/db)
db = {}

return db