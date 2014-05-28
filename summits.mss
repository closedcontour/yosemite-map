// TODO: get prominence or other value for displaying at zoomed out levels
// TODO: smaller triangles
// TODO: Use abbreviations for Mtn/Mt/Pk

#points [natural='meadow'],
#points [natural='saddle'] {
  [zoom >= 12],
  [zoom >= 11] {
    text-name: [name];
    text-face-name: 'DejaVu Sans Book';
    text-size: 9;
    text-fill: #333;
    text-halo-fill: white;
    text-halo-radius: 1;
    text-wrap-width: 20;

    [zoom >= 13] {
      text-size: 11;
    }
  }
}

#points [natural='peak'] {
  [zoom >= 12],
  [zoom >= 11] {
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

#points [natural='waterfall'] {
  [zoom >= 12],
  [zoom >= 11] {
    marker-width: 6;
    marker-fill: @water-line;
    marker-line-width: 0;
    marker-allow-overlap: true;
    text-name: [name];
    text-face-name: 'DejaVu Sans Book';
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 5;
    text-size: 9;
    text-wrap-width: 20;
    text-fill: darken(@water-line, 15%);
    text-halo-fill: lighten(@water, 10%);
    text-halo-radius: 0.5;

    [zoom >= 13] {
      text-size: 11;
    }
  }
}

