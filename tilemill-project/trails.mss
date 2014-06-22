#lines::trails[highway='path'][zoom >= 11] {
  line-color: @dark;

  [zoom = 11]  {
    line-width: 0.3;
    line-dasharray: 3,1;
  }

  [zoom = 12]  {
    line-width: 0.5;
    line-dasharray: 5,1.5;
  }

  [zoom = 13],
  [zoom = 14] {
    line-dasharray: 6,2;
    line-width: 0.6;
  }

  [zoom >= 15] {
    line-dasharray: 6,2;
    line-width: 1;
    line-color: @darker;
  }

}

#trail-end-points[zoom>=14],
#trail-start-points[zoom>=14] {
  marker-line-width: 0;
  marker-allow-overlap: true;
  [zoom=14] { marker-width: 3; marker-height: 3; marker-fill: @medium; }
  [zoom=15] { marker-width: 4; marker-height: 4; marker-fill: @dark; }
  [zoom=16] { marker-width: 5; marker-height: 5; marker-fill: @dark; }
}