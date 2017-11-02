ArrayList<Object> list = new ArrayList<Object>();
Object gameObject = new Object();


int numObjects = 3;
int state = 0;
boolean runOnce = false;

void setup(){
  size(1000,400);
  background(0);  
}

void draw(){
  if(!runOnce){
   for(int i=0; i<numObjects; i++){
    gameObject.setX(i + 25);
    list.add(new Object()); 
  }
  runOnce = true;
 }
  
  
  /*
  for(Object o : list){
    o.run();
    o.display();
  }*/
  
  if(state == 0){
    
    fill(255,0,0);
    rect(width/3, height/2, 100, 100);
    fill(0,0,255);
    rect(width-width/3, height/2, 100, 100);
    fill(255);
    text("W", width/3+50, height/2+50);
    text("A", width-width/3+50, height/2+50);
    fill(255);
    if (keyPressed) {
    if (key == 'w' || key == 'W') {
    gameObject.ammoType = true;
    state = 1;
    }
    if (key == 'a' || key == 'A') {
      gameObject.ammoType = false;
      state = 1;
    }
    }
    
  }else if(state == 1){
    for(int i=0; i<list.size(); i++){
    Object o = list.get(i);
    o.run();
    if(gameObject.ammoType){fill(255,0, 0); o.display();}
     else if(!gameObject.ammoType){fill(0,0,255); o.display();}
     o.hitbox();
  }
  
  
  if (list.size() > numObjects + 5) {
    list.remove(0);
  }
  println(list.size());
  }
  println(gameObject.ammoType);
}