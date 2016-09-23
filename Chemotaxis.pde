//declare bacteria variables here
 Bacteria [] allie;   

 void setup()   
 {     
 	//initialize bacteria variables here 
 	background(0);
 	size(1000,1000);
 	allie = new Bacteria[20];
 	for (int i=0; i<allie.length; i++){
 		allie[i]=new Bacteria();
 	}
  }   

 void draw()   
 {    
 	//move and show the bacteria
 	 for (int i=0; i<allie.length; i++){
		allie[i].hide();
		allie[i].move();
 		allie[i].show();
 	}    
 }  

 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY;
 	color myColor;
 	color myDimColor, myBrightColor;
 	int myR, myG, myB;
 	boolean shapeToggle = true;
 	int dimCycle, dimCounter;
 	Bacteria () 
 	{
 		myX=(int)(Math.random()*1000);
 		myY=(int)(Math.random()*1000);
		myR = (int)(Math.random()*156)+50;
		myG = (int)(Math.random()*156)+50;
		myB = (int)(Math.random()*156)+50;
 		myDimColor=color(myR-50,myG-50,myB-50);
 		myBrightColor=color(myR+50,myG+50,myB+50);
 		myColor = myBrightColor;
 		dimCycle = (int)(Math.random()*20)+1;
 	}

 	void move()
 	{
 		myX=myX+(int)(Math.random()*11)-5;
 		myY=myY+(int)(Math.random()*11)-5;
		// do not allow bacteria to go beyond screen
		if (myX < 0) {
			myX = 0;
		}
		else if (myX > 1000) {
			myX = 1000;
		}
		if (myY < 0) {
			myY = 0;
		}
		else if (myY > 1000) {
			myY = 1000;
		}
 	}

 	void show()
 	{
		if (dimCounter%dimCycle == 0) {
			if (myColor == myBrightColor) {
				myColor = myDimColor;
			}
			else {
				myColor = myBrightColor;
			}
			dimCounter = 0;
		}
		dimCounter += 1;
		fill(myColor);
		ellipse(myX, myY, 50, 50);
	}

	void hide()
	{
		fill(0);
	 	ellipse(myX, myY, 51, 51);
	}
 }   


