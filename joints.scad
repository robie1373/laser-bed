module joint(end_of_bar, type_of_joint) {
  offset = rad / 2;
  if (type_of_joint == tab) {
    translate([-offset, (height / 2), 0])
    difference() {
      circle(rad, center = true);
      circle(bolt_rad, center = true);
    }
  } else {
    translate([end_of_bar - offset, (height / 2), 0])
    circle(rad, center = true);
  }
}