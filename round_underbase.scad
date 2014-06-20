use <pie.scad>;

base();

// Size is number of slices   
module slice(diameter, size, thickness)
{
   radius = diameter * 2;
   pie(radius, 360 / size, thickness);
}
   
 module arc(diameter,slices,thickness,thewidth)
{
 theoffset = thewidth / 2 * -1;
 difference(){ 
     slice(diameter, slices, thickness);
     translate([theoffset,theoffset,0]) slice(330, slices, 10);
     }
}

module base()
{
   arc(330, 1, 10, 30);
}