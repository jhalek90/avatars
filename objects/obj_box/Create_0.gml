
//Grid setup
width=8;
height=8;
grid_size=round(global.icon_size/width);
the_grid=ds_grid_create(width,height);

//place holders
i=0;
ii=0;
c=0;
color=choose(c_green,c_red,c_blue,c_orange,c_yellow);//square color

do
	{
	color2=c_black
	if choose(0,1)
		{
		color2=choose(c_white,c_aqua,c_lime,c_black,c_red,c_blue);
		}
	
	}until(color2 != color)

if choose(0,1){
	//create random Hmirrored image
	repeat(height){
		i=0;
		repeat(width/2){
			c=choose(0,1);
			ds_grid_set(the_grid,(width/2)+i,ii,c);
			ds_grid_set(the_grid,-1+(width/2)-i,ii,c);
			i+=1;
			}
		ii+=1;
		}
	}
else{
	//create random Vmirrored image
	repeat(height/2){
		i=0;
		repeat(width){
			c=choose(0,1);
			ds_grid_set(the_grid,i,(height/2)+ii,c);
			ds_grid_set(the_grid,i,-1+(height/2)-ii,c);
			i+=1;
			}
		ii+=1;
		}
	}