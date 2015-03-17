difference()
{
	cube([40,97,15]);
	
	translate([5,0,0])	cube([35,(97-58)/2,15]);
	translate([5,97-(97-58)/2,0])	cube([35,(97-58)/2,15]);
	translate([0,(97-48)/2,0])	cube([35,48,15]);

	// holes
	translate([-1,5,7.5]) rotate([0,90,0])
	cylinder(h=7, r=1.5, $fn=10);
	translate([-1,97-5,7.5]) rotate([0,90,0])
	cylinder(h=7, r=1.5, $fn=10);

	translate([34,(97-48)/2+5,7.5]) rotate([0,90,0])
	cylinder(h=7, r=1.5, $fn=10);
	translate([34,(97-48)/2+43,7.5]) rotate([0,90,0])
	cylinder(h=7, r=1.5, $fn=10);
}

translate([50,0,0])
{
	union()
	{	
		difference()
		{
			cube([51,97,15]);
			
			translate([5,0,0])	cube([50,(97-69)/2,15]);
			translate([5,97-(97-69)/2,0])	cube([50,(97-68)/2,15]);
			translate([0,(97-59)/2,0])	cube([46,59,15]);
	
		
			// holes
			translate([-1,5,7.5]) rotate([0,90,0])
			cylinder(h=7, r=1.5, $fn=10);
			translate([-1,97-5,7.5]) rotate([0,90,0])
			cylinder(h=7, r=1.5, $fn=10);
			
			translate([-1,13.5,7.5]) rotate([0,90,0])
			cylinder(h=10, r=1.5, $fn=10);
			translate([-1,97-13.5,7.5]) rotate([0,90,0])
			cylinder(h=10, r=1.5, $fn=10);

			translate([45,(97-48)/2+5,7.5]) rotate([0,90,0])
			cylinder(h=7, r=1.5, $fn=10);
			translate([45,(97-48)/2+43,7.5]) rotate([0,90,0])
			cylinder(h=7, r=1.5, $fn=10);
		
		}
//		difference()
//		{
//			translate([35,(97-58)/2,0]) cube([5,5,20]);
//			translate([34,(97-58)/2+2.5,17.5]) rotate([0,90,0])
//			cylinder(h=7, r=1.5, $fn=10);
//		}
//		difference()
//		{
//			translate([35,97-(97-58)/2-5,0]) cube([5,5,20]);
//			translate([34,97-(97-58)/2-2.5,17.5]) rotate([0,90,0])
//			cylinder(h=7, r=1.5, $fn=10);
//		}
	}
}