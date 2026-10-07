--[[
Embedded pictures: one image per celebration (a saint's portrait, an icon of a
feast), from texts/pictures/.

Optional like the other texts: a package without the folder shows none.
texts/pictures/index.lua maps a celebration id to { file, credit }; the file
is a small greyscale JPEG in the same folder, the credit names the work, its
author and its licence (written by tools/curation/saint_pictures.py from
Wikimedia Commons).
]]

local Pictures = {}
Pictures.__index = Pictures

Pictures.DIR = "texts/pictures"

function Pictures.new(source)
    return setmetatable({ index = source:find(Pictures.DIR .. "/index") or {} }, Pictures)
end

--- The picture of a celebration { file, credit }, or nil. The file name is
--- relative to Pictures.DIR.
function Pictures:of(celebration_id)
    return self.index[celebration_id]
end

return Pictures
