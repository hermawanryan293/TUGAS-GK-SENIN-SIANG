import java.util.Calendar;

void setup() {
  size(800, 800, P3D);
  smooth();
}

void draw() {
  background(255);
  lights();
  
  translate(width / 2, height / 2, 0);
  
  drawClockFace();
  drawClockHands();
}

void drawClockFace() {
  noStroke();
  fill(200);
  ellipse(0, 0, 400, 400);
  
  stroke(0);
  strokeWeight(2);
  for (int i = 0; i < 360; i += 30) {
    float x1 = cos(radians(i)) * 190;
    float y1 = sin(radians(i)) * 190;
    float x2 = cos(radians(i)) * 180;
    float y2 = sin(radians(i)) * 180;
    line(x1, y1, x2, y2);
  }
}

void drawClockHands() {
  Calendar now = Calendar.getInstance();
  int seconds = now.get(Calendar.SECOND);
  int minutes = now.get(Calendar.MINUTE);
  int hours = now.get(Calendar.HOUR);
  
  // Draw hour hand
  stroke(0);
  strokeWeight(8);
  pushMatrix();
  rotate(radians(map(hours % 12 + minutes / 60.0, 0, 12, 0, 360)));
  line(0, 0, 0, -80);
  popMatrix();
  
  // Draw minute hand
  strokeWeight(6);
  pushMatrix();
  rotate(radians(map(minutes + seconds / 60.0, 0, 60, 0, 360)));
  line(0, 0, 0, -120);
  popMatrix();
  
  // Draw second hand
  stroke(255, 0, 0);
  strokeWeight(4);
  pushMatrix();
  rotate(radians(map(seconds, 0, 60, 0, 360)));
  line(0, 0, 0, -150);
  popMatrix();
  
  // Draw the central point
  fill(0);
  noStroke();
  ellipse(0, 0, 10, 10);
}
