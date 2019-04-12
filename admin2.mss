#province,
#city,
#county{
  [Name_CHN = '${admin_filter}'] {
    a/line-width: 1;
    a/line-offset: -0.5;
    a/line-color: @admin-boundaries;
    a/line-opacity: 0.65;
    a/line-join: bevel;
    a/line-simplify: @admin-simplify;
    a/line-simplify-algorithm: @admin-simplify-algorithm;

    b/line-width: 2;
    b/line-offset: -1;
    b/line-color: @admin-boundaries;
    b/line-opacity: 0.65;
    b/line-join: bevel;
    b/line-simplify: @admin-simplify;
    b/line-simplify-algorithm: @admin-simplify-algorithm;
    [zoom >= 11] {
      a/line-width: 2;
      a/line-offset: -1;
      b/line-width: 4;
      b/line-offset: -2;
    }
    [zoom >= 14] {
      b/line-width: 8;
      b/line-offset: -4;
    }
  }
}

/*
Note: The level field is integer, here we assign string to it
When convert to xml file, we should manually convert it to ingeger!!!
*/
#admin-label-points[name = '${point_filter}'][level = '${level_filter}'][position = '${position_filter}'] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-size: 32;
  text-fill: black;
  text-halo-radius: @standard-halo-radius;
  text-halo-fill: @standard-halo-fill;
  text-allow-overlap: true;
  text-dy: 16;
}