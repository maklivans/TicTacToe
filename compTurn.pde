public void compTurn() {

	//if ()
	//this function needs to call a square's mousePressed function
	int x = (int)(Math.random()*unClickedButtons().size());
	
	if (unClickedButtons().size()>0)
		unClickedButtons().get(x).mousePressed();


}