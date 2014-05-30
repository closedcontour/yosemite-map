#line-labels::glaciers[natural='glacier'] {
  text-name: [name];
  text-placement: line;
  text-face-name: @sans-italic;
  text-fill: @water-line;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-size: @md;
}

#line-labels::ridges[natural='mountain_range'],
#line-labels::ridges[natural='valley'],
#line-labels::ridges[natural='cliff'],
#line-labels::ridges[natural='ridge'] {
  text-name: "[name].replace(' ', '       ')";
  text-face-name: @sans-italic;
  text-fill: @medium;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-placement: line;
  text-transform: uppercase;
  text-size: @xxl;
  text-spacing: 500;

  [length<2500] {
    text-size: @lg;
  }
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
  text-face-name: @sans-italic;
  text-fill: @water-text;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-size: 12;
  text-name: [name];
  text-placement: line;
  text-dy: -7;
  text-min-distance: 200;
}
