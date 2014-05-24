// TODO: road labels

// X 1 – (167) Primary roads
// X 2 – (118) Secondary roads
// X 3 – (152) Residential roads
// X 4 – (186) Campground roads
// X 5 – (75) Tertiary park service roads
// X 7 – (214) Dirt roads
// X 8 – (8) Gravel roads
// X 9 – (67) Parking lots/pullouts
// X 10 – (1) Tunnels

@primary-road-color: #ffffbf;
/*@primary-road-color: red;*/

#roads {
  line-width: 0;

  // CLASS=10 -> Wawona Tunnel
  [CLASS=1],
  [CLASS=10] {
    ::casing {
      [CLASS=10] {
        line-dasharray: 4,2;
      }
      line-color: #555;
      [zoom <= 11] { line-width: 1.5; }
      [zoom = 12] { line-width: 2.0; }
      [zoom = 13] { line-width: 3.0; }
      [zoom >= 14] { line-width: 5.0; }
    }
    ::main {
      [CLASS=10] {
        line-dasharray: 4,2;
      }

      line-color: @primary-road-color;
      [zoom <= 11] { line-width: 1.0; }
      [zoom = 12] { line-width: 1.5; }
      [zoom = 13] { line-width: 2.5; }
      [zoom >= 14] { line-width: 4.0; }
    }
  }

  [CLASS=2] {
    ::casing {
      line-color: #555;
      [zoom <= 11] { line-width: 0; }
      [zoom = 12] { line-width: 1.5; }
      [zoom = 13] { line-width: 2.0; }
      [zoom >= 14] { line-width: 4.0; }
    }
    ::main {
      line-color: @primary-road-color;
      [zoom <= 11] { line-width: 0; }
      [zoom = 12] { line-width: 1.0; }
      [zoom = 13] { line-width: 1.5; }
      [zoom >= 14] { line-width: 3.0; }
    }
  }

  [CLASS=3],
  [CLASS=5] {
    ::casing {
      line-color: #555;
      [zoom <= 12] { line-width: 0; }
      [zoom = 13] { line-width: 1.5; }
      [zoom >= 14] { line-width: 3.0; }
    }
    ::main {
      line-color: @primary-road-color;
      [zoom <= 12] { line-width: 0; }
      [zoom = 13] { line-width: 1.0; }
      [zoom >= 14] { line-width: 2.0; }
    }
  }

  [CLASS=9],
  [CLASS=4] {
    ::casing {
      line-color: #555;
      [zoom <= 13] { line-width: 0; }
      [zoom = 14] { line-width: 1.5; }
      [zoom >= 15] { line-width: 2.0; }
    }
    ::main {
      line-color: @primary-road-color;
      [zoom <= 12] { line-width: 0; }
      [zoom = 13] { line-width: 0.7; }
      [zoom = 14] { line-width: 1.0; }
      [zoom >= 15] { line-width: 1.5; }
    }
  }

  [CLASS=7],
  [CLASS=8] {
    ::casing {
      line-color: #555;
      [zoom <= 12] { line-width: 0; }
      [zoom = 13] { line-width: 1.5; }
      [zoom >= 14] { line-width: 3.0; }
    }
    ::main {
      line-color: @primary-road-color;
      line-dasharray: 5,1;
      [zoom <= 12] { line-width: 0; }
      [zoom = 13] { line-width: 1.0; }
      [zoom >= 14] { line-width: 2.0; }
    }
  }

}
