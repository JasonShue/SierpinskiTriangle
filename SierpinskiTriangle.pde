public void setup() {
  background(39, 255, 54);
  size (500, 500);
}

public void draw() {
 sierpinski(0, 500, 500);
 sierpinski(0, 250, 125);
 sierpinski(375, 250, 125);
}

public void sierpinski(int x, int y, int len)  {
  if (len < 10)
    triangle(x, y, x + len, y, x + len/2, y-len);
  else{
    fill(100, 71, 25);
    sierpinski(x, y, len/2);
    fill(183, 180, 175);
    sierpinski(x + len / 2, y, len/2);
    fill(0);
    sierpinski(x + len / 4, y - len / 2, len/2);
  }
}
