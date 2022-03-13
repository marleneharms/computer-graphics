// Reproduce the behaviour seen in the video using your knowledge regarding hierarchical transformations. Comply with the following requirements:

// create a claw with a main body and 3 fingers made up of 2 parts (base and tip)
// using the [R, F] keys rotate the whole figure
// using the [1,Q] rotate the base of the 1st finger, [2, W] for the second and [3, E] for the third one. Rotating any base MUST rotate the tip (as shown in the video)
// using the [A,Z] rotate the tip of the 1st finger, [S, X] for the second and [D, C] for the third one. 
// be sure that NO geometry is deformed as a result of your transformations

float clawRotation = 0,
      finger1Rotation = 0,
      finger1TipRotation = 0,
      finger2Rotation = 0,
      finger2TipRotation = 0,
      finger3Rotation = 0,
      finger3TipRotation = 0;
void setup() {
    size(800, 800, P3D); //tamaño
    surface.setResizable(true);  
    noFill(); //color de fondo
    stroke(255); //color de stroke
}

void draw() {
    background(0);
    handleInput();

    pushMatrix();
        //claw
        translate(width/2, height/2);
        rotateY(clawRotation);
        box(120, 150, 50);
        pushMatrix();
            //finger1
            pushMatrix();
              translate(-40, -105);
              rotateX(finger1Rotation);
              box(40, 70, 50);
              //fingerTip1
              pushMatrix();
                translate(0, -55);
                rotateX(finger1TipRotation);
                box(40, 40, 50);
              popMatrix();
            popMatrix();

            //finger2
            pushMatrix();
              translate(0, -105);
              rotateX(finger2Rotation);
              box(40, 70, 50);
              //fingerTip1
              pushMatrix();
                translate(0, -55);
                rotateX(finger2TipRotation);
                box(40, 40, 50);
              popMatrix();
            popMatrix();
            
            //finger3
            pushMatrix();
              translate(40, -105);
              rotateX(finger3Rotation);
              box(40, 70, 50);
              //fingerTip1
              pushMatrix();
                translate(0, -55);
                rotateX(finger3TipRotation);
                box(40, 40, 50);
              popMatrix();
            popMatrix();

        popMatrix();

    popMatrix();
    
}

void handleInput(){
    if(keyPressed && key == 'r'){
        clawRotation += 0.03f; 
    }else if(keyPressed && key == 'f'){
        clawRotation -= 0.03f; 
    }else if(keyPressed && key == '1'){
        finger1Rotation += 0.03f; 
    }else if(keyPressed && key == 'q'){
        finger1Rotation -= 0.03f; 
    }else if(keyPressed && key == 'a'){
        finger1TipRotation += 0.03f; 
    }else if(keyPressed && key == 'z'){
        finger1TipRotation -= 0.03f; 
    }else if(keyPressed && key == '2'){
        finger2Rotation += 0.03f; 
    }else if(keyPressed && key == 'w'){
        finger2Rotation -= 0.03f; 
    }else if(keyPressed && key == 's'){
        finger2TipRotation += 0.03f; 
    }else if(keyPressed && key == 'x'){
        finger2TipRotation -= 0.03f; 
    }else if(keyPressed && key == '3'){
        finger3Rotation += 0.03f; 
    }else if(keyPressed && key == 'e'){
        finger3Rotation -= 0.03f; 
    }else if(keyPressed && key == 'd'){
        finger3TipRotation += 0.03f; 
    }else if(keyPressed && key == 'c'){
        finger3TipRotation -= 0.03f; 
    }   
}
