// Inner dimensions
length = 115;
width = 110;
height = 27;
thickness = 4;

// Quality
FN = 20;

// Battery Parameters
batteryLength = 66.5;
batteryWidth = 55.0;
batteryHeight = 18.5;

// Ultrasonic sensor
sensorLength = 46;
sensorDepth = 6;
sensorHeight = 23;

difference()
{
	// Outter cube
	cube([length+2*thickness, width+2*thickness, height+thickness+2]);

	// Inner cube
	translate([thickness, thickness, thickness])
	{
		cube([length, width, height]);
	}

	// Plexiglass tooth
	translate([2, 2, height+thickness])
	{
		cube([length+4, width+4, thickness]);
	}

	// h-bridge cable hole
	translate([65, 45, 0])
	{
		cube([15, 25, 5]);
	}

	// Component mounting holes
	translate([thickness, thickness, 0])
	{	
		screw_hole_component(61,20);
		screw_hole_component(110,18);
		screw_hole_component(61,95);
		screw_hole_component(110,101);
		
		screw_hole_base(19,20);
		screw_hole_base(96,11.5);
		screw_hole_base(19,90);
		screw_hole_base(96,98.5);

		// Plexi-Glass holes
		screw_hole_component(1,1);
		screw_hole_component(1,109);
		screw_hole_component(114,1);
		screw_hole_component(114,109);
		
	}

	// Battery removal hole
	translate([50, 80, 0]) cylinder(h = 5, r = 4, $fn = FN);

	// Power switch
	translate([10, 0, 10])
	{
		cube([30, thickness, 11]);
	}

	// Power plug
	translate([55, -1, 15])
	{
		rotate([-90, 0, 0]) cylinder(h = thickness+2, r = 4);
	}

	// Arduino holes
	translate([66+thickness, 0, 3+thickness])
	{
		cube([14, thickness, 12]);
	
		translate([16, 0, 0])
		{
			cube([15, thickness, 8]);
		}
	}

	// sensor wire hole
	translate([thickness+length-2, 10, 10])
	{
		rotate([0,90,0]) cylinder(h=8, r=2.5, $fn=FN);
	}

}

// Component spacers
translate([thickness, thickness, 0])
{	
	
	component_spacer(61,20);
	component_spacer(110,18);
	component_spacer(61,95);
	component_spacer(110,101);
	
}

// Battery holder & spacers
translate([thickness, thickness, thickness])
{
	translate([0, width-batteryLength-4, 0])
	{
		difference()
		{
			cube([batteryWidth+2, batteryLength+4, height]);
			translate([0, 2, 0]) cube([batteryWidth, batteryLength, height]);
			translate([0, batteryLength+1, 0]) cube([3, 3, height]);
			// cable hole
			translate([35,0,20]) cube([3,2,height-20]);
		}
	}
	translate([0, width-batteryLength+10, 0]) cube([batteryWidth, 5, height-batteryHeight]);
	translate([0, width-batteryLength+50, 0]) cube([batteryWidth, 5, height-batteryHeight]);

}

// Phone mount
phoneWidth = width+2*thickness;
phoneLength = 36;
phoneHeight = height +thickness+2;

translate([2*thickness+length, 0 ,0])
{

difference()
{
	cube([phoneLength, phoneWidth, phoneHeight]);
	translate([8, 15, 5]) rotate([0, -45, 0]) cube([phoneLength+10, phoneWidth-30, 12]);

	// Ultrasonic sensor
	translate([phoneLength - sensorDepth, phoneWidth/2 - sensorLength/2, 0]) cube([ sensorDepth, sensorLength, sensorHeight]);

	// Cables holes
	translate([-10, 10, 10]) rotate([0, 90, 0]) cylinder(h = phoneLength+12, r = 2.5, $fn = 20);
	translate([phoneLength-5, 10, 10]) rotate([-90, 0, 0]) cylinder(h = 25, r = 2.5, $fn = 20);

}
}


/******************************************************/

module screw_hole_component(x,y)
{
	translate([x, y])
	{
		cylinder(h = 30, r = 1.5, $fn = FN);
//		sphere(r = 2, $fn = FN);
	}
}

module component_spacer(x,y)
{
	translate([x, y, thickness])
	{
		difference()
		{
			cylinder(h = 3, r = 3.5, $fn = FN);
			cylinder(h = 3, r = 1.5, $fn = FN);
		}
	}
}

module screw_hole_base(x,y)
{
	translate([x, y])
	{
		union()
		{
			cylinder(h = thickness, r = 1.5, $fn = FN);
//			translate([0,0,thickness]) sphere(r = 2, $fn = FN);
		}
	}
}
