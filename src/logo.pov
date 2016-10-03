//Width=1920 Height=1080 Quality=11 Antialaias=On Antialias_Threshold=0.0

#include "colors.inc"
#include "golds.inc"
#include "metals.inc"
#include "textures"

#declare primary=Brushed_Aluminum;//pigment{Green};
#declare secondary=pigment { Gray50 };//pigment{Red};
background{White}
camera
{
	location<35,11,-60>
	look_at<35,11,0>
	right 16/9*x
	up y
}

light_source
{
	<15,17,-3>
	color rgb<1,1,1>
}

//plane behind camera
plane
{
	z,-70rgb<0,1,2>
	texture{pigment{checker Black, Gray25} scale 55}
	translate<frame_number*5,0,0>
	finish{ reflection 0.1 ambient 0.1 diffuse 0.9 }
}

#declare bar=box
{
	<0,0,0>
	<13,1,1>
}

#declare halfBar=box
{
	<0,0,0>
	<7,1,1>
}

#declare post=object
{
	bar
	rotate<0,0,90>
}

#declare halfPost=object
{
	halfBar
	rotate<0,0,90>
}

#declare largeBar=box
{
	<0,0,0>
	<29,1,1>
}

#declare largePost=box
{
	<0,0,0>
	<17,1,1>
	rotate<0,0,90>
}
//s
#declare s=union
{
	object{bar}
	object{bar translate<0,6,0>}
	object{bar translate<0,12,0>}
	object{halfPost translate<13,0,0>}
	object{halfPost translate<1,6,0>}
}
#object{s texture{primary}}

//c
#declare c=union
{
	object{bar translate<29,0,0>}
	object{bar translate<29,12,0>}
	object{post translate<30,0,0>}
}
object{c texture{primary}}

//I
#declare I=union
{
	object{bar translate<43,0,0>}
	object{bar translate<43,12,0>}
	object{post translate<50,0,0>}
}
object{I texture{primary}}

//T
#declare T=union
{
	object{bar translate<57,12,0>}
	object{post translate<64,0,0>}
}
object{T texture{primary}}
#declare jackProfile=union
{
	box
	{
		<1,1,-1>
		<12,9,12>
	}
	box
	{
		<3,9,-1>
		<10,10,12>
	}
	box
	{
		<4,10,-1>
		<9,11,12>
	}
	box
	{
		<1,10.5,-1>
		<2.5,12,12>
	}
	box
	{
		<10.5,10.5,-1>
		<12,12,12>
	}
}
#declare socket=difference
{
	box
	{
		<0,0,0>
		<13,13,13>
		texture{primary}
	}
	object
	{
		jackProfile texture{secondary}
		finish{ambient 0.0 diffuse 0.6 reflection 0.1}
	}
}
object{socket translate<14,0,0>}

#declare wire=box
{
	<0,0,0>
	<0.5,14,0.5>
	texture{T_Gold_1E}
	rotate<70,0,0>
	translate<-0.25,0.5,0>
	finish{ambient 0.05 reflection 0.6 diffuse 0.3}
}
object{wire translate<17,0,0>}
object{wire translate<18,0,0>}
object{wire translate<19,0,0>}
object{wire translate<20,0,0>}
object{wire translate<21,0,0>}
object{wire translate<22,0,0>}
object{wire translate<23,0,0>}
object{wire translate<24,0,0>}

#declare greenLight=sphere
{
	<0,0,0>
	0.75
	texture{pigment{Green}}
	finish{ambient 0.2 diffuse 0.7 reflection 0.2}
}
object{greenLight translate<15.75,11.25,0.75>}

#declare amberLight=sphere
{
	<0,0,0>
	0.75
	texture{pigment{Orange}}
	finish{ambient 0.2 diffuse 0.7 reflection 0.2}
}
object{amberLight translate<25.25,11.25,0.75>}
