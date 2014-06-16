@off: 0;
@thin: 0.2;
@thick: 0.4;
@thicker: 0.8;

#ice-contours {
  line-color: @water-line;
}

#no-ice-contours {
  line-color: @contour-color;
}

#ice-contours,
#no-ice-contours {

  // 40 ft intervals
  line-width: @off;
  [zoom=14] { line-width: @thin; }
  [zoom=15] { line-width: @thick; }
  [zoom=16] { line-width: @thick; }

  // 200 ft intervals
  [elev_ft=0],
  [elev_ft=200],[elev_ft=400],[elev_ft=600],[elev_ft=800],[elev_ft=1000],
  [elev_ft=1200],[elev_ft=1400],[elev_ft=1600],[elev_ft=1800],[elev_ft=2000],
  [elev_ft=2200],[elev_ft=2400],[elev_ft=2600],[elev_ft=2800],[elev_ft=3000],
  [elev_ft=3200],[elev_ft=3400],[elev_ft=3600],[elev_ft=3800],[elev_ft=4000],
  [elev_ft=4200],[elev_ft=4400],[elev_ft=4600],[elev_ft=4800],[elev_ft=5000],
  [elev_ft=5200],[elev_ft=5400],[elev_ft=5600],[elev_ft=5800],[elev_ft=6000],
  [elev_ft=6200],[elev_ft=6400],[elev_ft=6600],[elev_ft=6800],[elev_ft=7000],
  [elev_ft=7200],[elev_ft=7400],[elev_ft=7600],[elev_ft=7800],[elev_ft=8000],
  [elev_ft=8200],[elev_ft=8400],[elev_ft=8600],[elev_ft=8800],[elev_ft=9000],
  [elev_ft=9200],[elev_ft=9400],[elev_ft=9600],[elev_ft=9800],[elev_ft=10000],
  [elev_ft=10200],[elev_ft=10400],[elev_ft=10600],[elev_ft=10800],[elev_ft=11000],
  [elev_ft=11200],[elev_ft=11400],[elev_ft=11600],[elev_ft=11800],[elev_ft=12000],
  [elev_ft=12200],[elev_ft=12400],[elev_ft=12600],[elev_ft=12800],[elev_ft=13000] {

    [zoom<=12] {
      line-width: @off;
    }
    [zoom=13] {
      line-width: @thin;
    }
    [zoom=14] {
      line-width: @thick;
    }
    [zoom=15] { line-width: @thicker; }
    [zoom=16] { line-width: @thicker; }

    // 1000 ft intervals
    [elev_ft=1000],
    [elev_ft=2000],
    [elev_ft=3000],
    [elev_ft=4000],
    [elev_ft=5000],
    [elev_ft=6000],
    [elev_ft=7000],
    [elev_ft=8000],
    [elev_ft=9000],
    [elev_ft=10000],
    [elev_ft=11000],
    [elev_ft=12000],
    [elev_ft=13000] {
      [zoom>=12][zoom<=14] {
        line-width: @thick;
      }
      [zoom>=15] {
        line-width: @thicker;
      }
    }
  }
}

#contour-labels [zoom >= 12] {
  [elev_ft=1000],
  [elev_ft=2000],
  [elev_ft=3000],
  [elev_ft=4000],
  [elev_ft=5000],
  [elev_ft=6000],
  [elev_ft=7000],
  [elev_ft=8000],
  [elev_ft=9000],
  [elev_ft=10000],
  [elev_ft=11000],
  [elev_ft=12000],
  [elev_ft=13000] {
    text-name: [elev_ft];
    text-placement: line;
    text-fill: @contour-color;
    text-face-name: @sans;
    text-halo-fill: @halo-fill;
    text-halo-radius: @halo-radius;
    text-size: @xs;
    text-spacing: 500;
  }
}
