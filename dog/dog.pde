void setup() {
    size(800, 800, P3D); //tamaño
    surface.setResizable(true);  
    noFill(); //color de fondo
    stroke(255); //color de stroke
}

void draw() {
    stroke(250, 102, 70);
    fill(250, 102, 70);
    
    //cuerpecito
    translate(400, 350);
    box(100, 50, 50);

    //cuello
    translate(-60, -30);
    rotate(radians(-45));
    box(15, 30, 15);
    
    //cabecita
    translate(0, -25);
    sphere(30);

    //orejitas
    stroke(178, 57, 31);
    translate(15, 15);
    sphere(20);
    
    translate(-30, -30);
    sphere(20);
    
    //ojos
    stroke(0, 0, 0);
    translate(10, 10, 30);
    sphere(5);
    
    translate(-10, -10);
    sphere(5);
    
    //colita
    stroke(178, 57, 31);
    translate(95, 120);
    sphere(5);    
    
    //patitas
    rotate(radians(45));
    translate(-15, 70);
    box(20, 30, 0);
    
    translate(-25, 0);
    box(20, 30, 0);
    
    translate(-30, 0);
    box(20, 30, 0);
    
    translate(-25, 0);
    box(20, 30, 0);
    
}
