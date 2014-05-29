// TODO: glacier labeling

@water: rgb(136, 213, 234);
@water-line: #3499ad;

#polygons::glaciers[natural="glacier"] {
  polygon-fill: rgb(255, 255, 255);
  polygon-opacity: 0.8;
  line-color: rgb(35, 136, 234);
  line-opacity: 0.3;
}

#polygons::lakes[natural="water"] {
  polygon-fill: @water;
  line-color: @water-line;
  [zoom >= 14] { line-width: 0.8; }
  [zoom = 13] { line-width: 0.5; }
  [zoom = 12] { line-width: 0.4; }
  [zoom = 11] { line-width: 0.3; }
  [zoom <= 10] { line-width: 0.2; }
}

#polygons::lakes[natural="water"] {
  text-name: [name];
  text-face-name: 'DejaVu Sans Book';
  text-fill: darken(@water-line, 15%);
  text-halo-fill: lighten(@water, 10%);
  text-halo-radius: 0.5;
  text-size: 11;
  text-wrap-width: 30;
  /*text-min-distance: 25;*/

  [zoom = 12] {
    [way_area < 200000] { text-name: ''; }
  }
  [zoom = 11] {
    [way_area < 600000] { text-name: ''; }
  }
  [zoom <= 10] { text-name: ''; }
}

#lines::hydro[waterway="stream"] {
  line-width: 0;
  line-color: @water-line;

  [zoom >= 15] { line-width: 1.5; }
  [zoom = 14]  { line-width: 1.2; }
  [zoom = 13]  { line-width: 0.8; }
  [zoom = 12]  { line-width: 0.6; }
  [zoom = 11]  { line-width: 0.4; }
  [zoom < 11]  { line-width: 0.3; }

  [intermittent="yes"] {
    line-dasharray: 4,2;
  }
}

#lines::hydro[waterway="stream"] {
  [zoom >= 13] {
    text-face-name: 'DejaVu Sans Oblique';
    text-fill: darken(@water-line, 15%);
    text-halo-fill: lighten(@water, 10%);
    text-halo-radius: 0.7;
    text-size: 12;

    text-name: [name];
    text-placement: line;
    text-dy: -7;
    text-min-distance: 200;
  }
}

#polygons[waterway="riverbank"] {
  // TODO: variable line width
  line-color: @water-line;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill: @water;
}
