#lines::boundary[boundary="national_park"] {
  casing/line-color: @boundary;
  casing/line-width: 0;
  line-color: @medium;
  line-width: 0;

  [zoom = 10] {
    casing/line-width: 1;
    line-width: 0.5;
  }
  [zoom >= 11] {
    line-width: 1;
    casing/line-width: 1.5;
    line-dasharray: 6,2,2,2;
  }
  [zoom >= 12] {
    casing/line-width: 2;
    line-width: 1.5;
    line-dasharray: 6,2,2,2;
  }
}

#map-boundary {
  line-color: black;
  line-width: 2;
  polygon-opacity: 1;
  polygon-fill: white;
}