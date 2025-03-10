game_over:

#include 'sounds.agc'

//Acaba o jogo se o Personagem morrer
//Se a vida do player chegar a 0 os Inimigos ficam em Idle
	for i=1 to enemyCount
		SetSpriteVisible(enemyAttack[i], 0)
		SetSpriteVisible(enemyRunning[i], 0)
		SetSpriteVisible(enemyIdle[i], 1)
		if(GetSpritePlaying(enemyIdle[i])=0)
			playSprite(enemyIdle[i], 5, 1, 1, 5)
		endif
	next i
	SetSpritePosition(8, samuraiX, samuraiY)
	for i=1 to 7
		SetSpriteVisible(i, 0)
	next i	
	SetSpriteVisible(8, 1)
	if(GetSpritePlaying(8)=0 and stopGame=1)
		stopGame=2
		PlaySprite(8, 10, 1, 1, 12)
		playSound(dieEffect, vol)
	endif	
	if(GetSpriteCurrentFrame(8)=12)
		stopSprite(8)
	endif
	
	if(GetSpriteCurrentFrame(8)=12)
		for i=1 to 8
			setSpriteVisible(i, 0)
		next 	
		for i=1 to enemyCount
				deleteSprite(enemyIdle[i])
				deleteSprite(enemyAttack[i])
				deleteSprite(enemyRunning[i])
		next i
		timerEnd=1
	endif		
return
