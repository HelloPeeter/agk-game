interactions:
	
	for i=1 to enemyCount
		setSpritePosition(enemyIdle[i], enemyX[i], enemyY)
		setSpritePosition(enemyRunning[i], enemyX[i], enemyY)
		setSpritePosition(enemyAttack[i], enemyX[i], enemyY)
		if(getSpriteX(enemyIdle[i])>1699)
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
		endif	
		
		
		if(GetSpritePlaying(enemyAttack[i])=0 and samuraiLife>0)
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
		//Parar o Sprite de Ataque do Inimigo
		if(GetSpritePlaying(enemyAttack[i]) and GetSpriteCurrentFrame(enemyAttack[i])=5)
			StopSprite(enemyAttack[i])
			SetSpriteVisible(enemyAttack[i], 0)
			SetSpriteVisible(enemyRunning[i], 1)	
		endif
		
		//Se o Inimigo fazer o ataque --> tira 1 de vida do player
		if(GetSpritePlaying(enemyAttack[i]) and GetSpriteCurrentFrame(enemyAttack[i])=2 and samuraiLife>0 and getSpritePlaying(7)=0)
			samuraiLife=samuraiLife-1
		endif	
		
		//Se o player Atacar o Inimigo
		if(GetSpriteCollision(enemyRunning[i], 7) and getSpritePlaying(7) and GetSpriteCurrentFrame(7)<=2)
			SetSpriteVisible(enemyIdle[i], 0)
			SetSpriteVisible(enemyRunning[i], 0)
			setSpriteVisible(enemyAttack[i], 0)
			enemyX[i]=1700
			SetSpritePosition(enemyIdle[i], enemyX[i], enemyY)
			SetSpritePosition(enemyRunning[i], enemyX[i], enemyY)
			SetSpritePosition(enemyAttack[i], enemyX[i], enemyY)
			stopSprite(enemyAttack[i])
			stopSprite(enemyRunning[i])
			stopSprite(enemyIdle[i])
			score=score+1
			SetTextString(indexText[0], 'Score: ' + str(score))
			killsPerRound=killsPerRound+1
		endif	
		
	next i
	
	//Barras de Vida
	for i=0 to 5
		if(samuraiLife=i)
			setSpriteSize(bar[1], 30*i, 52)
		endif
	next i
							
return
