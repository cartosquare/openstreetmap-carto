
#placenames-medium {
  //text-face-name: 'Schulschrift A OT Normal';
  text-face-name: @bold-fonts;
  text-name: "[name]";
  text-opacity: 0.75;
  text-size: 20;
  text-halo-fill: fadeout(#eee,90);
  text-halo-rasterizer: fast;
  text-halo-radius: 4;
  [category=1] { text-size: 24; }
}

#placenames-small {
  [place='suburb'],
  [place='village'] {
    [zoom>=12] {
      text-face-name: @oblique-fonts;
      text-name: "[name]";
      text-opacity: 0.75;
      text-size: 16;
      text-halo-fill: fadeout(#eee,90);
      text-halo-rasterizer: fast;
      text-halo-radius: 4;
    }
  }
}

#building-text {
  [zoom>=17] {
    //text-face-name: 'Providence Sans Offc Pro Regular';
    text-face-name: @oblique-fonts;
    text-name: "[name]";
    text-opacity: 0.80;
    text-size: 14;
    text-halo-fill: fadeout(#eee,85);
    text-halo-rasterizer: fast;
    text-halo-radius: 4;
    [zoom>=17] {
      text-size: 16;
    }
  }
}

#text-point {
  [zoom>=15] {
    //text-face-name: 'Providence Sans Offc Pro Regular';
    text-face-name: @oblique-fonts;
    text-name: "[name]";
    text-opacity: 0.80;
    text-size: 12;
    text-halo-fill: fadeout(#eee,85);
    text-halo-rasterizer: fast;
    text-halo-radius: 4;
    [zoom>=17] {
      text-size: 14;
    }
  }
}

#roads-text-name {
  [zoom>=16] {
    //text-face-name: 'Providence Sans Offc Pro Regular';
    text-face-name: @oblique-fonts;
    text-name: "[name]";
    text-opacity: 0.80;
    text-size: 14;
    text-halo-fill: fadeout(#eee,60);
    text-halo-rasterizer: fast;
    text-halo-radius: 2;
    text-placement: line;
    text-transform: uppercase;
  }
}