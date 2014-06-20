include <configuration.scad>;

use <vertex.scad>;

$fn = 240;

module frame_top() {
//  difference() {
    vertex(extrusion+0.1, idler_offset=3, idler_space=12.5, fin_w=5.2, fin_d=4, fins=1, fn=280);
//  }
}

difference(){
  translate([0, 0, extrusion/2]) frame_top();
}
