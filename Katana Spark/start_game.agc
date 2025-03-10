start_game:

//Iniciar Ronda

if(GetSpriteCollision(2, 126) and startRound=0)
	if(getSpritePlaying(startSprite[0])=0 and startRoundSpeech=0)
		startRoundSpeech = 1
		SetSpriteVisible(startSprite[0], 1)
		playSprite(startSprite[0], 10, 1, 1, 17)
	elseif(GetSpriteCurrentFrame(startSprite[0])=17 and startRoundSpeech=1)
		stopSprite(startSprite[0])
	endif	
	
	if(key_g and GetSpriteVisible(97)=1 and startRound=0)
		stopSprite(startSprite[0])
		SetSpriteVisible(startSprite[0], 0)	
		startRound=1
		//Cria os inimigos do lado direito e esquerdo
		for i=1 to enemyCount
			enemyIdle[i] = CloneSprite(200) //Carrega o sprite de Idle
			enemyRunning[i] = CloneSprite(201)
			enemyAttack[i] = CloneSprite(202)
			side = random(1, 2)
			if(side=1)
				enemyX[i]=random(1000, 1600)
				SetSpritePosition(enemyIdle[i], enemyX[i],enemyY)
				SetSpritePosition(enemyRunning[i], enemyX[i], enemyY)
				SetSpritePosition(enemyAttack[i],enemyX[i], enemyY)
			elseif(side=2)
				enemyX[i]=0-random(100, 500)
				SetSpritePosition(enemyIdle[i], enemyX[i],enemyY)
				SetSpritePosition(enemyRunning[i], enemyX[i], enemyY)
				SetSpritePosition(enemyAttack[i],enemyX[i], enemyY)
			endif		
		next i	
	endif
elseif(GetSpriteCollision(2, 126)=0)
	startRoundSpeech=0
	stopSprite(startSprite[0])
	SetSpriteVisible(startSprite[0], 0)	
endif

return
