// TODO: smaller triangles

// All point styles
#point-labels [tourism='viewpoint'],
#point-labels [tourism='camp_site'],
#point-labels [natural='pillar'],
#point-labels [natural='dome'],
#point-labels [natural='peak'],
#point-labels [natural='wood'],
#point-labels [natural='meadow'],
#point-labels [natural='cliff'],
#point-labels [natural='saddle']
{
    [zoom >= 12] {
        // Things with markers
        [zoom > 12],
        [zoom = 12][weight="major"] {
            [tourism='viewpoint'],
            [tourism='camp_site'],
            [natural='pillar'],
            [natural='dome'],
            [natural='peak'],
            [natural='wood'] {
                marker-width: 4;
                marker-height: 4;
                marker-fill: @medium;
                marker-line-width: 0;
                text-dx: 5;

                // TODO: marker sizing
                [natural='peak'] {
                    marker-file: url(img/triangle-12.svg);
                    marker-width: 8;
                    marker-height: 8;
                    marker-line-width: 0;
                    text-dx: 5;
                }

                [natural='wood'] {
                    marker-file: url(img/park-18.svg);
                    marker-width: 18;
                    marker-height: 18;
                    text-dx: 10;
                }

                [tourism='camp_site'] {
                    marker-file: url(img/campsite-18.svg);
                    marker-width: 14;
                    marker-height: 14;
                    text-dx: 8;
                }

                marker-allow-overlap: true;
            }
        }

        text-name: [name];
        // Left-Right text placement
        [tourism='viewpoint'],
        [tourism='camp_site'],
        [natural='pillar'],
        [natural='dome'],
        [natural='peak'],
        [natural='wood'] {
            text-placement-type: simple;
            text-placements: "E,NE,SE,W,NW,SW";
        }

        text-face-name: @sans;
        text-halo-fill: @halo-fill;
        text-halo-radius: @halo-radius;
        text-fill: @dark;
        text-wrap-width: 30;

        [zoom <= 12] { text-size: @sm; }
        [zoom = 13] { text-size: @md; }
        [zoom = 14] { text-size: @lg; }
        [zoom >= 15] { text-size: @xl; }

        [weight!="major"][zoom=12] {
            text-name: '';
        }
    }
}

/*#point-labels [natural='waterfall'] {
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
}*/