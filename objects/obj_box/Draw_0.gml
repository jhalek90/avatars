//setup
i=0;
ii=0;
draw_set_color(color2);
draw_rectangle(x,y,x+(width*grid_size),y+(height*grid_size),0);
//draw grid
repeat(height)
	{
	i=0;
	repeat(width)
		{
		if ds_grid_get(the_grid,i,ii)
			{
			draw_set_color(color);
			draw_rectangle(x+(i*grid_size),y+(ii*grid_size),x+((i+1)*(grid_size)),y+((ii+1)*(grid_size)),0);
			}
		else
			{
			//draw_set_color(color2);
			}
		
		i+=1;
		}
	ii+=1;
	}