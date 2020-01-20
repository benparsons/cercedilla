PImage mask, grass, sunflowers, darkclouds;

String yellow = "FFFFFF00";
String green = "FF00FF00";
String blue = "FF0000FF";
String grey = "FF7F7F7F";
String clouds = "FFFFFFFF";
String backblue = "FF7F7FFF";
String sky = "FF7FFFFF";

void setup() {
  size(500, 375);
  mask = loadImage("mask.png");
  grass = loadImage("grass.png");
  sunflowers = loadImage("sunflowers.png");
  darkclouds = loadImage("darkclouds.png");
  mask.filter(POSTERIZE, 3);
  loadPixels();
  for (int i = 0; i < mask.pixels.length; i++) {
    int pixel = mask.pixels[i];
    if (hex(pixel).equals(green)) {
      pixels[i] = grass.pixels[i];
    } else if (hex(pixel).equals(yellow)) {
      pixels[i] = sunflowers.pixels[i];
    }else if (hex(pixel).equals(grey)) {
      pixels[i] = darkclouds.pixels[i];
    }
    else {
      pixels[i] = pixel;
    }
  }
  updatePixels();
}
