atl_server_bed_tp = {}
atl_server_bed_tp.modpath = minetest.get_modpath("atl_server_bed_tp")

function atl_server_bed_tp.load_file(path)
    local status, err = pcall(dofile, path)
    if not status then
        minetest.log("error", "-!- Failed to load file: " .. path .. " - Error: " .. err)
    else
        minetest.log("action", "-!- Successfully loaded file: " .. path)
    end
end

if atl_server_bed_tp.modpath then
    local files_to_load = {
        "script/api.lua",
        "script/commands.lua",
    }

    for _, file in ipairs(files_to_load) do
        atl_server_bed_tp.load_file(atl_server_bed_tp.modpath .. "/" .. file)
    end
else
    minetest.log("error", "-!- Files in " .. atl_server_bed_tp.modpath .. " mod are not set or valid.")
end
