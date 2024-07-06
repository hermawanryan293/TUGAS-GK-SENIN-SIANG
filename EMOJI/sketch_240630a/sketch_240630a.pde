/**
 * Arctangent. 
 * 
 * Move the mouse to change the direction of the eyes. 
 * The atan2() function computes the angle from each eye 
 * to the cursor. 
 */
float eyeSize = 40; // Ukuran bola mata
float eyeX1, eyeY1, eyeX2, eyeY2; // Variabel untuk posisi bola mata

void setup() {
  size(200, 200);
  smooth();
  eyeX1 = width/2 - 30; // Inisialisasi posisi bola mata kiri
  eyeY1 = height/2 - 20;
  eyeX2 = width/2 + 30; // Inisialisasi posisi bola mata kanan
  eyeY2 = height/2 - 20;
}

void draw() {
  // Background
  background(255);
  
  // Wajah
  fill(255, 204, 0); // Warna kuning
  ellipse(width/2, height/2, 150, 150); // Lingkaran
  
  // Mata kiri
  fill(255); // Warna putih
  ellipse(eyeX1, eyeY1, eyeSize, eyeSize); // Bola mata kiri
  
  fill(0); // Warna hitam
  float eye1Angle = atan2(mouseY - eyeY1, mouseX - eyeX1); // Menghitung sudut mata kiri
  float eye1X = eyeX1 + cos(eye1Angle) * (eyeSize/4); // Menghitung posisi x pupil mata kiri
  float eye1Y = eyeY1 + sin(eye1Angle) * (eyeSize/4); // Menghitung posisi y pupil mata kiri
  ellipse(eye1X, eye1Y, eyeSize/2, eyeSize/2); // Pupil mata kiri
  
  // Mata kanan
  fill(255); // Warna putih
  ellipse(eyeX2, eyeY2, eyeSize, eyeSize); // Bola mata kanan
  
  fill(0); // Warna hitam
  float eye2Angle = atan2(mouseY - eyeY2, mouseX - eyeX2); // Menghitung sudut mata kanan
  float eye2X = eyeX2 + cos(eye2Angle) * (eyeSize/4); // Menghitung posisi x pupil mata kanan
  float eye2Y = eyeY2 + sin(eye2Angle) * (eyeSize/4); // Menghitung posisi y pupil mata kanan
  ellipse(eye2X, eye2Y, eyeSize/2, eyeSize/2); // Pupil mata kanan
  
  // Mulut
  fill(255); // Warna putih
  arc(width/2, height/2 + 30, 80, 50, 0, PI); // Mulut
}
