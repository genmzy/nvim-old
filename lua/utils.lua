--
-- string split function
--
string.split = function(s, p)
    local t = {}
    string.gsub(s, '[^'..p..']+', function(w) table.insert(t, w) end )
    return t
end
