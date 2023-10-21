class textbox
{ private:
    char *textfill;
    int x1,y1,len;
    int *bck;
  public:
  void make(int xc1,int yc1,int leng)
  { bck=new int[imagesize(xc1,yc1,xc1+(8*leng),yc1+15)];
    getimage(xc1,yc1,xc1+(8*leng),yc1+15,bck);
    x1=xc1; y1=yc1; len=leng;
    textfield(xc1,yc1,leng);
  }
  void text(char tex[])
  { setfillstyle(1,15);
    bar(x1+2,y1+2,x1+textwidth(tex),y1+13);
    settextstyle(2,HORIZ_DIR,4);
    setcolor(0);
    outtextxy(x1+2,y1+2,tex);
    textfill=strcpy(textfill,tex);
  }
  char *qtext()
  { return(textfill);}
  void clear()
  { putimage(x1,y1,bck,COPY_PUT); }
};


void main()
{

int gdriver=DETECT,gmode;


initgraph(&gdriver,&gmode,"c:\\tc\\bgi");


textbox t;
t.make(10,10,20);
t.text("Hello"); 
t.clear();
}