void setup() {
  size(800, 800);  // Ukuran kanvas
  background(255); // Latar belakang putih
  noLoop(); // Agar gambar hanya digambar sekali
}

void draw() {
  // Menggambar gradasi latar belakang
  for (int i = 0; i < height; i++) {
    float inter = map(i, 0, height, 0, 1);
    color c = lerpColor(color(131, 58, 180), color(253, 29, 29), inter);
    stroke(c);
    line(0, i, width, i);
  }

  // Membuat latar belakang kotak dengan sudut melengkung
  fill(255, 255, 255, 0); // Warna transparan untuk fill
  stroke(255); // Warna putih untuk border
  strokeWeight(30);
  rect(100, 100, 600, 600, 150); // Posisi (100, 100), lebar 600, tinggi 600, sudut 150

  // Menggambar lingkaran besar di tengah (ikon kamera)
  fill(255); // Warna putih
  noStroke();
  ellipse(400, 400, 300, 300); // Posisi (400, 400), lebar 300, tinggi 300

  // Menggambar lingkaran kecil di dalam
  fill(255, 183, 77); // Warna oranye
  ellipse(400, 400, 200, 200); // Posisi (400, 400), lebar 200, tinggi 200
  
  // Menggambar lingkaran dalam yang lebih kecil
  fill(255); // Warna putih
  ellipse(400, 400, 150, 150); // Posisi (400, 400), lebar 150, tinggi 150
  
  // Menggambar lingkaran kecil di sudut kiri atas (lampu kamera)
  fill(255); // Warna putih
  ellipse(300, 300, 60, 60); // Posisi (300, 300), lebar 60, tinggi 60

  // Menggambar titik kecil di dalam lingkaran tengah (kamera)
  fill(255, 183, 77); // Warna oranye
  ellipse(400, 400, 100, 100); // Posisi (400, 400), lebar 100, tinggi 100
  
  // Menggambar titik kecil di dalam lingkaran
  fill(255); // Warna putih
  ellipse(400, 400, 50, 50); // Posisi (400, 400), lebar 50, tinggi 50

  // Menggambar persegi panjang melengkung di sudut kanan atas (flash kamera)
  fill(255); // Warna putih
  rect(500, 250, 50, 50, 10); // Posisi (500, 250), lebar 50, tinggi 50, sudut 10
}
