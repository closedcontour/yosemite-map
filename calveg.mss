// TODO: scale bump map
// TODO: less dense bump map for shrub
// TODO: better mapping: http://www.fs.usda.gov/detail/r5/landmanagement/resourcemanagement/?cid=stelprdb5365219;

#calveg {
  polygon-fill: red;
  polygon-opacity: 0.5;

/*
1:  >60%
2:  40-60%
3:  25-40%
4:  10-25%
5:  2-10%
6:  0-2%
9:  Not Applicable


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
    [zoom >= 12] {
      polygon-pattern-file: url('img/forest-bump.png');
      polygon-pattern-opacity: 0.1;
    }
  }

  [COVERTYPE = 'MIX'],
  [COVERTYPE = 'HDW'],
  [COVERTYPE = 'CON'] {
    polygon-fill: @forest;
    [zoom >= 12] {
      polygon-pattern-file: url('img/forest-bump.png');
      polygon-pattern-opacity: 0.2;
    }
  }

  [COVERTYPE = 'HEB'],
  [COVERTYPE = 'SHB'] {
    polygon-fill: @shrub;
    [zoom >= 12] {
      polygon-pattern-file: url('img/forest-bump.png');
      polygon-pattern-opacity: 0.1;
    }
  }

  [COVERTYPE = 'WAT'] {
    polygon-opacity: 0;
    polygon-fill: blue;
  }

  /*[COVERTYPE = 'URB'],*/
  [COVERTYPE = 'AGR'] {
    polygon-fill: @meadow;
    polygon-opacity: 0.5;
  }


/*  polygon-fill: red;

  [PIFINAL < 910],
  [PIFINAL > 920][PIFINAL < 1000] {
  	polygon-opacity:0;
  }

  // Dome-y Rock
  [PIFINAL >= 961][PIFINAL <= 964] {
    polygon-opacity: 0.3;
    polygon-fill: @rock;
    polygon-pattern-file: url('img/forest-bump.png');
    polygon-pattern-opacity: 0.1;
  }

  // Shrub
  [PIFINAL >= 5000][PIFINAL < 7551] {
    polygon-fill: #82ac77;
    polygon-pattern-file: url('img/forest-bump.png');
    polygon-pattern-opacity: 0.1;
  }

  // Forest
  [PIFINAL = 910],
  [PIFINAL = 920],
  [PIFINAL >= 1000][PIFINAL < 5000] {
    polygon-fill: rgb(90, 165, 86);
    polygon-pattern-file: url('img/forest-bump.png');
    polygon-pattern-opacity: 0.2;
  }

  [PIFINAL >= 3070][PIFINAL <= 3076] {
    polygon-fill: lighten(rgb(90, 165, 86), 40%);

    // TODO: less dense bump
  }

  // Urban
  [PIFINAL = 990] {
    polygon-fill: #ccc;
    polygon-opacity: 0.7;
    line-width: 0.5;
    line-color: #aaa;
  }

  // Talus
  [PIFINAL = 100],
  [PIFINAL = 950],
  [PIFINAL = 700] {
    polygon-fill: @rock;
    polygon-opacity: 0.7;
    polygon-pattern-file: url('img/talus.png');
  }

  // Meadow
  [PIFINAL >= 7000][PIFINAL < 8000] {
    polygon-fill: #DCF5AE;
    polygon-opacity: 0.3;
    polygon-pattern-file: url('img/bg-noise.png');
  }

  [PIFINAL >= 8000][PIFINAL < 10000] {
    polygon-fill: #DCF5AE;
    polygon-opacity: 0.3;
    polygon-pattern-file: url('img/marsh.png');
  }

  // Scree
  [PIFINAL = 200] {
    polygon-opacity: 0.7;
    polygon-fill: @rock;
    polygon-pattern-file: url('img/scree.png');
  }

  [PIFINAL = 500] {
    polygon-fill: @rock;
    polygon-opacity: 0.7;
    polygon-pattern-file: url('img/forest-bump.png');
    polygon-pattern-opacity: 0.1;
  }*/
}
