game_over:
	SetSpritePosition(8, samuraiX, samuraiY)
	for i=1 to 7
		SetSpriteVisible(i, 0)
	next i	
	SetSpriteVisible(8, 1)
	if(GetSpritePlaying(8)=0 and stopGame=1)
		stopGame=2
		PlaySprite(8, 10, 1, 1, 12)
	endif	
	if(GetSpriteCurrentFrame(8)=12)
		stopSprite(8)
	endif	
return
