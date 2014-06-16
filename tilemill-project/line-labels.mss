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
    [zoom >= 15] { text-fill: @dark; }
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-placement: line;
    text-transform: uppercase;
    [natural='meadow'] {
      text-transform: none;
    }
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
  text-size: @sm;
  [zoom = 13] { text-fill: @dark; }
  [zoom = 14] { text-fill: @darker;  }
  [zoom >= 15] { text-size: @md; text-fill: @darkest; }
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-name: [name];
  text-placement: line;
  text-spacing: 400;
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
  [zoom >= 15] { text-size: @xl; text-fill: @dark-water-text; }
}

#macro-line-labels::ridges[natural='mountain_range'],
#macro-line-labels::ridges[natural='valley'],
#macro-line-labels::ridges[natural='cliff'],
#macro-line-labels::ridges[natural='meadow'],
#macro-line-labels::ridges[natural='flat'],
#macro-line-labels::ridges[natural='peak'],
#macro-line-labels::ridges[natural='ridge'] {
  [zoom>=11][zoom <= 12] {
    text-name: [name];
    text-face-name: @sans-italic;
    text-fill: @medium;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-placement: line;
    text-transform: uppercase;
    [natural='meadow'] {
      text-transform: none;
    }
    text-size: @xs;
    text-spacing: 500;
    text-character-spacing: 1;
    text-max-char-angle-delta: 20;
  }
}

#macro-line-labels::mileages[highway='path'][zoom >= 14] {
  text-name: '';
  text-face-name: @sans;
  text-fill: @dark;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;

  [zoom = 14][miles >= 0.5] {
    text-name: [miles];
    text-size: @sm;
    text-fill: @dark;
  }
  [zoom = 15][miles >= 0.4] {
    text-name: [miles];
    text-size: @md;
    text-fill: @darker;
  }
  [zoom = 16][miles >= 0.2] {
    text-name: [miles];
    text-size: @lg;
    text-fill: @darker;
  }
}

#macro-line-labels::np-label[weight='label'] {
  [zoom = 10] {
    text-name: [name];
    text-face-name: @sans-italic;
    text-fill: lighten(@medium, 10%);
    text-halo-fill: @halo-fill;
    text-halo-radius: 3px;
    text-placement: line;
    text-transform: uppercase;
    text-size: 24px;
    text-character-spacing: 4;
  }
}