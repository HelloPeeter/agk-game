set_scene_1:

if(setBackground_1=1 and GetSpriteVisible(97)=0)
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

endif
if(setBackground_1= 0 and GetSpriteVisible(97)=1)
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
endif
return
