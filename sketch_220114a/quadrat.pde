class Quadrat
{
  int x1;
  int x2;
  int y1;
  int y2;
  int xw=30;
  int yw=30;
  int rfarbe;
  int gfarbe;
  int bfarbe;

  boolean inc = false;

  // int x;

  // public Quadrat(int x) {
  //   this.x = x;
  // }


  void zeichnequadrat()
  {
    noStroke();
    fill(rfarbe, gfarbe, bfarbe);
    //fall();
    rect(x1, y1, x2, y2);
  }

  void fall() {
    //noStroke();
    if (y1<540 & x1>30 & x1<540) {
      y1+=1;
    } else {

      if (inc == false) {
        zaehler++;
        inc = true;
      }
    }
  }

  void tastenbewegung()
  {
    if (keyPressed) ;
    {
      switch(keyCode)
      {
      case LEFT:
        x1--;
        break;
      case RIGHT:
        x1++;
        break;
      }
    }
  }
}
