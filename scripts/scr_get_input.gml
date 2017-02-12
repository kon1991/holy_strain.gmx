///scr_get_input
up_key = keyboard_check(ord('W'));
right_key = keyboard_check(ord('D'));
down_key = keyboard_check(ord('S'));
left_key = keyboard_check(ord('A'));

//player will dash when c is pressed
dash_key = keyboard_check_pressed(ord('C'));

//attack key
attack_key = keyboard_check_pressed(ord('X'));

//pause key
pause_key = keyboard_check_pressed(vk_escape);

//interact with objects
interact_key = keyboard_check_pressed(ord('Z'));

//spell key 
spell_key = keyboard_check_pressed(ord('V'));

//Get the axis
x_axis = (right_key - left_key); //if I press right key I will get 1, the same if I press the left key
y_axis = (down_key - up_key);


//Check for gamepad input
//argument is the slot where the gamepad is connected
if(gamepad_is_connected(0)) {
    //set deadzone so that player won't move at tiniest move of analog stick
    gamepad_set_axis_deadzone(0, 0.35);
    
    x_axis = gamepad_axis_value(0, gp_axislh);
    y_axis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
    pause_key = gamepad_button_check(0, gp_start);
    spell_key = gamepad_button_check_pressed(0, gp_face2);
    swap_key = gamepad_button_check_pressed(0, gp_face4);
}
