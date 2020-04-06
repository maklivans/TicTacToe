public ArrayList <MSButton> unClickedButtons() {
	ArrayList <MSButton> unClickedButtons = new ArrayList <MSButton> ();

	for (int i=0; i<buttons.length; i++) {
		for (int j=0; j<buttons[i].length; j++) {
			if (!(p1Clicked.contains(buttons[i][j])||compClicked.contains(buttons[i][j]))) {
				unClickedButtons.add(buttons[i][j]);
			}
		}
	}
	return unClickedButtons;
}