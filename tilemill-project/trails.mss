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
  }

}
