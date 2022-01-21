Quadrat[] a;
Screenpixel[][] b;
int zaehler= 0;


void setup() {


  a=new Quadrat[20];
  for (int i=0; i<20; i++) {
    a[i]=new Quadrat();
    a[i].x1=int(random(31, 540));
    a[i].x2=30;
    a[i].y1=9;
    a[i].y2=30;
    a[i].rfarbe=int(random(0, 254));
    a[i].gfarbe=int(random(0, 254));
    a[i].bfarbe=int(random(0, 254));
  }
  b=new Screenpixel[540][540];
    for(int i=0; i<b.length; i++)
    for(int j=0; j<b[i].length; j++)
    {
      b[i][j]=new Screenpixel();
      b[i][j].frei=true;

  }

  frameRate(100);
  size(600, 600);

 // a[1].tastenbewegung();
}
void draw()
{

  background(#FFFFFF);
  fill(0, 120, 4);
  rect(0, 0, 30, 600);
  fill(0, 255);
  rect(0, 570, 600, 600);
  fill(0, 255);
  rect(570, 0, 600, 600);
  for(int i=0; i<=zaehler; i++){
   a[i].zeichnequadrat();
  }
  
  

  // for (int j=0; j<zaehler; j++) {
   // Quadrat q = a[j];
    a[zaehler].zeichnequadrat();
    a[zaehler].fall();
    a[zaehler].tastenbewegung();
  }
