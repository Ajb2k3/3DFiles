This folder contains the 3D files I have creadted for M5Stack Projects.

Panel Maker F3d and Scad are files I have created to simplyfy construction of infill panels for use with M5Stack 1515 V-Slot aluminium extrusions.
These file are parametric and work by changing only the Length and width sizes.

This is all that is required for creating the basic panel in OpenScad.
```
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
cylinder(Length+2,Screw_hole/2,Screw_hole/2, center=true);
rotate([0,90,0])
cylinder(Width+2,Screw_hole/2,Screw_hole/2, center=true);
}
```
![Screenshot 2022-01-29 at 12 24 55](https://user-images.githubusercontent.com/27489659/151661225-237a7c66-adb7-4575-b426-ab8e7f6b1ad5.png)

Here is a Video of the Autodesk F360 version https://www.youtube.com/watch?v=WSske3jZHhM

