#polygon-labels::lakes[natural="water"][zoom >= 11] {
  text-name: [name];
  text-placement: interior;
  text-face-name: @serif;
  text-fill: @water-text;
  text-halo-fill: @halo-fill;
  text-halo-radius: @halo-radius;
  text-size: @sm;
  text-wrap-width: 30;
  text-line-spacing: -4.0;

  [zoom = 13][way_area < 50000] { text-name: ''; }
  [zoom = 12][way_area < 500000] { text-name: ''; }
  [zoom = 11][way_area < 800000] { text-name: ''; }

  [zoom <= 12] { text-size: @sm; }
  [zoom = 13] { text-size: @md; }
  [zoom = 14] { text-size: @lg; }
  [zoom >= 15] { text-size: @xl; }
}