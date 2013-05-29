int clic = 0 ;
int[] touche = new int [10]; // touche du pavé
int[] code = new int [4]; // code secret
int[] codeTape = new int [4]; // code entré par utilsateur

void mousePressed() {
    //condition touche 1
  if ( mousePressed = true && mouseX > 25 && mouseX < 75 && mouseY > 125 && mouseY < 175 ){
     codeTape[clic]=touche[1];
     clic++;     
    }
    //condition touche 2
  if ( mousePressed = true && mouseX > 100 && mouseX < 150 && mouseY > 125 && mouseY < 175 ){
     codeTape[clic]=touche[2];
     clic++;     
    }
    //condition touche 3
  if ( mousePressed = true && mouseX > 175 && mouseX < 225 && mouseY > 125 && mouseY < 175 ){
     codeTape[clic]=touche[3];
     clic++;     
    }
    //condition touche 4
  if ( mousePressed = true && mouseX > 25 && mouseX < 75 && mouseY > 200 && mouseY < 250 ){
     codeTape[clic]=touche[4];
     clic++;     
    }
    //condition touche 5
  if ( mousePressed = true && mouseX > 100 && mouseX < 150 && mouseY > 200 && mouseY < 250 ){
     codeTape[clic]=touche[5];
     clic++;     
    }
    //condition touche 6
  if ( mousePressed = true && mouseX > 175 && mouseX < 225 && mouseY > 200 && mouseY < 250 ){
     codeTape[clic]=touche[6];
     clic++;     
    }
   //condition touche 7
  if ( mousePressed = true && mouseX > 25 && mouseX < 75 && mouseY > 275 && mouseY < 325 ){
     codeTape[clic]=touche[7];
     clic++;     
    }
    //condition touche 8
  if ( mousePressed = true && mouseX > 100 && mouseX < 150 && mouseY > 275 && mouseY < 325 ){
     codeTape[clic]=touche[8];
     clic++;     
    }
    //condition touche 9
  if ( mousePressed = true && mouseX > 175 && mouseX < 225 && mouseY > 275 && mouseY < 325 ){
     codeTape[clic]=touche[9];
     clic++;     
    }  
}

boolean verifierCode ( int[] entree,  int[] reference){
  boolean test = false;
  for ( int k=0; k<entree.length;k++){ 
     if ( entree[k] == reference[k] ){
     test =true;
    }  
   } 
  return test;
}

  

void setup() {
   size(250, 400);
   background(0,0,0); 
   for ( int k=0; k<4;k++){ // initialisation du clavier 
     codeTape[k] = 5;
   }  
   for ( int j=0; j<10;j++){ // initialisation du clavier 
     touche[j] = j;
   }  
   for ( int i=0; i<3;i++){ // initialisation du code
     code [i] = 2*i;
   }
}

  

void draw() {
    fill(0,255,0); //couleur ecran
    rect(25,25,200,75); //ecran
    fill(255,0,0); //couleur texte écran
    text( "valeur entrée " , 50 , 50); 
    text( codeTape[0] , 50 , 60); 
    fill(255,0,0);       //couleur touche valide
    rect(25,350,200,25);//touche valide
    fill(0,255,0); 
    text( "valider" , 100 , 360);
    for ( int j=0; j<3;j++){
      for ( int i=0; i<3;i++){
        fill(255,0,0);       //couleur touche
        rect((25+i*75),(75*j+125),50,50); //touche
        fill(0,255,0); //couleur nombre
        text( touche[1+3*j+i] ,  (45+i*75),(75*j+155) );//écran
      }
     }
}
