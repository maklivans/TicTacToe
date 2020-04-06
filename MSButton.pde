public class MSButton
{
    private int myRow, myCol;
    private float x,y, width, height;
    private boolean clicked;
    private String myLabel;
    
    public MSButton ( int row, int col )
    {
        width = 300/3-1;
        height = 300/3-1;
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
            // System.out.print("X: ");
            // for (int i=0; i<p1Clicked.size(); i++)
            //     System.out.print(p1Clicked.get(i)+", ");
            // System.out.println();
            p1Turn = false;
        }
        else {
            clicked = true;
            this.setLabel("O");
            compClicked.add(buttons[myRow][myCol]);
            // System.out.print("O: ");
            // for (int i=0; i<compClicked.size(); i++)
            //     System.out.print(compClicked.get(i)+", ");
            // System.out.println();
            p1Turn = true;
        }


    }


    public void draw () 
    {    
        fill(200);
        rect(x, y, width, height);
        fill(0);

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
    public String toString() {
        return ("["+(int)(x/100+0.5)+"]"+"["+(int)(y/100+0.5)+"]");
    }
}