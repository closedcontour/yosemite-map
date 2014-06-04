#line-labels::glaciers[natural='glacier'] {
  text-name: [name];
  text-placement: line;
  text-face-name: @serif-italic;
  text-fill: @water-line;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-size: @md;
}

#line-labels::ridges[natural='mountain_range'],
#line-labels::ridges[natural='valley'],
#line-labels::ridges[natural='cliff'],
#line-labels::ridges[natural='meadow'],
#line-labels::ridges[natural='flat'],
#line-labels::ridges[natural='peak'],
#line-labels::ridges[natural='ridge'] {
  [zoom >= 13] {
    text-name: "[name].replace(' ', '   ')";
    text-face-name: @sans-italic;
    text-fill: @medium;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-placement: line;
    text-transform: uppercase;
    text-character-spacing: 2;
    text-size: @lg;
    text-spacing: 500;
  }
  /*[length<2500] {
    text-size: @lg;
  }*/
}

#line-labels::trails[highway='path'][zoom >= 13][name != 'none'] {
  text-face-name: @sans;
  text-fill: @dark;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-size: @sm;
  text-name: [name];
  text-placement: line;
  text-dy: -7;
}

#line-labels::hydro[waterway="stream"][zoom >= 13] {
  text-face-name: @serif-italic;
  text-fill: @water-text;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-size: @lg;
  text-name: [name];
  text-placement: line;
  text-dy: -7;
  text-min-distance: 200;
}

#macro-line-labels::ridges[natural='mountain_range'],
#macro-line-labels::ridges[natural='valley'],
#macro-line-labels::ridges[natural='cliff'],
#macro-line-labels::ridges[natural='meadow'],
#macro-line-labels::ridges[natural='flat'],
#macro-line-labels::ridges[natural='peak'],
#macro-line-labels::ridges[natural='ridge'] {
  [zoom <= 12] {
    text-name: [name];
    text-face-name: @sans-italic;
    text-fill: @medium;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-placement: line;
    text-transform: uppercase;
    text-size: @xs;
    text-spacing: 500;
    text-character-spacing: 1;
    text-max-char-angle-delta: 100;
    /*[length<2500] {
      text-size: @lg;
    }*/
  }
}
