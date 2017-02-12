///scr_move_state
scr_get_input();

if (interact_key) {
    state = scr_interact_state;
}

var x_axis = (right_key - left_key);
var y_axis = (down_key - up_key);

dir = point_direction(0, 0, x_axis, y_axis);

if (x_axis == 0 && y_axis == 0 ) {
    len = 0;
} else {
    len = spd;
}

hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

phy_position_x += hspd;
phy_position_y += vspd;

//Control sprite
image_speed = sign(len) * 0.2;

//not moving
if (len == 0) image_index = 0;

if (vspd > 0) {
    sprite_index = alien_walk_front;
} else if (vspd < 0) {
    sprite_index = alien_walk_back;
}

if (hspd > 0) {
    sprite_index = alien_walk_right;
} else if (hspd < 0) {
    sprite_index = alien_walk_left;
}

