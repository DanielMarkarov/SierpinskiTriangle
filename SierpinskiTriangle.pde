public void setup(){
    size(500, 500);
  }
  public void draw(){
    sierpinski(010, 010, 300);
  }
  
  public void sierpinski(int x, int y, int len) {
    fill(252525);
    if(len <= 1)
    {
      triangle((float)x, (float)y, (float)x + (float)len,                       (float)y, (float)x + (float)len/2, (float)y +                    (float)len);
    }
    else
    {
      sierpinski(x, y, len/2);
      sierpinski(x+len/2, y, len/2);
      sierpinski(x+len/4, y+len/2, len/2);
    }
  }
