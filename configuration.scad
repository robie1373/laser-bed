$fn = 100;

/////////////
// dimensions

// width of the gap. set to accommodate the curve in your blinds.
//This works for most common blinds.
gap = 4;

// How much space between your blinds?
space = 30;

// offset from left side of page (material)
left_end = 10;

// how long should the piece be? Probably about the limit of your cutter
right_end = 225 + left_end;

// to make the square easier to understand
width = right_end;

// How tall should the brace be? 
height = 25;

// another way of asking how thick you want the spine to be
tooth_depth = height - 5;

// Constants for use in the joint module
tab = 1;
slot = 0;

////////////////////////////////////////////
// do you want the circle joints on the end?
// use these to chain parts together for wider beds
add_joints = true;
add_clamps = true;
// what size in mm bolts will you use?
bolt_size = 3;
bolt_rad = bolt_size/2;
// how big should the joint circles be?
rad = height / 5;

//////////////////////////////////////////////////////
// These are all calculate from values above. You shouldn't
// need to change this unless I messed up.
// That being said, my calculation for the teeth length 
// doesn't work well. Make sure to sanity check the drawing
// before cutting.
step = gap + space;
num_teeth = round(right_end / step);
length_of_teeth = num_teeth * step;
start_of_teeth = (right_end - length_of_teeth) / 2;
