// -------------------------------------------
//
//   1515 Panel Maker by Adam Bryant
//
// -------------------------------------------

// Place holder for Size variables.
// M5Stack Extrusion is pre cut to 50, 100, 200, 500mm long.

Length=50; // X Dimension
Width=50; // Y Dimension
Height=15; //1515 Extrusion width
Screw_hole=3.2; // M3 Screw
Wall=4; // Wall thickness.


difference() {
cube([Length,Width,Height],center=true); //Initial Panel size.
translate([0,0,2]) // Moves Cavity Piece to correct height.

minkowski(){
cube([Length-Wall,Width-Wall,Height],center=true); // Cavity size.
sphere(1); // If this is increased, Wall thickness must be increased.
}

rotate([90,0,0])
cylinder(Width+2,Screw_hole/2,Screw_hole/2, center=true);
rotate([0,90,0])
cylinder(Length+2,Screw_hole/2,Screw_hole/2, center=true);
}



