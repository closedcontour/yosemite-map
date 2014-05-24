// Airport
// Arch
// Area
// Bar
// Basin
// Beach
// Bench
// Bridge
// Building
// Canal
// Cape
// Cemetery
// Census
// Church
// Civil
// Cliff
// Crossing
// Dam
// Falls
// Flat
// Forest
// Gap
// Glacier
// Hospital
// Island
// Lake
// Locale
// Mine
// Park
// Pillar
// Plain
// Populated Place
// Post Office
// Range
// Rapids
// Reserve
// Reservoir
// Ridge
// School
// Slope
// Spring
// Stream
// Summit
// Tower
// Trail
// Tunnel
// Valley
// X Woods

#gnis [zoom >= 13] {
  text-name: '';
  text-face-name: 'DejaVu Sans Book';
  text-size: 9;
  text-fill: #333;
  text-halo-fill: white;
  text-halo-radius: 1;
  text-wrap-width: 20;
  [zoom = 13] { text-size: 10; }
  [zoom = 14] { text-size: 11.5; }
  [zoom >= 15] { text-size: 13; }

  [FEATURE_CL = 'Gap'],
  [FEATURE_CL = 'Locale'],
  [FEATURE_CL = 'Flat'],
  {
    text-name: [FEATURE_NA];
  }

  [FEATURE_CL = 'Woods'] {
    marker-file: url('img/park-18.svg');
    marker-allow-overlap: true;
    text-name: [FEATURE_NA];
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 7;
  }

  [FEATURE_CL = 'Falls'] {
    marker-width: 5;
    marker-height: 5;
    marker-line-color: @water-line;
    marker-fill: @water;
    marker-allow-overlap: true;
    text-name: [FEATURE_NA];
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 7;
    text-fill: darken(@water-line, 15%);
    text-halo-fill: lighten(@water, 10%);
  }

  [FEATURE_CL = 'Building'],
  [FEATURE_CL = 'Pillar'],
  [FEATURE_CL = 'Cliff'] {
    marker-width: 3;
    marker-height: 3;
    marker-fill: #333;
    marker-allow-overlap: true;
    text-name: [FEATURE_NA];
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 7;
  }

}