require("vish.remap")
require("vish.packer")

-- Function to source all Lua files in the after/plugin directory
local function load_config_files()
    local config_path = vim.fn.stdpath('config') .. '/after/plugin'
    local files = vim.fn.glob(config_path .. '/*.lua', true, true)
    
    for _, file in ipairs(files) do
        pcall(dofile, file)
    end
end

-- Call the function to load configuration files
load_config_files()
