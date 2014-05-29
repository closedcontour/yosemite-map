// TODO: road labels

@primary-road-color: #ffffbf;

#lines::roads[highway="primary"],
#lines::roads[highway="secondary"],
#lines::roads[highway="residential"],
#lines::roads[highway="tertiary"],
#lines::roads[highway="service"] {
  // tunnel=yes -> Wawona Tunnel
  [highway="primary"],
  [tunnel="yes"] {
    ::casing {
      [tunnel="yes"] {
        line-dasharray: 4,2;
      }
      line-color: #555;
      [zoom <= 11] { line-width: 1.5; }
      [zoom = 12] { line-width: 2.0; }
      [zoom = 13] { line-width: 3.0; }
      [zoom >= 14] { line-width: 5.0; }
    }
    ::main {
      [tunnel="yes"] {
        line-dasharray: 4,2;
      }

      line-color: @primary-road-color;
      [zoom <= 11] { line-width: 1.0; }
      [zoom = 12] { line-width: 1.5; }
      [zoom = 13] { line-width: 2.5; }
      [zoom >= 14] { line-width: 4.0; }
    }
  }

  [highway="secondary"] {
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

  [highway="residential"],
  [highway="tertiary"],
  [highway="service"][service="park"] {
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

  [highway="service"][service="parking_aisle"],
  [highway="service"][service="campground"] {
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

  [surface="dirt"],
  [surface="gravel"] {
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
