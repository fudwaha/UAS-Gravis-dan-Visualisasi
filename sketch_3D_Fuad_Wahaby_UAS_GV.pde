import processing.core.*;

float angleX, angleY, angleZ; 
float rotationSpeed = 0.05;
float translateSpeed = 5;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(255);
  lights();
  translate(width/2, height/2, 0);
  translate(-30,10,0);
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
 
  // Membuat huruf "F"
  pushMatrix();
  fill(#8E1A1A);
  box(20, 107, 20); 
  translate(35, -42, 0);
  box(50, 20, 20);
  translate(0, 45, 0);
  box(50, 20, 20);
  popMatrix();
  
   // Membuat huruf "W"
  pushMatrix();
  fill(#8E1A1A);
  translate(90,0,0);
  rotate(PI/-13);
  box(19, 107, 20);
  popMatrix();
  
  pushMatrix();
  translate(118, 17, 0);
  rotate(PI/-3);
  box(70, 20, 18);
  popMatrix();
  
  pushMatrix();
  translate(146, 17, 0);
  rotate(PI/3);
  box(70, 20, 18);
  popMatrix();
  
  pushMatrix();
  translate(174,0,0);
  rotate(PI/13);
  box(19, 107, 20);
  popMatrix();

  // Menggerakkan huruf dengan input keyboard
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      angleX -= rotationSpeed;
    } else if (key == 's' || key == 'S') {
      angleX += rotationSpeed;
    } else if (key == 'a' || key == 'A') {
      angleY -= rotationSpeed;
    } else if (key == 'd' || key == 'D') {
      angleY += rotationSpeed;
    } else if (key == 'q' || key == 'Q') {
      angleZ -= rotationSpeed;
    } else if (key == 'e' || key == 'E') {
      angleZ += rotationSpeed;
    }
  }
}
