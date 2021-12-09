font = "Liberation Sans:style=Bold"; //["Liberation Sans", "Liberation Sans:style=Bold", "Liberation Sans:style=Italic", "Liberation Mono", "Liberation Serif"]

letter_size = 19;
letter_height = 2;

o = cube_size / 2 - letter_height / 2;

module letter(l) {
  // Use linear_extrude() to make the letters 3D objects as they
  // are only 2D shapes when only using text()
  linear_extrude(height = letter_height) {
    text(l, size = letter_size, font = font, halign = "center", valign = "center", $fn = 16);
  }
}

letter("Щ");