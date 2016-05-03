
$fn = 64;

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
			rotate([0, 0, i]) translate([0, 32/2, -1]) cylinder(14, d=4+0.2);
			rotate([0, 0, i]) translate([0, 32/2, -1]) cylinder(4, d=7+0.2, $fn=6);
		}
	};
}
