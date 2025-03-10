start_game:

//Iniciar Ronda

	if(key_g and GetSpriteVisible(97)=1 and startRound=0)
		startRound=1
		enemyR= Random(1, 5)
		enemyL= Random(1, 5)
		for i=1 to enemyR+enemyL
			enemyIdle[i] = CloneSprite(200) //Carrega o sprite de Idle
			enemyRunning[i] = CloneSprite(201)
			enemyAttack[i] = CloneSprite(202)
			enemyCount=enemyCount+1
		next i	
		for i=1 to enemyR
			enemyX[i]=random(700, 960)
			SetSpritePosition(enemyIdle[i], enemyX[i],enemyY)
			SetSpritePosition(enemyRunning[i], enemyX[i], enemyY)
			SetSpritePosition(enemyAttack[i],enemyX[i], enemyY)
		next i
		for i=enemyR to enemyCount
			enemyX[i]=random(0, 250)
			SetSpritePosition(enemyIdle[i], enemyX[i],enemyY)
			SetSpritePosition(enemyRunning[i], enemyX[i], enemyY)
			SetSpritePosition(enemyAttack[i],enemyX[i], enemyY)
		next i	
	endif	


return
