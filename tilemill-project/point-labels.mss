// All serif point styles
#point-labels [place='populated'][zoom >= 11] {
    text-name: [name];
    // Left-Right text placement
    text-face-name: @serif;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-line-spacing: -3.5;
    text-wrap-width: 36;

    [zoom <= 11] { text-size: @sm; text-fill: @medium; }
    [zoom = 12] { text-size: @lg; text-fill: @medium; }
    [zoom = 13] { text-size: @xl; text-fill: @dark; }
    [zoom = 14] { text-size: @xxl; text-fill: @darker;  }
    [zoom >= 15] { text-size: @xxl; text-fill: @darkest; }

    [weight!="major"][zoom<=12] {
        text-name: '';
    }
}

// All sans point styles
#point-labels [tourism='viewpoint'],
#point-labels [tourism='camp_site'],
#point-labels [tourism='picnic_site'],
#point-labels [highway='trailhead'],
#point-labels [natural='pillar'],
#point-labels [natural='dome'],
#point-labels [natural='peak'],
#point-labels [natural='wood'],
#point-labels [natural='meadow'],
#point-labels [natural='flat'],
#point-labels [natural='cliff'],
#point-labels [natural='saddle']
{
    [zoom >= 11] {
        text-wrap-width: 36;
        text-face-name: @sans;
        text-halo-fill: @halo-fill;
        text-halo-radius: @halo-radius;
        text-line-spacing: -3.5;
        // Things with markers
        [zoom > 12],
        [zoom <= 12][weight="major"] {
            [tourism='picnic_site'],
            [tourism='viewpoint'],
            [tourism='camp_site'],
            [highway='trailhead'],
            [natural='pillar'],
            [natural='dome'],
            [natural='peak'],
            [natural='wood'] {
                marker-allow-overlap: true;
                marker-width: 4;
                marker-height: 4;
                /*marker-fill: darken(@medium, 10%);*/

                [zoom <= 11] { marker-fill: darken(@medium, 5%); }
                [zoom = 12] { marker-fill: darken(@medium, 5%); }
                [zoom = 13] { marker-fill: darken(@dark, 5%); }
                [zoom = 14] { marker-fill: darken(@darker, 5%);  }
                [zoom >= 15] { marker-fill: darken(@darkest, 5%); }

                marker-line-width: 0;
                text-dx: 5;

                [zoom=11] {
                    marker-allow-overlap: false;
                    marker-width: 2.5;
                    marker-height: 2.5;
                }

                [natural='peak'] {
                    marker-file: url(img/triangle-12.svg);
                    marker-width: 8;
                    marker-height: 8;
                    text-dx: 6;
                    [zoom=12] {
                        marker-width: 7;
                        marker-height: 7;
                    }
                    [zoom=11] {
                        marker-width: 4;
                        marker-height: 4;
                        text-dx: 4;
                        text-wrap-width: 24;

                    }
                    marker-line-width: 0;
                }

                [natural='wood'] {
                    marker-file: url(img/park-18.svg);
                    marker-width: 18;
                    marker-height: 18;
                    text-dx: 10;
                }

                [highway='trailhead'] {
                    marker-file: url(img/trailhead.svg);
                    marker-width: 11.4;
                    marker-height: 16;
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
            }
        }

        text-name: [name];
        // Left-Right text placement
        [tourism='viewpoint'],
        [tourism='picnic_site'],
        [tourism='camp_site'],
        [highway='trailhead'],
        [natural='pillar'],
        [natural='dome'],
        [natural='peak'],
        [natural='wood'] {
            text-placement-type: simple;
            text-placements: "E,NE,SE,W,NW,SW";
        }

        [zoom <= 11] { text-size: @xs; text-fill: @medium; }
        [zoom = 12] { text-size: @sm; text-fill: @medium; }
        [zoom = 13] { text-size: @md; text-fill: @dark; }
        [zoom = 14] { text-size: @lg; text-fill: @darker;  }
        [zoom >= 15] { text-size: @xl; text-fill: @darkest; }

        [weight!="major"][zoom<=12] {
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
    [zoom = 14] { text-fill: @darker;  }
    [zoom >= 15] { text-fill: @darkest; }
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
        [zoom >= 15] { marker-line-color: @dark-water-line; }
    }
    #point-labels [natural='waterfall'] {
        marker-fill: @water-line;
        marker-line-width: 0;
        [zoom >= 15] { marker-fill: @dark-water-line; }
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

    [zoom = 13] { text-size: @md; marker-width: 4; text-fill: @water-text; }
    [zoom = 14] { text-size: @md; marker-width: 5; text-fill: @water-text;  }
    [zoom >= 15] { text-size: @lg; marker-width: 6; text-fill: @dark-water-text; }
  }
}
