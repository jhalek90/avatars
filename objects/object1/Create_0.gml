

randomize();

global.icon_size=64
w=room_width/global.icon_size
h=room_height/global.icon_size

x=global.icon_size/2
y=global.icon_size/2

repeat(h-2)
	{
	repeat(w-2)
		{
		o1=instance_create_depth(x,y,0,obj_box)
		x+=global.icon_size*2
		}
	x=global.icon_size/2
	y+=global.icon_size*2
	}
	
//alarm[0]=30;