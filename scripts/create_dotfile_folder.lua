#!/usr/bin/env lua

-- Check if folder name argument is provided
if #arg < 1 then
    print("Usage: lua create_dotfile_folder.lua <folder-name>")
    os.exit(1)
end

local folder_name = arg[1]

-- Get home directory
local home_dir = os.getenv("HOME")
if not home_dir then
    print("Error: Could not determine home directory")
    os.exit(1)
end

-- Construct paths
local dotfiles_dir = home_dir .. "/dotfiles"
local new_folder_path = dotfiles_dir .. "/" .. folder_name
local config_dir_path = new_folder_path .. "/.config"
local final_config_path = config_dir_path .. "/" .. folder_name

-- Function to create directory if it doesn't exist
local function create_dir_if_not_exists(path)
    local success, err = os.execute("mkdir -p '" .. path .. "'")
    if not success then
        print("Error creating directory '" .. path .. "': " .. (err or "unknown error"))
        return false
    end
    return true
end

-- Create the directory structure
print("Creating directory structure...")

-- Create ~/dotfiles if it doesn't exist
if not create_dir_if_not_exists(dotfiles_dir) then
    os.exit(1)
end

-- Create ~/dotfiles/[folder-name]
if not create_dir_if_not_exists(new_folder_path) then
    os.exit(1)
end

-- Create ~/dotfiles/[folder-name]/.config
if not create_dir_if_not_exists(config_dir_path) then
    os.exit(1)
end

-- Create ~/dotfiles/[folder-name]/.config/[folder-name]
if not create_dir_if_not_exists(final_config_path) then
    os.exit(1)
end

print("Successfully created directory structure:")
print("  " .. final_config_path) 