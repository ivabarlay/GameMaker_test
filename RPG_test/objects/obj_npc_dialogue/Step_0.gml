accept_key = keyboard_check_pressed(ord("E"));
show_debug_message(messages[message_current])

if (characters < message_length) { //if current character count is less than the amount in current message* 
    hold = keyboard_check(vk_space); //hold is true or false if we hold 'Z' or not
    characters += increase * (1 + hold); //increase speed based on hold
    message_draw = string_copy(messages[message_current], 0, characters); //copy string to current character
} 
else { //if current character is more than the amount in the current message
    if (keyboard_check_pressed(vk_space)) { //if we press Z...
        if (message_current < message_end) { //if there are more messages left to show (0 -> 6, in our case)
            message_current += 1; //increase the message by 1
            message_length = string_length(messages[message_current]);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text
        }
        else { //if our messages are done (we reach 6, in our case)...
			ds_list_delete(global.menuPile, ds_list_size(global.menuPile) - 1)
            instance_destroy(); //destroy the object
        }
    }
}