#polygons::glaciers[natural="glacier"] {
  polygon-fill: @glacier-fill;
  polygon-opacity: 0.8;
  line-color: @glacier-line;
  line-opacity: 0.3;
}

#polygons::lakes[natural="water"] {
  polygon-fill: @water-fill;
  line-color: @water-line;

  [zoom >= 14] { line-width: 0.8; }
  [zoom = 13]  { line-width: 0.5; }
  [zoom = 12]  { line-width: 0.4; }
  [zoom = 11]  { line-width: 0.3; }
  [zoom <= 10] { line-width: 0.2; }
}

#lines::hydro[waterway="stream"] {
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

#polygons[waterway="riverbank"] {
  // TODO: variable line width
  line-color: @water-line;
  line-width: 0.5;
  polygon-opacity: 1;
  polygon-fill: @water-fill;
}
