String[] colorNameList = new String[]{"Sky", "Rose", "White", "Platinum"};
int currentImageIndex = -1;
PImage image;

void setup() {
  size(800, 800);
  changeImage();
  noStroke();
}

void draw() {
  int pixelIndex = ((mouseY * image.width) + mouseX) % (image.height * image.width);
  color pixelColor = image.pixels[pixelIndex];
  fill(pixelColor);
  rect(0, 0, width, height);
  image(image, 0, 0);
}

void mouseClicked(){
  changeImage();
}

void changeImage(){
  currentImageIndex = (currentImageIndex + 1) % colorNameList.length;
  image = loadImage("images/female/" + colorNameList[currentImageIndex] + ".png");
  image.loadPixels();
}