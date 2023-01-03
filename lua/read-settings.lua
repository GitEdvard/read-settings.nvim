local M = {}
M.read_json = function(file_name)
    local path = vim.fn.getcwd() .. "/" .. file_name
    local file = io.open(path, "r")
    local my_table = {}
    if file then
        local contents = file:read("*a")
        my_table = vim.json.decode(contents)
        io.close(file)
    else
        my_table = nil
    end
    return my_table
end
return M
