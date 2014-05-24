// TODO: consider putting contour lines under veg/glaciers
@contour-color: #88724e;

// TODO: 20ft contours at high zoom levels?
// TODO: tone down zoom 11 contours

#contours-100 [zoom >= 13] {
  line-width:0.2;
  line-color: @contour-color;
}

#contours-500 [zoom >= 12] {
  line-width:0.4;
  line-color: @contour-color;
}

#contours-500-labels [zoom >= 12] {
  text-name: [elev_ft];
  text-placement: line;
  text-fill: @contour-color;
  text-face-name: 'DejaVu Serif Book';
  // TODO: better halo/back-fill
  text-halo-fill: #ddd;
  text-halo-radius: 1;
  text-size: 9;
}
