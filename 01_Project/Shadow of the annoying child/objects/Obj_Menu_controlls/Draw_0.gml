/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4CFEE724
/// @DnDArgument : "code" "draw_set_halign(fa_center); //Horizontal alignment$(13_10)draw_set_valign(fa_middle);  //Vertical alignment$(13_10)draw_set_font(Font_Menu);$(13_10)menu_x=room_width/2; $(13_10)menu_y=190;$(13_10)for (i=0;i<array_length_1d(menu);i++)$(13_10){$(13_10)    draw_set_color(c_black);//Shadow color$(13_10)    draw_text(menu_x+2,menu_y+2,string_hash_to_newline(menu[i]));//Shadow$(13_10)    draw_set_color(c_white); //Text color    $(13_10)    if point_in_rectangle(mouse_x,mouse_y,menu_x-string_width(string_hash_to_newline(menu[i]))/2,menu_y-string_height(string_hash_to_newline(menu[i]))/2,menu_x+string_width(string_hash_to_newline(menu[i]))/2,menu_y+string_height(string_hash_to_newline(menu[i]))/2)$(13_10)    {$(13_10)        draw_set_color(c_green); //Text color (Mouse tip)$(13_10)        if mouse_check_button_pressed(mb_left)    $(13_10)        {$(13_10)            switch(i)$(13_10)            {$(13_10)                case 0:$(13_10)                    room_goto(room_menu); //menu[0]$(13_10)                break;$(13_10)       $(13_10)            }$(13_10)        }$(13_10)    }$(13_10)    draw_text(menu_x,menu_y,string_hash_to_newline(menu[i]));//Text$(13_10)    menu_y+=string_height(string_hash_to_newline(menu[i]))+line_spacing;$(13_10)}$(13_10)$(13_10)"
draw_set_halign(fa_center); //Horizontal alignment
draw_set_valign(fa_middle);  //Vertical alignment
draw_set_font(Font_Menu);
menu_x=room_width/2; 
menu_y=190;
for (i=0;i<array_length_1d(menu);i++)
{
    draw_set_color(c_black);//Shadow color
    draw_text(menu_x+2,menu_y+2,string_hash_to_newline(menu[i]));//Shadow
    draw_set_color(c_white); //Text color    
    if point_in_rectangle(mouse_x,mouse_y,menu_x-string_width(string_hash_to_newline(menu[i]))/2,menu_y-string_height(string_hash_to_newline(menu[i]))/2,menu_x+string_width(string_hash_to_newline(menu[i]))/2,menu_y+string_height(string_hash_to_newline(menu[i]))/2)
    {
        draw_set_color(c_green); //Text color (Mouse tip)
        if mouse_check_button_pressed(mb_left)    
        {
            switch(i)
            {
                case 0:
                    room_goto(room_menu); //menu[0]
                break;
       
            }
        }
    }
    draw_text(menu_x,menu_y,string_hash_to_newline(menu[i]));//Text
    menu_y+=string_height(string_hash_to_newline(menu[i]))+line_spacing;
}