length = 119;
width = 114;

difference()
{
	cube([length, width, 2]);
	translate([3,3,0]) cylinder(h=2,r=1.5,$fn=20);
	translate([3,width-3,0]) cylinder(h=2,r=1.5,$fn=20);
	translate([length-3,3,0]) cylinder(h=2,r=1.5,$fn=20);
	translate([length-3,width-3,0]) cylinder(h=2,r=1.5,$fn=20);
}