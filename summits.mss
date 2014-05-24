// TODO: get prominence or other value for displaying at zoomed out levels
// TODO: smaller triangles

#summits {
  [zoom >= 12],
  [zoom >= 11][sps='True'] {
    marker-file: url('img/summit-black.png');
    marker-width: 5;
    marker-fill: black;
    marker-allow-overlap: true;
    text-name: [name];
    text-face-name: 'DejaVu Sans Book';
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 5;
    text-size: 9;
    text-fill: #333;
    text-halo-fill: white;
    text-halo-radius: 1;
    text-wrap-width: 20;

    [zoom >= 13] {
      text-size: 11;
    }
/*
    [sps='True'] {
      text-halo-fill: yellow;
      text-halo-radius: 1;
    }*/
  }
}