//Detect move angle
var move_h = input.right - input.left;
var move_v = input.down - input.up;
var direction_is_held = (move_h != 0 || move_v != 0);
if (direction_is_held) move_dir = floor(point_direction(0, 0, move_h, move_v));
var moving_diagonally = (move_dir % 90) != 0;


//Handle player state
switch(state) {
    case "idle":
        //Change state
        if (direction_is_held) state = "moving";
        
        //Sprite
        image_speed = 0;
        
        //Movements
        hsp = 0;
        vsp = 0;
        break;
    
    case "moving":
        //Change state
        if (!direction_is_held) state = "idle";
            
        //Sprite
        image_speed = run ? 1.5 : 1;
        if (!moving_diagonally) switch(move_dir) {
            //Up
            case 90:
                sprite_index = spr_player_move_up;
                image_xscale = 1;
                break;
            //Down
            case 270:
                sprite_index = spr_player_move_down;
                image_xscale = 1;
                break;
            //Left
            case 180:
                sprite_index = spr_player_move_side;
                image_xscale = -1;
                break;
            //Right
            case 0:
                sprite_index = spr_player_move_side;
                image_xscale = 1;
                break;
        }
        
        //Movement
        run = input.run;
        
        var speed_diagonal = moving_diagonally ? speed_diagonal_multiplier : 1;
        var speed_current = (run ? speed_run : speed_walk) * speed_diagonal;
        hsp = lengthdir_x(speed_current, move_dir);
        vsp = lengthdir_y(speed_current, move_dir);
            
        break;
}


//Collisions
scr_collisions(par_solid);