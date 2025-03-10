set_scene_1:

if(setBackground_1=1)
		for i=97 to 111
			SetSpriteVisible(i, 1)
		next i
		
		SetSpriteVisible(120, 1)
		SetSpriteVisible(121, 1)
		SetSpriteVisible(122, 1)
		//SetSpriteVisible(123, 1)
		SetSpriteVisible(124, 1)
		SetSpriteVisible(125, 1)
		SetSpriteVisible(126, 1)
		setSpriteVisible(menuSprite, 0)
endif
if(setBackground_1=1)
		for i=0 to 1
			SetSpriteVisible(bar[i], 1)
		next i
endif


if(setBackground_1= 0)
	for i=97 to 111
			SetSpriteVisible(i, 0)
		next i
	
	SetSpriteVisible(120, 0)
	SetSpriteVisible(121, 0)
	SetSpriteVisible(122, 0)
	//SetSpriteVisible(123, 0)
	SetSpriteVisible(124, 0)
	SetSpriteVisible(125, 0)
	SetSpriteVisible(126, 0)
	setSpriteVisible(menuSprite, 1)
	for i = 1 to 8
		SetSpriteVisible(i, 0)
	next i	
endif
if(setBackground_1=0)
		for i=0 to 1
			SetSpriteVisible(bar[i], 0)
		next i
endif
return
