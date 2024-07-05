PImage img;
PImage[] babi1 = new PImage[20];
PImage[] monyet = new PImage[12];
int babi1X = 950;
int monyetX = 400;
float babiScale1 = 0.5; // Scale variable for the first gif
float babiScale2 = 0.8; // Scale variable for the second gif
float speed1 = 9; // Speed variable for the first gif
float speed2 = 5; // Speed variable for the second gif
float frameCounter1 = 0; // Frame counter for the first gif
float frameCounter2 = 0; // Frame counter for the second gif

void setup() {
  size(1300, 800);
  smooth();
  img = loadImage("bg.jpg");
  for (int i = 0; i < 20; i++) {
    babi1[i] = loadImage("babi (" + (i + 1) + ").gif");
  }
  for (int i = 0; i < 12; i++) {
    monyet[i] = loadImage("monyet (" + (i + 1) + ").gif"); // Replace with actual filenames for the second gif
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Draw the first gif
  pushMatrix();
  scale(babiScale1);
  image(babi1[(int)frameCounter1 % 20], babi1X / babiScale1, 300 / babiScale1); // Use frameCounter1 for the first gif
  popMatrix();
  
  // Draw the second gif
  pushMatrix();
  scale(babiScale2);
  image(monyet[(int)frameCounter2 % 12], monyetX / babiScale2, 400 / babiScale2); // Use frameCounter2 for the second gif
  popMatrix();
  
  frameCounter1 += speed1; // Increment frameCounter1 by the speed1
  frameCounter2 += speed2; // Increment frameCounter2 by the speed2
}
