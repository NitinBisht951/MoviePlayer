// This is the ultimate class of the program which
// encompasses the other two small activities Canvas and Player

class MoviePlayer {
  Canvas canvas;                      //the first open video activity
  Player player;                      // the video playing video

  String[] movienames;
  Movie[] movies = new Movie[NO_OF_VIDS];
  Movie tempMovie;

  MoviePlayer() {
    player = new Player();
    canvas = new Canvas();
    initActivity('c');
  }

  void start() {
    background(BACKGROUND_COLOR);
    if (canvas.isActive()) {
      canvas.show();
    } else if (player.isActive()) {
      player.begin();
    }
  }

  void initActivity(char choice) {
    if (choice == 'c') {
      canvas.enable();
      player.disable();
    } else if (choice =='p') {
      canvas.disable();
      player.enable();
    }
  }

  void mouseClicked() {
    if (canvas.isActive()) canvas.mouseClicked();
    else if (player.isActive()) player.mouseClicked();
  }

  void keyPressed() {
    if (canvas.isActive()) canvas.keyPressed();
    else if (player.isActive()) player.keyPressed();
  }

  void mouseMoved() {
    if (player.isActive()) player.mouseMoved();
    else if(canvas.isActive()) canvas.mouseMoved();
  }
}