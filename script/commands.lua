minetest.register_chatcommand("bed", {
    description = "Teleport to your bed.",
    func = function(name)
        local player = minetest.get_player_by_name(name)
        if player then
            beds.teleport_to_bed(player)
        end
    end,
})