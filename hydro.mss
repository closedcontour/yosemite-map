// FCode
// 37800 = Ice
// 39001 = Intermittent lake/pond
// 39004 = Perennial lake/pond
// 39009 = Perennial
// 43624 = Treatment reservoir
// 46600 = Swamp/marsh

@water: rgb(136, 213, 234);
@water-line: #3499ad;

#hydro-lakes {
  line-color: red;

  // Ice
  [FCode=37800] {
    polygon-fill: rgb(255, 255, 255);
    polygon-opacity: 0.8;
    line-color: rgb(35, 136, 234);
    line-opacity: 0.3;
  }

  // Lake
  [FType=390] {
    polygon-fill: @water;
    line-color: @water-line;

    /*::fade {*/
      // TODO: use an alpha fade line pattern offset
    /*}*/
  }

  [zoom >= 14] { line-width: 0.8; }
  [zoom = 13] { line-width: 0.5; }
  [zoom = 12] { line-width: 0.4; }
  [zoom = 11] { line-width: 0.3; }
  [zoom <= 10] { line-width: 0.2; }

  // Swamp
  [FType=466] {
    line-width: 0px;
  }
}

#hydro-lakes-labels {
  [FType=390] {
    text-name: [GNIS_Name];
    text-face-name: 'DejaVu Sans Book';
    text-fill: darken(@water-line, 15%);
    text-halo-fill: lighten(@water, 10%);
    text-halo-radius: 0.5;
    text-size: 11;
    text-wrap-width: 30;
    /*text-min-distance: 25;*/

    [zoom = 12] {
      [AreaSqKm < 0.20] { text-name: ''; }
    }
    [zoom = 11] {
      [AreaSqKm < 0.60] { text-name: ''; }
    }
    [zoom <= 10] { text-name: ''; }
  }
}

#hydro-flows {
  [FCode=46003],
  [FCode=46006] {
    line-width: 0;
    line-color: @water-line;

    [zoom >= 15] { line-width: 1.5; }
    [zoom = 14]  { line-width: 1.2; }
    [zoom = 13]  { line-width: 0.8; }
    [zoom = 12]  { line-width: 0.6; }
    [zoom = 11]  { line-width: 0.4; }
    [zoom < 11]  { line-width: 0.3; }

    [FCode=46003] {
      line-dasharray: 4,2;
    }
  }
}

#hydro-flows-labels {
  // TODO: figure out which code is being rendered that makes Merced River show up
  [zoom >= 13] {
    text-face-name: 'DejaVu Sans Oblique';
    text-fill: darken(@water-line, 15%);
    text-halo-fill: lighten(@water, 10%);
    text-halo-radius: 0.7;
    text-size: 12;

    text-name: [GNIS_Name];
    text-placement: line;
    text-dy: -7;
    text-min-distance: 200;
  }
}

#hydro-areas {
  line-color: @water-line;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill: @water;
}
