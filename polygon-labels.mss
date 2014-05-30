#polygon-labels::lakes[natural="water"][zoom >= 11] {
  text-name: [name];
  text-face-name: @sans;
  text-fill: @water-text;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-size: 11;
  text-wrap-width: 30;

  [zoom = 13][way_area < 50000] { text-name: ''; }
  [zoom = 12][way_area < 500000] { text-name: ''; }
  [zoom = 11][way_area < 800000] { text-name: ''; }
}