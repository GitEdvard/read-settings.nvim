local path = vim.fn.getcwd() .. "/" .. "dapsettings.json"
local file = io.open(path, "r")
local myTable = {}
if file then
    local contents = file:read("*a")
    myTable = vim.json.decode(contents)
    io.close(file)
else
    myTable = nil
end
require'dap'.configurations.python = myTable
P(myTable)
