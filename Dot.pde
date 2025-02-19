class Dot {
  float posx = int(random(0, width));
  float posy = int(random(0, height));
  int diam = 5;
  float speed = random(1, 2);
  PVector dir = new PVector(random(-10,10), random(-10,10));
  float tmp_changex = posx;
  float tmp_changey = posy;
  
  Dot() {
    ellipse(posx, posy, diam, diam);
  }
  
  void update() {
    fill(100);
    stroke(50);
    dir.normalize();
    dir.mult(speed);
    tmp_changex += dir.x;
    tmp_changey += dir.y;

    if (posx < 0) { posx = width; }
    if (posx > width) { posx = 0; }
    posx += dir.x;
    
    if (posy < 0) { posy = height; }
    if (posy > height) { posy = 0; }
    posy += dir.y;
    
    ellipse(posx, posy, diam, diam);
  }
}
