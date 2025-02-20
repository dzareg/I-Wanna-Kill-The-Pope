var l_c2s;
l_c2s = ds_map_create()
global.keyboard_key_to_name = l_c2s;
var l_s2c;
l_s2c = ds_map_create()
global.keyboard_name_to_key = l_s2c;
var l_k, l_c, l_s, l_slq;
l_c2s[27] = "Escape";
l_s2c["escape"] = 27;
l_s2c["esc"] = 27;
l_c2s[32] = "Space";
l_s2c["space"] = 32;
l_s2c["spacebar"] = 32;
l_c2s[13] = "Enter";
l_s2c["enter"] = 13;
l_s2c["return"] = 13;
l_c2s[37] = "Left";
l_s2c["left"] = 37;
l_c2s[39] = "Right";
l_s2c["right"] = 39;
l_c2s[38] = "Up";
l_s2c["up"] = 38;
l_c2s[40] = "Down";
l_s2c["down"] = 40;
l_c2s[8] = "Backspace";
l_s2c["backspace"] = 8;
l_s2c["bksp"] = 8;
l_c2s[9] = "Tab";
l_s2c["tab"] = 9;
l_c2s[16] = "Shift";
l_s2c["shift"] = 16;
l_c2s[17] = "Control";
l_s2c["control"] = 17;
l_s2c["ctrl"] = 17;
l_c2s[18] = "Alt";
l_s2c["alt"] = 18;
l_c2s[19] = "Pause";
l_s2c["pause"] = 19;
l_s2c["break"] = 19;
l_c2s[20] = "Capslock";
l_s2c["capslock"] = 20;
l_s2c["caps"] = 20;
l_c2s[160] = "LeftShift";
l_s2c["leftshift"] = 160;
l_s2c["lshift"] = 160;
l_c2s[161] = "RightShift";
l_s2c["rightshift"] = 161;
l_s2c["rshift"] = 161;
l_c2s[162] = "LeftControl";
l_s2c["leftcontrol"] = 162;
l_s2c["lcontrol"] = 162;
l_s2c["lctrl"] = 162;
l_c2s[163] = "RightControl";
l_s2c["rightcontrol"] = 163;
l_s2c["rcontrol"] = 163;
l_s2c["rctrl"] = 163;
l_c2s[164] = "LeftAlt";
l_s2c["leftalt"] = 164;
l_s2c["lalt"] = 164;
l_c2s[165] = "RightAlt";
l_s2c["rightalt"] = 165;
l_s2c["ralt"] = 165;
l_c2s[91] = "Windows";
l_s2c["windows"] = 91;
l_s2c["system"] = 91;
l_s2c["win"] = 91;
l_s2c["sys"] = 91;
l_c2s[92] = "RightWindows";
l_s2c["rightwindows"] = 92;
l_s2c["rightsystem"] = 92;
l_s2c["rwin"] = 92;
l_s2c["rsys"] = 92;
l_c2s[33] = "PageUp";
l_s2c["pageup"] = 33;
l_s2c["pgup"] = 33;
l_c2s[34] = "PageDown";
l_s2c["pagedown"] = 34;
l_s2c["pgdown"] = 34;
l_c2s[35] = "End";
l_s2c["end"] = 35;
l_c2s[36] = "Home";
l_s2c["home"] = 36;
l_c2s[44] = "PrintScreen";
l_s2c["printscreen"] = 44;
l_s2c["prtscr"] = 44;
l_s2c["sysrq"] = 44;
l_c2s[45] = "Insert";
l_s2c["insert"] = 45;
l_s2c["ins"] = 45;
l_c2s[46] = "Delete";
l_s2c["delete"] = 46;
l_s2c["del"] = 46;
l_c2s[145] = "ScrollLock";
l_s2c["scrolllock"] = 145;
l_s2c["scrlck"] = 145;
l_c2s[186] = "Semicolon";
l_s2c["semicolon"] = 186;
l_s2c["colon"] = 186;
l_s2c[":"] = 186;
l_s2c[";"] = 186;
l_c2s[187] = "Equals";
l_s2c["equals"] = 187;
l_s2c["="] = 187;
l_c2s[188] = "Comma";
l_s2c["comma"] = 188;
l_s2c["less"] = 188;
l_s2c[","] = 188;
l_s2c["<"] = 188;
l_c2s[189] = "Underscore";
l_s2c["underscore"] = 189;
l_s2c["_"] = 189;
l_c2s[190] = "Period";
l_s2c["period"] = 190;
l_s2c["dot"] = 190;
l_s2c["more"] = 190;
l_s2c["."] = 190;
l_s2c[">"] = 190;
l_c2s[191] = "Slash";
l_s2c["slash"] = 191;
l_s2c[""] = 191;
l_s2c["/"] = 191;
l_c2s[192] = "Tilde";
l_s2c["tilde"] = 192;
l_s2c["~"] = 192;
l_s2c["`"] = 192;
l_c2s[219] = "OpenBracket";
l_s2c["openbracket"] = 219;
l_s2c["["] = 219;
l_s2c["{"] = 219;
l_c2s[220] = "BackSlash";
l_s2c["backslash"] = 220;
l_s2c[chr(92)/* "\" */] = 220;
l_s2c["|"] = 220;
l_c2s[221] = "CloseBracket";
l_s2c["closebracket"] = 221;
l_s2c["]"] = 221;
l_s2c["}"] = 221;
l_c2s[222] = "Quote";
l_s2c["quote"] = 222;
l_s2c["apostrophe"] = 222;
l_s2c["'"] = 222;
l_s2c[chr(34)/* '"' */] = 222;
for (l_k = 65; l_k <= 90; l_k += 1) {
    l_c = chr(l_k);
    l_c2s[l_k] = l_c;
    l_slq = string_lower(l_c);
    l_s2c[l_slq] = l_k;
}
l_c2s[48] = "D0";
l_s2c["d0"] = 48;
l_s2c["dig0"] = 48;
l_s2c["digit0"] = 48;
l_s2c["0"] = 48;
l_c2s[49] = "D1";
l_s2c["d1"] = 49;
l_s2c["dig1"] = 49;
l_s2c["digit1"] = 49;
l_s2c["1"] = 49;
l_c2s[50] = "D2";
l_s2c["d2"] = 50;
l_s2c["dig2"] = 50;
l_s2c["digit2"] = 50;
l_s2c["2"] = 50;
l_c2s[51] = "D3";
l_s2c["d3"] = 51;
l_s2c["dig3"] = 51;
l_s2c["digit3"] = 51;
l_s2c["3"] = 51;
l_c2s[52] = "D4";
l_s2c["d4"] = 52;
l_s2c["dig4"] = 52;
l_s2c["digit4"] = 52;
l_s2c["4"] = 52;
l_c2s[53] = "D5";
l_s2c["d5"] = 53;
l_s2c["dig5"] = 53;
l_s2c["digit5"] = 53;
l_s2c["5"] = 53;
l_c2s[54] = "D6";
l_s2c["d6"] = 54;
l_s2c["dig6"] = 54;
l_s2c["digit6"] = 54;
l_s2c["6"] = 54;
l_c2s[55] = "D7";
l_s2c["d7"] = 55;
l_s2c["dig7"] = 55;
l_s2c["digit7"] = 55;
l_s2c["7"] = 55;
l_c2s[56] = "D8";
l_s2c["d8"] = 56;
l_s2c["dig8"] = 56;
l_s2c["digit8"] = 56;
l_s2c["8"] = 56;
l_c2s[57] = "D9";
l_s2c["d9"] = 57;
l_s2c["dig9"] = 57;
l_s2c["digit9"] = 57;
l_s2c["9"] = 57;
for (l_k = 112; l_k < 136; l_k += 1) {
    l_c = "F" + string(l_k - 111);
    l_c2s[l_k] = l_c;
    l_slq = string_lower(l_c);
    l_s2c[l_slq] = l_k;
}
l_c2s[144] = "Numlock";
l_s2c["numlock"] = 144;
l_c2s[111] = "Divide";
l_s2c["divide"] = 111;
l_s2c["div"] = 111;
l_s2c["numdiv"] = 111;
l_s2c["/"] = 111;
l_c2s[106] = "Multiply";
l_s2c["multiply"] = 106;
l_s2c["mul"] = 106;
l_s2c["nummul"] = 106;
l_s2c["*"] = 106;
l_c2s[107] = "Add";
l_s2c["add"] = 107;
l_s2c["plus"] = 107;
l_s2c["numadd"] = 107;
l_s2c["+"] = 107;
l_c2s[109] = "Subtract";
l_s2c["subtract"] = 109;
l_s2c["minus"] = 109;
l_s2c["numsub"] = 109;
l_s2c["-"] = 109;
l_c2s[110] = "NumpadDelete";
l_s2c["numpaddelete"] = 110;
l_s2c["numdel"] = 110;
l_s2c["numperiod"] = 110;
for (l_k = 96; l_k < 106; l_k += 1) {
    l_c = string(l_k - 96);
    l_s = "Numpad" + l_c;
    l_c2s[l_k] = l_c;
    l_slq = string_lower(l_c);
    l_s2c[l_slq] = l_k;
    l_s = "Num" + l_c;
    l_slq = string_lower(l_s);
    l_s2c[l_slq] = l_k;
}
l_s2c[""] = 0;
l_s2c["none"] = 0;
l_c2s[0] = "None";
for (l_k = 1; l_k < 256; l_k += 1) {
    l_s = "Key" + string(l_k);
    if (!ds_map_exists(l_c2s, l_k)) l_c2s[l_k] = l_s;
    l_slq = string_lower(l_s);
    l_s2c[l_slq] = l_k;
}
