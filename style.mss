@background: #dadada;

Map {
  background-color: @background;
}

#buildings {
  // TODO: use building renderer at high zoom levels
  polygon-opacity: 1;
  polygon-fill: #333;
}

#hillshade {
  raster-opacity:1;
  // TODO: interpolation
  raster-colorizer-stops:
    stop(0, @background)
    stop(1, #888)
    stop(256, #fff);
}




#ranges {
  line-width:0;
  line-color: red;

  text-face-name: 'DejaVu Sans Oblique';
  text-fill: #666;
  text-halo-fill: white;
  text-halo-radius: 0.7;

  text-size: 16;
  text-spacing: 500;

  text-name: "[name].replace(' ', '       ')";
  text-placement: line;
  //text-character-spacing: 10;
  /*text-max-char-angle-delta: 15;*/
  text-transform: uppercase;

}
