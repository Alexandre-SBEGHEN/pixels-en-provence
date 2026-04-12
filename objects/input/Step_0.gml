//Joystick
up =    keyboard_check(ord("Z")) || keyboard_check(vk_up);
down =  keyboard_check(ord("S")) || keyboard_check(vk_down);
left =  keyboard_check(ord("Q")) || keyboard_check(vk_left);
right = keyboard_check(ord("D")) || keyboard_check(vk_right);

//Run
b1 =    keyboard_check(vk_space);
b1_p =  keyboard_check_pressed(vk_space);
b2 =    keyboard_check(vk_shift);