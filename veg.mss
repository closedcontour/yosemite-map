// TODO: scale bump map
// TODO: less dense bump map for shrub

@rock: #EDE7DD;
@shrub: #82ac77;
@meadow: #DCF5AE;
@forest: rgb(90, 165, 86);

#veg {
  polygon-fill: red;

  [DENSITY=6] {
    polygon-opacity: 0.1;
  }

  [DENSITY=5] {
    polygon-opacity: 0.15;
  }

  [DENSITY=4] {
    polygon-opacity: 0.4;
  }

  [DENSITY=3] {
    polygon-opacity: 0.3;
  }

  [DENSITY=2] {
    polygon-opacity: 0.5;
  }

  [DENSITY=1] {
    polygon-opacity: 0.7;
  }

  [PIFINAL < 910],
  [PIFINAL > 920][PIFINAL < 1000] {
  	polygon-opacity:0;
  }

  // Dome-y Rock
  [PIFINAL >= 961][PIFINAL <= 964] {
    polygon-opacity: 0.3;
    /*polygon-fill: #C9D6D3;*/
    polygon-fill: @rock;
    polygon-pattern-file: url('img/forest-bump.png');
    polygon-pattern-opacity: 0.1;
  }

  // Shrub
  [PIFINAL >= 5000][PIFINAL < 7551] {
    polygon-fill: @shrub;
    polygon-pattern-file: url('img/forest-bump.png');
    polygon-pattern-opacity: 0.1;
  }

  // Forest
  [PIFINAL = 910],
  [PIFINAL = 920],
  [PIFINAL >= 1000][PIFINAL < 5000] {
    polygon-fill: @forest;
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
    polygon-fill: @meadow;
    polygon-opacity: 0.3;
    polygon-pattern-file: url('img/bg-noise.png');
  }

  [PIFINAL >= 8000][PIFINAL < 10000] {
    polygon-fill: @meadow;
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
  }
}
