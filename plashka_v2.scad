w = 22;

h = w * 8;
z = w * .1;
height = 10;
pip_h = 3;
pip_r = 3;
pip_zazor = 0.1;

module plashka() {
difference (){
cube([h*1.2,w*1.2,height], center = true);
color ("red")
translate([0,0,height/2-z/2])
hull  (center = true){
translate ([0,0,z*0.5])
 cube([h*1.2,w,0.1], center = true);
cube([h,w,z], center = true);
};
};
};

module pipka() {
rotate([90,0,0])
cylinder(pip_h, pip_r, pip_r, $fn=30, center=true);
};

module pipka_hole() {
rotate([90,0,0])
cylinder(pip_h, pip_r+pip_zazor, pip_r+pip_zazor, $fn=30, center=true);
};


difference(){
union(){
plashka();
translate([(h*1.2)/2- 2 * pip_r,(w*1.2)/2+pip_h/2,0])
pipka();
translate([-1*((h*1.2)/2- 2 * pip_r),(w*1.2)/2+pip_h/2,0])
pipka();
};
translate([(h*1.2)/2- 2 * pip_r,-1*((w*1.2)/2-pip_h/2,0)])
pipka_hole();
translate([-1*((h*1.2)/2- 2 * pip_r),-1*((w*1.2)/2-pip_h/2,0)])
pipka_hole();

};

