keyboard:

//Teclas
key_d = GetRawKeyState(68)
key_a = GetRawKeyState(65)
key_shift = GetRawKeyState(16)
key_f = GetRawKeyPressed(70)
key_space = GetRawKeyPressed(32)
key_e = GetRawKeyPressed(69)
key_g =  GetRawKeyPressed(71)

//Posiçao Do Character/Ataques
SetSpritePosition(1, samuraiX, samuraiY)
SetSpritePosition(2, samuraiX, samuraiY)
SetSpritePosition(3, samuraiX, samuraiY)
SetSpritePosition(4, samuraiX, samuraiY)
SetSpritePosition(5, samuraiX, samuraiY)
setSpritePosition(6, samuraiX, samuraiY)
SetSpritePosition(7, slashX, slashY)
setSpritePosition(10, samuraiX, samuraiY)

	
	//Tecla D	
	if(key_d and key_a=0 and getSpritePlaying(6)=0 and getSpritePlaying(10)=0) //Se a Tecla D é pressionada
				samuraiRight=1
				samuraiLeft=0
				
				//Runnning
				if(key_shift) //Se a Tecla Shift é pressionada
					if(walkToRun=0) //Animaçao de Idle para Run
						if(runToIdle=0)
							runToIdle=1 //Muda a variavel para que depois que o boneco pare a animaçao de Run to Idle rode
						endif
						SetSpriteFlip(3, 0, 0)
						SetSpriteVisible(3, 1)
						SetSpriteVisible(1, 0)
						SetSpriteVisible(2, 0)
						SetSpriteVisible(4, 0)
						setSpriteVisible(5, 0)
						if(getSpritePlaying(3)=0)
							PlaySprite(3, 10, 1, 1, 4)
						endif
						samuraiX=samuraiX+walkToRunSpeed
					endif
					if(GetSpriteCurrentFrame(3)=4)
						StopSprite(3)
						walkToRun=1
					endif	
					if(GetSpritePlaying(3)=0) //Se Nao estiver rodando a animaçao de Idle To Run
						if(runToIdle=0)
							runToIdle=1
						endif
						setSpriteFlip(4, 0, 0)
						setSpriteVisible(4, 1)	
						SetSpriteVisible(1, 0)
						SetSpriteVisible(2, 0)
						SetSpriteVisible(3, 0)
						setSpriteVisible(5, 0)
						if(GetSpritePlaying(4)=0)
							PlaySprite(4, 8, 1, 1, 10) //Roda a animaçao de Running se nao estiver rodando
						endif
						samuraiX=samuraiX+runSpeed
					endif
					
				//Walking		
				else			
					setSpriteFlip(2, 0, 0)
					SetSpriteVisible(2, 1)
					SetSpriteVisible(1, 0)
					setSpritevisible(3, 0)
					setSpriteVisible(4, 0)
					setSpriteVisible(5, 0)
					samuraiX=samuraiX+walkSpeed
					if(GetSpritePlaying(2)=0)
						PlaySprite(2, 10, 1, 1, 8) //Roda a animaçao de Walking se nao estiver rodando
					endif
				endif
	endif
				
	//TECLA A 
	if(key_a and key_d=0 and getSpritePlaying(6)=0 and getSpritePlaying(10)=0) //Se a Tecla A  é pressionada
				samuraiRight=0
				samuraiLeft=1
				
				//Runnning
				if(key_shift) //Se a Tecla Shift é pressionada
					if(walkToRun=0) //Animaçao de Idle para Run
						if(runToIdle=0)
							runToIdle=1 //Muda a variavel para que depois que o boneco pare a animaçao de Run to Idle rode
						endif
						SetSpriteFlip(3, 180, 0)
						SetSpriteVisible(3, 1)
						SetSpriteVisible(1, 0)
						SetSpriteVisible(2, 0)
						SetSpriteVisible(4, 0)
						setSpriteVisible(5, 0)
						if(getSpritePlaying(3)=0)
							PlaySprite(3, 10, 1, 1, 4)
						endif
						samuraiX=samuraiX-walkToRunSpeed
					endif
					if(GetSpriteCurrentFrame(3)=4) //Se a animaçao Idle do run chegar ao fim eu paro ela
						StopSprite(3)
						walkToRun=1
					endif	
					if(GetSpritePlaying(3)=0) //Se Nao estiver rodando a animaçao de Idle To Run 
						if(runToIdle=0)
							runToIdle=1
						endif
						setSpriteFlip(4, 180, 0)
						setSpriteVisible(4, 1)	
						SetSpriteVisible(1, 0)
						SetSpriteVisible(2, 0)
						SetSpriteVisible(3, 0)
						setSpriteVisible(5, 0)
						samuraiX=samuraiX-runSpeed
						if(GetSpritePlaying(4)=0)
							PlaySprite(4, 8, 1, 1, 10) //Roda a animaçao de Running se nao estiver rodando
						endif
					endif
					
				//Walking			
				else	
					setSpriteFlip(2, 180, 0)
					SetSpriteVisible(2, 1)
					SetSpriteVisible(1, 0)
					setSpritevisible(3, 0)
					setSpriteVisible(4, 0)
					setSpriteVisible(5, 0)
					samuraiX=samuraiX-walkSpeed
					if(GetSpritePlaying(2)=0) //Roda a animaçao de Walking se nao estiver rodando
						PlaySprite(2, 10, 1, 1, 8)
					endif
				endif		
	endif
	
	//ATTACK_1 - F
	if(key_f and GetSpritePlaying(6)=0 and getSpritePlaying(7)=0) //Se a Tecla F é pressionada
		setSpriteVisible(6, 1)
		SetSpriteVisible(1, 0)
		setSpritevisible(2, 0)
		setSpriteVisible(3, 0)
        setSpriteVisible(4, 0)
		setSpriteVisible(5, 0)
		setSpriteVisible(7, 0)
		if(samuraiRight=1) //Vira o Sprite pro lado certo
			SetSpriteFlip(6, 0, 0)
		else
			 SetSpriteFlip(6, 180, 0)
		endif
			PlaySprite(6, 10, 1, 1, 7)
			timer=20
	endif
	if(GetSpriteCurrentFrame(6)=7) //Se a animação chegar no final
		StopSprite(6)
		setSpriteVisible(6, 0)
    endif
    
	if(GetSpritePlaying(6))
	    if(samuraiRight=1) //Vira o Sprite pro lado certo
			SetSpriteFlip(6, 0, 0)
		else
			SetSpriteFlip(6, 180, 0)
		endif
		if(key_shift) //Se usar o ataque apertando Shift
			runToIdle=1
			if(samuraiRight=1 and timer > 2)
				samuraiX = samuraiX+12
			timer = timer-2
			elseif(samuraiRight=0 and timer > 2)
				samuraiX = samuraiX-12
				timer = timer-2
			endif
		
			if(samuraiRight=1 and timer < 2)
				samuraiX = samuraiX+8
				timer = timer-3
			elseif(samuraiRight=0 and timer < 2)
				samuraiX = samuraiX-8
				timer = timer-3
			endif	
		endif
		if(key_a) //Se usar o ataque apenas andando
			if(samuraiRight=1 and timer > 2)
				samuraiX = samuraiX+5
			timer = timer-2
			elseif(samuraiRight=0 and timer > 2)
				samuraiX = samuraiX-5
				timer = timer-2
			endif
		
			if(samuraiRight=1 and timer < 2)
				samuraiX = samuraiX+5
				timer = timer-3
			elseif(samuraiRight=0 and timer < 2)
				samuraiX = samuraiX-5
				timer = timer-3
			endif	
		elseif(key_d) //Se usar o ataque apenas andando
			if(samuraiRight=1 and timer > 2)
				samuraiX = samuraiX+5
			timer = timer-2
			elseif(samuraiRight=0 and timer > 2)
				samuraiX = samuraiX-5
				timer = timer-2
			endif
		
			if(samuraiRight=1 and timer < 2)
				samuraiX = samuraiX+5
				timer = timer-3
			elseif(samuraiRight=0 and timer < 2)
				samuraiX = samuraiX-5
				timer = timer-3
			endif	
		endif				
	endif
	
	//Animaçao Slash
	if(getSpritePlaying(6) and GetSpriteCurrentFrame(6)=1)
		if(samuraiRight)
			SetSpriteFlip(7, 0, 0)
			slashX=samuraiX+25
		else
			SetSpriteFlip(7, 180, 0)
			slashX=samuraiX-100
		endif
		SetSpritePosition(7, slashX, slashY)		
		SetSpriteVisible(7, 1)
		PlaySprite(7, 10, 1, 1, 5)
	elseIf(getSpriteCurrentFrame(7)=5)
		StopSprite(7)
		SetSpriteVisible(7, 0)		
	endif
	
	//Se o boneco parar de correr --> Animaçao Run to Idle
	if(runToIdle=1 and key_a=0 and key_d=0 and GetSpritePlaying(6)=0 and getSpritePlaying(7)=0 or runToIdle=1 and key_shift=0 and GetSpritePlaying(6)=0 and getSpritePlaying(7)=0) //Começa a animaçao de Run to Idle
		if(samuraiRight=1)
			SetSpriteFlip(5, 0, 0)
		else
			SetSpriteFlip(5, 180, 0)
		endif
		setSpriteVisible(5, 1)
		setSpriteVisible(6, 0)
		SetSpriteVisible(1, 0)
		SetSpriteVisible(2, 0)
		SetSpriteVisible(3, 0)
		setSpriteVisible(4, 0)
		if(getSpritePlaying(5)=0)		
			PlaySprite(5, 7, 1, 1, 5)
			timer = 5
		endif
		
		//Movimenta o Samurai
	    if(samuraiRight=1 and timer > 2)
			samuraiX = samuraiX+3
			timer = timer-2
		elseif(samuraiRight=0 and timer > 2)
			samuraiX = samuraiX-3
			timer = timer-2
		endif
		
		if(samuraiRight=1 and timer < 2)
			samuraiX = samuraiX+2
			timer = timer-3
		elseif(samuraiRight=0 and timer < 2)
			samuraiX = samuraiX-2
			timer = timer-3
		endif
	endif
	
	if(getSpritePlaying(5) and GetSpriteCurrentFrame(5)=5 and runToIdle=1 and getSpritePlaying(6)=0 and getSpritePlaying(7)=0) //Se a animaçao Chegar no fim eu paro ela
		if(samuraiRight=1)
			samuraiX=samuraiX+5
		else
			samuraiX=samuraiX+10
		endif
		SetSpriteVisible(5, 0)
		StopSprite(5)
		runToIdle=0	
	endif
	
	
	//PlaySong Animation
	
	//Muda para tocar ou nao a musica
	if(key_e and key_d=0 and key_a=0 and GetSpritePlaying(5)=0 and GetSpritePlaying(6)=0  and getSpritePlaying(7)=0)
		if(playSong)
			playSong=0
		else
			playSong=1
		endif	
	endif
	
	if(playSong and key_d=0 and key_a=0 and GetSpritePlaying(5)=0 and GetSpritePlaying(6)=0  and getSpritePlaying(7)=0)
		if(samuraiRight=1)
			SetSpriteFlip(10, 0, 0)
		else
			SetSpriteFlip(10, 180, 0)
		endif
		if(GetSpriteVisible(10)=0)
			setSpriteVisible(6, 0)
			setSpriteVisible(5, 0)
			SetSpriteVisible(1, 0)
			SetSpriteVisible(2, 0)
			SetSpriteVisible(3, 0)
			setSpriteVisible(4, 0)
			SetSpriteVisible(10, 1)
		endif
		if(getSpritePlaying(10)=0 and keep=0)	
				playSprite(10, 10, 1, 1, 22)
		endif	
	endif	
	if(GetSpriteCurrentFrame(10)=15) //Comeca a tocar a musica no frame certo
		PlayMusic(20, 1)
	endif		
	if(playSong and GetSpriteCurrentFrame(10)=22 or keep=1 and PlaySong) //Mantem a animaçao em Looping
		if(keep=0)
			keep = 1
		endif	
		if(GetSpritePlaying(10)=0 or GetSpriteCurrentFrame(10)=22)
			PlaySprite(10, 10, 1, 18, 22)
		endif		
	endif
			
	if(GetSpritePlaying(10) and playSong=0 and GetSpriteCurrentFrame(10)=>18 and GetSpriteCurrentFrame(10)<=22 or key_a and getSpritePlaying(10) and GetSpriteCurrentFrame(10)=>18 and GetSpriteCurrentFrame(10)<=22 or key_d and getSpritePlaying(10) and GetSpriteCurrentFrame(10)=>18 and GetSpriteCurrentFrame(10)<=22)
		Print('Ola')
		playSong=0
		keep=0
		if(GetSpriteCurrentFrame(10)=>18 and GetSpriteCurrentFrame(10)<=22)
			playSprite(10, 10, 1, 23, 31)
		endif	
	endif	
	if(getSpriteCurrentFrame(10)=31)
		StopSprite(10)
		SetSpriteVisible(10, 0)
		StopMusic()
	endif		
	
			
	//CASO NENHUMA TECLA ESTEJA SENDO PRESSIONADA---> Idle
	if(key_d=0 and key_a=0 and GetSpritePlaying(5)=0 and GetSpritePlaying(6)=0 and getSpritePlaying(7)=0 and getSpritePlaying(10)=0 and runToIdle=0)
			if(samuraiRight=1) //Vira os sprites pro lado certo
				 SetSpriteFlip(1, 0, 0)
			else
				 SetSpriteFlip(1, 180, 0)
			endif
			SetSpriteVisible(1, 1)
			SetSpriteVisible(2, 0)
			SetSpriteVisible(3, 0)
			setSpriteVisible(4, 0)
			if(GetSpritePlaying(1)=0)
				PlaySprite(1, 7, 1, 1, 11) //Deixa a animação inicialmente em idle
			endif			
			walkToRun=0
	endif		
Return
