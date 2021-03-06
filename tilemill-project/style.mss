// TODO: retina tiles

@background: #dadada;

@sans: 'Univers 57 Condensed Regular', 'DejaVu Sans Condensed';
@sans-italic: 'Univers 57 Condensed Oblique', 'DejaVu Sans Condensed Oblique';
@serif: 'Minion Pro SmBd Cond Regular', 'DejaVu Serif Condensed';
@serif-italic: 'Minion Pro SmBd Cond Capt Italic', 'DejaVu Serif Condensed Italic';

@halo-fill: rgba(255, 255, 255, 0.1);
@halo-radius: 2;

@darkest: #202020;
@darker: #333;
@dark: #484848;
@medium: #666;

@water-fill: rgb(136, 213, 234);
@water-line: #3499ad;
@dark-water-line: darken(@water-line, 4%);
@water-text: @dark-water-line;
@dark-water-text: darken(@water-text, 6%);

@glacier-fill: white;
@glacier-line: @water-line;

@boundary: yellow;

@road-color: #ffffbf;
@road-casing: #555;

@urban-fill: #AD9034;

@contour-color: #88724e;

@xxs: 9;
@xs: 10;
@sm: 12;
@md: 13;
@lg: 14;
@xl: 15;
@xxl: 16.5;

@texture-min-level: 12;

Map {
  background-color: @background;
}

#polygons::buildings[building='yes'] {
  // TODO: use building renderer at high zoom levels
  polygon-opacity: 1;
  [zoom>=15] {
    polygon-fill: @dark;
  }
  [zoom<=14] {
    polygon-fill: lighten(@dark, 15%);
  }
}

#hillshade {
  raster-opacity:1;
  raster-scaling: bilinear;
  raster-colorizer-stops:
    stop(0, @background)
    stop(1, #888)
    stop(256, #fff);
}
