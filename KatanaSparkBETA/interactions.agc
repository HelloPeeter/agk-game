interactions:
	
	for i=1 to enemyCount
		setSpritePosition(enemyIdle[i], enemyX[i], enemyY)
		setSpritePosition(enemyRunning[i], enemyX[i], enemyY)
		setSpritePosition(enemyAttack[i], enemyX[i], enemyY)
	next i
	for i=1 to enemyCount
		if(GetSpriteX(enemyIdle[i])>=0 and GetSpriteX(enemyIdle[i])<=960 and GetSpritePlaying(enemyAttack[i])=0 and samuraiLife>0)
			stopSprite(enemyIdle[i])
			setSpriteVisible(enemyRunning[i], 1)
			SetSpriteVisible(enemyAttack[i], 0)
			SetSpriteVisible(enemyIdle[i], 0)
			if(getSpritePlaying(enemyRunning[i])=0)
				playSprite(enemyRunning[i], 8, 1, 1, 8)
			endif
			if(getSpriteX(enemyRunning[i])<getSpriteX(1) and GetSpritePlaying(enemyAttack[i])=0)
				SetSpriteFlip(enemyRunning[i], 0, 0)
				enemyX[i]=enemyX[i]+enemyRunSpeed
				enemyRight=1
				enemyLeft=0
			elseif(getSpriteX(enemyRunning[i])>getSpriteX(1) and GetSpritePlaying(enemyAttack[i])=0)
				setSpriteFlip(enemyRunning[i], 180, 0)
				enemyX[i]=enemyX[i]-enemyRunSpeed
				enemyRight=0
				enemyLeft=1
			endif
					
		endif	
		//Se o inimigo chegar perto do Player
		if(GetSpriteCollision(enemyRunning[i], 1) or GetSpriteCollision(enemyRunning[i], 2) or GetSpriteCollision(enemyRunning[i], 4) and samuraiLife>0)
			StopSprite(enemyRunning[i])
			SetSpriteVisible(enemyRunning[i], 0)
			SetSpriteVisible(enemyIdle[i], 0)
			SetSpriteVisible(enemyAttack[i], 1)	
			if(GetSpritePlaying(enemyAttack[i])=0)
				if(enemyRight)
					SetSpriteFlip(enemyAttack[i], 0, 0)
					
				else
					SetSpriteFlip(enemyAttack[i], 180, 0)
					enemyX[i]=enemyX[i]-70
				endif	
				playSprite(enemyAttack[i], 9, 1, 1, 5)
			endif
		endif
		//Para o Sprite de Ataque do Inimigo
		if(GetSpritePlaying(enemyAttack[i]) and GetSpriteCurrentFrame(enemyAttack[i])=5)
			StopSprite(enemyAttack[i])
			SetSpriteVisible(enemyAttack[i], 0)
			SetSpriteVisible(enemyRunning[i], 1)	
		endif
		
		//Se o Inimigo fazer o ataque --> tira 1 de vida do player
		if(GetSpritePlaying(enemyAttack[i]) and GetSpriteCurrentFrame(enemyAttack[i])=4 and samuraiLife>0 and getSpritePlaying(7)=0)
			samuraiLife=samuraiLife-1
		endif	
		
		//Se o player Atacar o Inimigo
		if(GetSpriteCollision(enemyRunning[i], 7) and getSpritePlaying(7))
			stopSprite(enemyAttack[i])
			enemyX[i]=1500
			for j=1 to enemyCount
				SetSpritePosition(enemyIdle[j], enemyX[i], enemyY)
			next j	
			SetSpriteVisible(enemyIdle[i], 0)
			SetSpriteVisible(enemyRunning[i], 0)
			setSpriteVisible(enemyAttack[i], 0)
			score=score+1
			killsPerRound=killsPerRound+1
		endif	
		
		//Se a vida do player chegar a 0 os Inimigos ficam em Idle
		if(samuraiLife=0)
			SetSpriteVisible(enemyAttack[i], 0)
			SetSpriteVisible(enemyRunning[i], 0)
			SetSpriteVisible(enemyIdle[i], 1)
			if(GetSpritePlaying(enemyIdle[i])=0)
				playSprite(enemyIdle[i], 5, 1, 1, 5)
			endif
		endif
	next i
	
	//Se o player matar todos os inimigos, a ronda acaba
	if(killsPerRound=enemyCount)
		startRound=0
		killsPerRound=0
		for i=1 to enemyCount
			deleteSprite(enemyIdle[i])
			deleteSprite(enemyAttack[i])
			deleteSprite(enemyRunning[i])
		next i
		enemyCount=0
	endif						
return
