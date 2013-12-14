include <configuration.scad>;
include <joints.scad>;
use <clamps.scad>;

//////////////////////////////////////////////////////
// Do the things!
module tooth() {
	square([gap, tooth_depth]);
}

module build() {
	translate([left_end, 10, 0]) {
		difference() {
			union () { 
				square([width, height]);
				if (add_joints == true) joint(left_end, tab);
			}

			for (i = [start_of_teeth + left_end : step : length_of_teeth]) {
				translate([i, 0, 0]) tooth();
			}	
			if (add_joints == true) joint(right_end, slot);
		}
	clamps(right_end);
	}
}

build();