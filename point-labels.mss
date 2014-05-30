// TODO: smaller triangles

// All point styles
#point-labels [natural='peak'],
#point-labels [natural='wood'],
#point-labels [natural='meadow'],
#point-labels [natural='saddle']
{
    [zoom > 11] {
        // Things with markers
        [natural='peak'],
        [natural='wood'] {
            // TODO: marker sizing
            [natural='peak'] {
                marker-file: url(img/triangle-12.svg);
                marker-width: 8;
                marker-height: 8;
                text-dx: 5;
            }

            [natural='wood'] {
                marker-file: url(img/park-18.svg);
                marker-width: 18;
                marker-height: 18;
                text-dx: 10;
            }

            marker-fill: @dark;
            marker-allow-overlap: true;
        }

        // Left-Right text placement
        [natural='peak'],
        [natural='wood'] {
            text-placement-type: simple;
            text-placements: "E,NE,SE,W,NW,SW";

        }

        text-name: [name];
        text-face-name: @sans;
        text-halo-fill: @halo-fill;
        text-halo-radius: @halo-radius;
        text-fill: @dark;
        text-wrap-width: 30;

        [zoom <= 12] { text-size: @sm; }
        [zoom = 13] { text-size: @md; }
        [zoom = 14] { text-size: @lg; }
        [zoom >= 15] { text-size: @xl; }
    }
}

#point-labels [natural='waterfall'] {
  [zoom >= 12],
  [zoom > 11] {
    marker-width: 6;
    marker-fill: @water-line;
    marker-line-width: 0;
    marker-allow-overlap: true;
    text-name: [name];
    text-face-name: @sans;
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 5;
    text-size: 9;
    text-wrap-width: 20;
    text-fill: @water-text;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;

    [zoom >= 13] {
      text-size: 11;
    }
  }
}