///scr_get_face(dir)
var dir = argument[0];

//split 360 degrees to 4 quadrands
face = round(dir/90);

if(face == 4) {
    face = RIGHT;
}
