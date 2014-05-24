#trails [zoom >= 11] {
  line-color:#333;

  [zoom >= 13] {
    line-dasharray: 6,2;
    line-width: 0.6;
  }

  [zoom = 12]  {
    line-width: 0.5;
    line-dasharray: 5,1.5;
  }

  [zoom = 11]  {
    line-width: 0.3;
    line-dasharray: 3,1;
  }

  [zoom >= 14] {
    line-color: #222;
  }

}

#trails-labels {
  [zoom >= 13][NAME != 'none'] {
    text-face-name: 'DejaVu Sans Book';
    text-fill: black;
    text-halo-fill: white;
    text-halo-radius: 0.5;
    text-size: 11;

    text-name: [NAME];
    text-placement: line;
    text-dy: -7;
  }
}