PImage img;
PImage[] mobil = new PImage[48];
int mobilX = 900; // Start the car from the right
int mobilY = 400; // Set the Y position to align the car with the road
float mobilScale = 0.2; 
float speed = 0.3; // Speed variable as a float for controlling gif animation
float frameCounter = 0; // Frame counter to handle float speed

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("BG.jpg");
  for (int i = 0; i < 48; i++) {
    mobil[i] = loadImage("mobil (" + (i + 1) + ").gif");
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  pushMatrix();
  scale(mobilScale);
  image(mobil[(int)frameCounter % 48], mobilX / mobilScale, mobilY / mobilScale); // Use mobilY for vertical alignment
  popMatrix();
  
  frameCounter += speed; // Increment frameCounter by the speed
  
  mobilX = mobilX - 10; // Decrement mobilX to move from right to left
  if (mobilX < -200) { // Reset position when the car moves off the left side of the screen
    mobilX = width;
  }
}
