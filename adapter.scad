
$fn = 64;
$fs = 0.1; 

module hex_hole(nut_radius, screw_radius, depth, nut_depth) {
	correction = 1/cos(30);
	cylinder(r=nut_radius*correction+0.2, h=nut_depth, $fn=6);
	cylinder(r=screw_radius,h=depth);
}

difference() {
	union() {
		cylinder(6, d=70);
		cylinder(10, d=44);
		cylinder(12, d=20-0.2);
	};

	union() {
		translate([0, 0, -1]) cylinder(14, d=12);
		translate([0, 0, -6]) sphere(11);
		
		for (i = [0:120:360]) {
			rotate([0, 0, i]) translate([0, 35-8, -1]) cylinder(14, d=6+0.2);
			rotate([0, 0, i]) translate([0, 27, 6]) cylinder(6, d=12);
		}
		
		for (i = [0:90:360]) {
			rotate([0, 0, i]) translate([0, 32/2, -1]) hex_hole(3, 2+0.2, 30, 5);
		}
	};
}
