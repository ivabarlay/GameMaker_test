width = 620;
height = 239 - 70;
name = undefined;

messages = undefined;
message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 0; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

 //get the number of characters in the first message
message_length = 0;
final_script = undefined;
arguments = undefined;