int x = 30;
public void setup()
{
	size(600,600);
}
public void draw()
{
	background(0);
	sierpinski(10, 600, x);
}
public void mouseDragged() //optional
{
	if(x < 600)
	{
		x += 10;
	}
	else
	{
		x = 0;
	}
}
public void sierpinski(int x, int y, int len)
{
	if(len <= 20)
	{
		triangle(x, y, (2*x+len)/2, y - len, x + len, y);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2 , len/2);
	}
}
