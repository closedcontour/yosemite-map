#polygons::glaciers[natural="glacier"] {
  polygon-fill: @glacier-fill;
  polygon-opacity: 0.8;
  line-color: @glacier-line;
  line-opacity: 0.3;
}

#polygons::filled-water[waterway="riverbank"],
#polygons::filled-water[natural="water"] {
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
