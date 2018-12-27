// Line image patterns don't work well at lower zoomlevels,
// so we vary opacity, weight, and dasharrays to bring texture
// to regular line strokes.

#roads-fill['mapnik::geometry_type'=2]::line,
#bridges['mapnik::geometry_type'=2]::line,
#tunnels['mapnik::geometry_type'=2]::line {
  [feature='highway_motorway'],
  [feature='highway_trunk']
   {
    [zoom>=7][zoom<=11] {
      a/line-width:0.6;
      a/line-opacity:0.2;
      a/line-dasharray:2,1;
      b/line-width:0.8;
      b/line-opacity:0.2;
      b/line-dasharray:12,1;
      [zoom>=9] {
        a/line-opacity:0.1;
        b/line-opacity:0.1;
      }
      [zoom>=8] {
        a/line-width:1;
        b/line-width:1.2;
      }
      [zoom>=10] {
        a/line-width:1.6;
        b/line-width:2.0;
      }
    }
    [zoom=12] { line-pattern-file:url(img/line_solid_7.png); }
  }
  [feature='highway_motorway_link'],
  [feature='highway_trunk_link'],
  [feature='highway_primary'],
  [feature='highway_secondary'] {
    [zoom>=7][zoom<=11] {
      a/line-color: #222;
      a/line-opacity: 0.25;
      a/line-width: 0.8;
      [zoom=8] { a/line-width: 0.9; }
      [zoom=9] { a/line-width: 1; }
      [zoom=10] { a/line-width: 1.1; }
      [zoom=11] { a/line-width: 1.2; }
    }
    [zoom=12] { line-pattern-file:url(img/line_solid_6.png); }
    [zoom=13] { line-pattern-file:url(img/line_solid_7.png); }
  }
  [feature='highway_tertiary'],
  [feature='highway_residential'],
  [feature='highway_unclassified'],
  [feature='highway_living_street'] {
    [zoom=12] {
      a/line-width:1.5;
      a/line-opacity:0.05;
      a/line-dasharray:2,1;
      b/line-width:1.2;
      b/line-opacity:0.05;
      b/line-dasharray:12,1;
    }
    [zoom=13] { line-pattern-file:url(img/line_solid_6.png); }
    [zoom=14] { line-pattern-file:url(img/line_solid_6.png); }
  }

  [feature='highway_road'],
  [feature='highway_footway'],
  [feature='highway_service'] {
    [zoom>=15] { line-pattern-file:url(img/line_solid_6.png); }
  }

  [feature='highway_steps'],
  [feature='highway_pedestrian'],
  [feature='highway_path'] {
    [zoom=16] { line-pattern-file:url(img/line_dotted_4.png); }
    [zoom>=17] { line-pattern-file:url(img/line_dotted_6.png); }
  }

  [feature='railway_rail'][zoom>=14],
  [feature='railway_light_rail'][zoom>=14],
    [feature='railway_subway'][zoom>=16] {
    ['mapnik::geometry_type'=2] {
      a/line-width:1;
      a/line-opacity:0.05;
      a/line-dasharray:2,1;
      b/line-width:1.5;
      b/line-opacity:0.05;
      b/line-dasharray:12,1;
      c/line-width:2;
      c/line-opacity:0.05;
      c/line-dasharray:20,3;
    }
  }
}

#roads-fill::case,
#bridges::case,
#tunnels::case {
  ['mapnik::geometry_type'=2][zoom>=13][zoom<=20] {
    [feature='highway_motorway'],
    [feature='highway_trunk'] {
      [zoom=13] { line-pattern-file:url(img/line_double_14.png); }
      [zoom=14] { line-pattern-file:url(img/line_double_16.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_18.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20.png); }
    }
    [feature='highway_motorway_link'],
    [feature='highway_trunk_link'],
    [feature='highway_primary'],
    [feature='highway_secondary']  {
      [zoom=14] { line-pattern-file:url(img/line_double_14.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_16.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20.png); }
    }
    [feature='highway_tertiary'],
    [feature='highway_residential'],
    [feature='highway_unclassified'],
    [feature='highway_living_street'] {
      [zoom>=15] { line-pattern-file:url(img/line_double_14.png); }
      [zoom>=16] { line-pattern-file:url(img/line_double_16.png); }
    }
  }
}

#turning-circle-fill['mapnik::geometry_type'=1][zoom>=15] {
  marker-width: 6;
  [zoom>=16] { marker-width: 9; }
  [zoom>=17] { marker-width: 12; }
  marker-fill: #e6e6e6;
  marker-line-color: #707070;
  marker-line-width: 1.5;
}

#roads-fill::fill,
#bridges::fill {
  ['mapnik::geometry_type'=2][zoom>=13][zoom<=20] {
    [feature='highway_motorway'],
    [feature='highway_trunk'] {
      [zoom=13] { line-pattern-file:url(img/line_double_14_mask.png); }
      [zoom=14] { line-pattern-file:url(img/line_double_16_mask.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_18_mask.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20_mask.png); }
    }
    [feature='highway_motorway_link'],
    [feature='highway_trunk_link'],
    [feature='highway_primary'],
    [feature='highway_secondary'] {
      [zoom=14] { line-pattern-file:url(img/line_double_14_mask.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_16_mask.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20_mask.png); }
    }
    [feature='highway_tertiary'],
    [feature='highway_residential'],
    [feature='highway_unclassified'],
    [feature='highway_living_street'] {
      [zoom>=15] { line-pattern-file:url(img/line_double_14_mask.png); }
      [zoom>=16] { line-pattern-file:url(img/line_double_16_mask.png); }
    }
  }
}

#tunnels::case { opacity:0.25; }