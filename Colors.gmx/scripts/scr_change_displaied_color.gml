///scr_change_displaied_color(color, main cell)
var color = argument0;
var m_cell = argument1;

ds_list_replace(m_cell, 0, color);

switch(m_cell[| 3]){
    case 1:
        if(tile_exists(tile_layer_find(1, 0, (room_height - 144))))
            tile_delete(tile_layer_find(1, 0, (room_height - 144)));
        tile_add(bg_player_color, color * 144, 0, 144, 144, 0, (room_height - 144), 10);
        break;
    
    case 2:
        if(tile_exists(tile_layer_find(1, (room_width - 144), 0)))
            tile_delete(tile_layer_find(1, (room_width - 144), 0));
        tile_add(bg_enemy_color, color * 144, 0, 144, 144, (room_width - 144), 0, 10);
        break;
}
