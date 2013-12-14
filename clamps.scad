include <configuration.scad>;

module clamps(starting_point) {
  if (add_clamps == true) {
    for (i = [rad + 2, rad + 13]) {
      translate([starting_point + i, height / 2, 0]) {
        difference() {
        square([rad + 2, height], center = true);
        circle(bolt_rad, center = true);
        }
      }
    }
  }
}

clamps(0);