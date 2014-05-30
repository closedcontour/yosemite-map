// TODO: county line data
// TODO: wilderness boundary
// TODO: retina tiles

@background: #dadada;

@sans: 'DejaVu Sans Book';
@sans-italic: 'DejaVu Sans Oblique';

@halo-fill: rgba(255, 255, 255, 0.1);
@halo-radius: 2;

@dark: #303030;
@medium: #666;
@light: #999;

@water-fill: rgb(136, 213, 234);
@water-line: #3499ad;
@water-text: darken(@water-line, 8%);

@glacier-fill: white;
@glacier-line: @water-line;

@boundary: yellow;

@road-color: #ffffbf;
@road-casing: #555;

@contour-color: #88724e;

@xxs: 9;
@xs: 10;
@sm: 11;
@md: 12;
@lg: 13;
@xl: 14;
@xxl: 16;

Map {
  background-color: @background;
}

/*#buildings {*/
#polygons::buildings[building='yes'] {
  // TODO: use building renderer at high zoom levels
  polygon-opacity: 1;
  polygon-fill: @dark;
}

#hillshade {
  raster-opacity:1;
  raster-scaling: bilinear;
  raster-colorizer-stops:
    stop(0, @background)
    stop(1, #888)
    stop(256, #fff);
}
