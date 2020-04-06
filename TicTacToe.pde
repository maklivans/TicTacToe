import de.bezier.guido.*;
private MSButton[][] buttons; //the 3x3 grid
private ArrayList <MSButton> p1Clicked; //the squares player has clicked
private ArrayList <MSButton> compClicked; //the squares computer has clicked
boolean isLost = false;
boolean p1Turn = true;
int tSize = 80;


void setup() {
	size(300,300);
	textAlign(CENTER,CENTER);
	textSize(tSize);

	Interactive.make(this);
	buttons = new MSButton[3][3];

	for (int i=0; i<3; i++) {
		for (int j=0; j<3; j++) {
			buttons[i][j] = new MSButton(i,j);
		}
	}

	p1Clicked = new ArrayList <MSButton> ();
	compClicked = new ArrayList <MSButton> ();


}

public void draw() {
	background(0);
	
}

// public void game() {
// 	if (p1Turn) {

// 	}
// }