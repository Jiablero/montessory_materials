font = "Liberation Sans:style=Bold"; //["Liberation Sans", "Liberation Sans:style=Bold", "Liberation Sans:style=Italic", "Liberation Mono", "Liberation Serif"]

letter_size = 19;
letter_height = 2;

module letter(l) {
  // Use linear_extrude() to make the letters 3D objects as they
  // are only 2D shapes when only using text()
  linear_extrude(height = letter_height) {
    text(l, size = letter_size, font = font, halign = "center", valign = "center", $fn = 16);
  }
}

//Ё
module yo() {
union() {
    translate([-3,7,0]) cube([1,2,2]);
    translate([3,7,0]) cube([1,2,2]);
    letter("Ё");
}
}
//Й
module ishort() {
union() {    
    letter("Й");
    translate([4,6,0]) cube([1,4,2]);
    }    
}

module yi() {
union () {
letter("Ы");
translate([4,-4,0]) cube([4,2,2]);
}
}

// Фиксы для букв Ё Й Ы чтобы соединить отдельные элементы
// TODO: как-то расчитать соединения, чтобы зависели от высоты буквы
//yo();
//translate([16,0,0]) yo();
//translate([-16,0,0]) ishort();
//translate([-34,0,0]) ishort();
//translate([0,-24,0]) yi();
//translate([-24,-24,0]) yi();
//translate([24,-24,0]) yi();

// для обычных букв
letter("ЁЙЫ");