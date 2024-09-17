local S = minetest.get_translator("atl_server_bed_tp")

function beds.teleport_to_bed(player)
    local player_name = player:get_player_name()
    local spawn_pos = beds.spawn[player_name]

    if spawn_pos then
        player:set_pos(spawn_pos)
        minetest.chat_send_player(player_name, S("-!- You have been teleported to your bed."))
    else
        minetest.chat_send_player(player_name, S("-!-  You do not have a registered bed."))
    end
end