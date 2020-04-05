public class MSButton
{
    private int myRow, myCol;
    private float x,y, width, height;
    private boolean clicked;
    private String myLabel;
    
    public MSButton ( int row, int col )
    {
        width = 300/3;
        height = 300/3;
        myRow = row;
        myCol = col; 
        x = myCol*width;
        y = myRow*height;
        myLabel = "";
        clicked = false;
        Interactive.add( this ); // register it with the manager
    }



    // called by manager
    public void mousePressed () 
    {
        if (p1Turn) {
            clicked = true;
            this.setLabel("X");
            p1Clicked.add(buttons[myRow][myCol]);
            p1Turn = false;
        }
        else {
            clicked = true;
            this.setLabel("O");
            compClicked.add(buttons[myRow][myCol]);
            p1Turn = true;
        }


    }


    public void draw () 
    {    
        fill(200);
        rect(x, y, width, height);
        fill(0);
        // int textX = x+(width-textSize)/2;
        // int textY = y+(height-textSize)/2;
        text(myLabel, x+(width/2), y+height/2-10);
    }
    public void setLabel(String newLabel)
    {

        myLabel = newLabel;
    }
    public void setLabel(int newLabel)
    {
        myLabel = ""+ newLabel;
    }
}