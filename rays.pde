
int bg = 240;
Dot[] dot_arr;
int dot_amount = 35;
int threshold = 230;

void setup() {
  size(1500, 900);
  dot_arr = new Dot[0];
  for(int i=0; i<dot_amount; i++) {
      Dot tmp = new Dot();
      dot_arr = (Dot[])append(dot_arr, tmp);
  }
}

void draw() {
  background(bg);
  for(int i=0; i<dot_amount; i++) {
    for(int j=i+1; j<dot_amount; j++) {
      drawLines(dot_arr[i], dot_arr[j]);
    }
    dot_arr[i].update();
  }
}

void drawLines(Dot dota, Dot dotb) {
  if (abs(dota.posx - dotb.posx) < threshold && abs(dota.posy - dotb.posy) < threshold) {
    float linecolor = map(dist(dota.posx, dota.posy, dotb.posx, dotb.posy), 0, threshold, 0, bg-50);
    stroke(linecolor);
    //println(linecolor);
    line(dota.posx, dota.posy, dotb.posx, dotb.posy);
  }
  
}
