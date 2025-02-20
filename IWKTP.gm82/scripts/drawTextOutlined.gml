///draw_text_outlined(x, y, string, text_color, outline_color, outline_width, detail, xscale, yscale)
var i, xx, yy, _text, _text_color, _outline_color, _outline_width, _detail, _angle, _x_off, _y_off, _xscale, _yscale, color2;

xx = argument[0];
yy = argument[1];
_text = argument[2];
_text_color = argument[3];
_outline_color = argument[4];
_outline_width = 1;
_detail = 8;
if argument_count > 5
{
    _outline_width = argument[5];
    if argument_count > 6 _detail = argument[6];
    if argument_count > 7 _xscale = argument[7]
    if argument_count > 8 _yscale = argument[8]

}
draw_set_color(_outline_color);

if _outline_width == 1 && _detail == 8
{
    for(_x_off = -1; _x_off <= 1; _x_off += 1)
    {
        for(_y_off = -1; _y_off <= 1; _y_off += 1)
        {
            if _x_off == 0 && _y_off == 0
                continue;
            draw_text_transformed(
                xx + _x_off,
                yy + _y_off,
                _text,
                _xscale,
                _yscale,
                0
            );
        }
    }
}
else for(i = 0; i < _detail; i += 1) {
    _angle = i/_detail * 360;
    draw_text_transformed(
        xx + lengthdir_x(_outline_width, _angle),
        yy + lengthdir_y(_outline_width, _angle),
        _text,
        _xscale,
        _yscale,
        0
    );
}

switch _text_color
{
    case c_red:    color2 = c_red-128 break
    case c_white:  color2 = make_color_rgb(156,156,156) break
    case c_yellow: color2 = c_yellow break //make_color_rgb(50,50,100) break
}
draw_text_transformed_color(xx, yy, _text,_xscale,_yscale,0,_text_color,_text_color,color2,color2,image_alpha);
