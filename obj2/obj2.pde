//Walker w1;
Walker [] w;
int total = 30;
void setup() {
  size(500, 500);
  background(0);
  //w1 = new Walker(color(255), 100, 100);

  w = new Walker[total];
  for (int i=0; i<w.length; i++) {
    w[i] = new Walker(color(random(255), random(255), random(255)), width/2, height/2, random(.2,10));
  }
}
void draw() {
  stroke(255);
  //w1.display();
  //w1.step();
  for (int i=0; i<w.length; i++) {
    w[i].display();
    w[i].step();
  }
}

class Walker {
  color c;
  float posx;
  float posy;
  float speed;
  int choice;

  Walker(color cW, float px, float py, float sw) {
    c = cW;
    posx = px;
    posy = py;
    speed = sw;
  }
  void display() {
    noStroke();
    fill(c);
    circle(posx, posy, 50);
  }
  void step() {
    choice = floor(random(4));
    if (choice == 0) {
      posx = posx +speed;
    } else if (choice == 1) {
      posx = posx - speed;
    } else if (choice == 2) {
      posy = posy + speed;
    } else {
      posy = posy-speed;
    }
  }
}
