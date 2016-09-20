 //declare bacteria variables here
 Bacteria allie;   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400,400);
 	allie = new Bacteria[]    
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	 allie.move();
 	 alie,show();
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, colorBacteria;
 	Bacteria () 
 	void move()
 	{
 		int myX=myX+(int)(Math.random()*3)-1
 		int myY=myY+(int)(Math.random()*3)-1 

 	}

 	void show()
 	{

 	}


 }    