void setup() {
  size(500, 500);
  background(255);
  drawBook();
  drawSinglePencil();
  drawHorizontalText();
}

void drawBook() {
  fill(200);
  stroke(0);
  strokeWeight(3);
  rect(150, 100, 200, 300);  // Buku dalam orientasi potret
}

void drawSinglePencil() {
  drawPencil(300, 200);  // Menggambar pensil ketiga
}

void drawPencil(float x, float y) {
  fill(255, 300, 0);  // Warna kuning untuk badan pensil
  stroke(0);
  strokeWeight(2);
  rect(x, y, 10, 70);  // Badan pensil

  fill(255);  // Warna putih untuk penghapus
  rect(x, y - 10, 10, 10);  // Penghapus

  fill(73);  // Warna abu-abu untuk ujung pensil
  triangle(x, y + 70, x + 10, y + 70, x + 5, y + 90);  // Ujung pensil
}

void drawHorizontalText() {
  fill(0);
  textSize(15);
  textAlign(CENTER, CENTER);
  text("grafika komputer", 250, 150);  // Teks "BUKU" di atas buku secara horizontal
}
