// TODO: smaller triangles

// All point styles
#point-labels [tourism='viewpoint'],
#point-labels [tourism='camp_site'],
#point-labels [tourism='picnic_site'],
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
            [tourism='picnic_site'],
            [tourism='viewpoint'],
            [tourism='camp_site'],
            [natural='pillar'],
            [natural='dome'],
            [natural='peak'],
            [natural='wood'] {
                marker-width: 4;
                marker-height: 4;
                marker-fill: darken(@medium, 10%);
                marker-line-width: 0;
                text-dx: 5;

                // TODO: marker sizing
                [natural='peak'] {
                    marker-file: url(img/triangle-12.svg);
                    marker-width: 8;
                    marker-height: 8;
                    marker-line-width: 0;
                    text-dx: 6;
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

                [tourism='picnic_site'] {
                    marker-file: url(img/picnic.svg);
                    marker-width: 13;
                    marker-height: 8;
                    text-dx: 8;
                }

                marker-allow-overlap: true;
            }
        }

        text-name: [name];
        // Left-Right text placement
        [tourism='viewpoint'],
        [tourism='picnic_site'],
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
        text-line-spacing: -3.5;
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

#point-labels [natural='tree'][zoom >= 14] {
    text-name: [name];
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-face-name: @sans;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-line-spacing: -3.5;
    text-fill: @dark;
    text-wrap-width: 30;
    text-dx: 6;
    text-size: @md;

    [zoom = 16],
    [name != null] {
        marker-file: url(img/park-18.svg);
        marker-fill: darken(@medium, 10%);
        marker-line-width: 0;
        marker-width: 12;
        marker-height: 12;
        marker-allow-overlap: true;
    }
}

#point-labels [natural='spring'],
#point-labels [natural='waterfall'] {
  [zoom >= 13] {
    marker-width: 5;
    #point-labels [natural='spring'] {
        marker-fill: rgba(0,0,0,0);
        marker-line-color: @water-line;
        marker-line-width: 1.5;
    }
    #point-labels [natural='waterfall'] {
        marker-fill: @water-line;
        marker-line-width: 0;
    }
    marker-allow-overlap: true;
    text-name: [name];
    text-face-name: @serif-italic;
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 5;
    text-size: @sm;
    text-wrap-width: 20;
    text-fill: @water-text;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-line-spacing: -3.5;

    [zoom = 13] { text-size: @md; marker-width: 4; }
    [zoom = 14] { text-size: @md; marker-width: 5; }
    [zoom >= 15] { text-size: @lg; marker-width: 6; }

  }
}