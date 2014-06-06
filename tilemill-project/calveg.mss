// TODO: scale bump map
// TODO: less dense bump map for shrub
// TODO: better mapping: http://www.fs.usda.gov/detail/r5/landmanagement/resourcemanagement/?cid=stelprdb5365219;

#calveg {
  polygon-opacity: 0.5;

/*
00   less than 1 percent
05   1 - 9.9 percent
15   10 - 19.9 percent
25   20 - 29.9 percent
35   30 - 39.9 percent
45   40 - 49.9 percent
55   50 - 59.9 percent
65   60 - 69.9 percent
75   70 - 79.9 percent
85   80 - 89.9 percent
95   90 - 100 percent
*/
  [TOTAL_TREE='00'] {
    polygon-opacity: 0.1;
  }

  [TOTAL_TREE='05'] {
    polygon-opacity: 0.15;
  }

  [TOTAL_TREE='15'],
  [TOTAL_TREE='25'] {
    polygon-opacity: 0.4;
  }

  [TOTAL_TREE='35'] {
    polygon-opacity: 0.3;
  }

  [TOTAL_TREE='45'] {
    polygon-opacity: 0.5;
  }

  [TOTAL_TREE='55'],
  [TOTAL_TREE='65'],
  [TOTAL_TREE='75'],
  [TOTAL_TREE='85'],
  [TOTAL_TREE='95'] {
    polygon-opacity: 0.7;
  }

  [COVERTYPE = 'BAR'] {
    polygon-fill: @rock;
    polygon-opacity: 0.7;
    [zoom >= @texture-min-level] {
      polygon-pattern-file: url('img/forest-bump.png');
      polygon-pattern-opacity: 0.1;
    }
  }

  [COVERTYPE = 'MIX'],
  [COVERTYPE = 'HDW'],
  [COVERTYPE = 'CON'] {
    polygon-fill: @forest;
    [zoom >= @texture-min-level] {
      polygon-pattern-file: url('img/forest-bump.png');
      polygon-pattern-opacity: 0.2;
    }
  }

  [COVERTYPE = 'HEB'],
  [COVERTYPE = 'SHB'] {
    polygon-fill: @shrub;
    [zoom >= @texture-min-level] {
      polygon-pattern-file: url('img/forest-bump.png');
      polygon-pattern-opacity: 0.1;
    }
  }

  [COVERTYPE = 'WAT'] {
    polygon-opacity: 0;
    polygon-fill: blue;
  }

  [COVERTYPE = 'AGR'] {
    polygon-fill: @meadow;
    polygon-opacity: 0.5;
  }

  [COVERTYPE = 'URB'] {
    polygon-fill: @urban-fill;
    polygon-opacity: 0.7;
  }

}
