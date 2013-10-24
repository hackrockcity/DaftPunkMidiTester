import themidibus.*;
import controlP5.*;


String midiOutputName = "IAC Bus 1";

MidiBus       myBus;
ControlP5 cp5;

void setup() {
  size(300,200);
  
  myBus = new MidiBus(this, -1, midiOutputName);
  cp5 = new ControlP5(this);
  
  int x = 0;
  int y = 0;
  cp5.addToggle("Bursts")
     .setPosition(x,y)
     .setSize(50,20)
     ;
  y+=40;

  cp5.addToggle("RGBRoutine")
     .setPosition(x,y)
     .setSize(50,20)
     ;
  y+=40;
     
  cp5.addToggle("ColorDrop")
     .setPosition(x,y)
     .setSize(50,20)
     ;
  y+=40; 
     
  cp5.addToggle("WarpSpeed")
     .setPosition(x,y)
     .setSize(50,20)
     ;
}


void draw() {
  background(0);
}

void Bursts(boolean theFlag) {
  if(theFlag==true) {
    myBus.sendNoteOn(9, 24, 1); // Send a Midi noteOn
  } else {
    myBus.sendNoteOff(9, 24, 1); // Send a Midi noteOn
  }
}

void RGBRoutine(boolean theFlag) {
  if(theFlag==true) {
    myBus.sendNoteOn(9, 25, 1); // Send a Midi noteOn
  } else {
    myBus.sendNoteOff(9, 25, 1); // Send a Midi noteOn
  }
}

void ColorDrop(boolean theFlag) {
  if(theFlag==true) {
    myBus.sendNoteOn(9, 26, 1); // Send a Midi noteOn
  } else {
    myBus.sendNoteOff(9, 26, 1); // Send a Midi noteOn
  }
}

void WarpSpeed(boolean theFlag) {
  if(theFlag==true) {
    myBus.sendNoteOn(9, 27, 1); // Send a Midi noteOn
  } else {
    myBus.sendNoteOff(9, 27, 1); // Send a Midi noteOn
  }
}
