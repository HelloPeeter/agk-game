loader_background:
//--Carregando BackGround e Floor--//

	//--BackGround-Layer Id 97 to 99--//
	CreateSprite(97, LoadImage('background/background_layer_1.png')) //Carrega Layer 3
	CreateSprite(98, LoadImage('background/background_layer_2.png')) //Carrega Layer 2
	CreateSprite(99, LoadImage('background/background_layer_3.png')) //Carrega Layer 1


	//--Setando tamanho dos sprites de Background--//
	// Resolução original: 320x180
	SetSpriteSize(97, 960, 540) //Seta o Layer 1 para resolução 960x540
	SetSpriteSize(98, 960, 540) //Seta o Layer 2 para resolução 960x540
	SetSpriteSize(99, 960, 540) //Seta o Layer 3 para resolução 960x540

	//--Floor Id 100 to 102--//

	global floor1_img = 100
	global floor2_img = 101
	global floor3_img = 102

	//Carrega a imagem dos chãos de 48x24
	LoadImage(floor1_img, 'chao_1.png') 
	LoadImage(floor2_img, 'chao_2.png')
	LoadImage(floor3_img, 'chao_3.png')

	//Cria os Sprites do chão
	createSprite(100, floor1_img)
	createSprite(101, floor1_img)
	createSprite(102, floor3_img)
	createSprite(103, floor2_img)
	createSprite(104, floor2_img)
	createSprite(105, floor3_img)
	createSprite(106, floor3_img)
	createSprite(107, floor2_img)
	createSprite(108, floor3_img)
	createSprite(109, floor1_img)
	createSprite(110, floor1_img)
	createSprite(111, floor1_img)
	
	//Cria o chao Imaginario
	createSprite(112, 0)
	SetSpriteSize(112, 960, 50)
	setSpritePosition(112, 0, 488)
	SetSpriteVisible(112, 0)
	


	//Seta a escala dos Sprite para 96x48(Dobro)
	SetSpriteSize(100, 96, 48)
	for i=101 to 111 
		SetSpriteScale(i, 2, 2)
	next i
	
	//Seta a posição dos Sprites 
	SetSpritePosition(100, 0, 492) 
	SetSpritePosition(101, 96, 492) 
	SetSpritePosition(102, 192, 492) 
	SetSpritePosition(103, 278-(16), 492) 
	SetSpritePosition(104, 354-(16), 492)
	SetSpriteDepth(104, 1)
	SetSpritePosition(105, 450-(64), 492)
	setSpriteDepth(105, 2)
	SetSpritePosition(106, 546-(64), 492)
	SetSpritePosition(107, 642-(64), 492)
	SetSpriteDepth(107, 1)
	SetSpritePosition(108, 738-(88), 492)
	setSpriteDepth(108, 2)
	SetSpritePosition(109, 834-(88), 492)
	SetSpritePosition(110, 930-(88), 492)
	SetSpritePosition(111, 1026-(88), 492)
	 
	//--Details Background--// 
	 
	//Images Id 120 to 12~
	global lamp_img = 120
	global lamp_sprite = 120
	global lampcopy_img=121
	global lampcopy_sprite= 121

	global grass1_img = 122
	global grass1_sprite = 122

	global grass2_img = 123
	global grass2_sprite = 123

	global fence1_img = 124
	global fence1_sprite = 124
	global fence2_img = 125
	global fence2_sprite = 125
	
	global sign_img = 126
	global sign_sprite = 126
	
	global rock1_img = 127
	global rock1_sprite = 127
	
	global start_img = 128
	global start_sprite = 128
	 
	//Loading Images
	LoadImage(lamp_img,'lamp.png') //23x57
	loadImage(lampcopy_img, 'lamp.png') //23x57
	LoadImage(grass1_img, 'grass_2.png') //10x5
	LoadImage(fence1_img, 'fence_1.png') //73x19
	LoadImage(fence2_img, 'fence_2.png') //73x19
	LoadImage(sign_img, 'sign.png') //22x31

	//Create Sprites
	CreateSprite(lamp_sprite, lamp_img)
	createSprite(lampcopy_sprite, lampcopy_img)
	CreateSprite(grass1_sprite, grass1_img)
	CreateSprite(fence1_sprite, fence1_img)
	CreateSprite(fence2_sprite, fence2_img)
	CreateSprite(sign_sprite, sign_img)
	

	//Set Sprite Scales
	SetSpriteScale(lamp_sprite, 2, 2) //46x114
	SetSpriteScale(lampcopy_sprite, 2, 2) //46x114
	setSpriteScale(grass1_sprite, 2, 2) //20x10
	setSpriteScale(fence1_sprite, 2, 2) //146x38
	setSpriteScale(fence2_sprite, 2, 2) //146x38
	setSpriteScale(sign_sprite, 2, 2) //44x62

	//Cloned Sprites
	SetSpriteFlip(lampcopy_sprite, 180, 0 )

	//Set Positions
	SetSpritePosition(lamp_sprite, 550, 378)
	SetSpritePosition(lampcopy_sprite, 850, 378)

	SetSpritePosition(grass1_sprite, 310,482)
	SetSpriteDepth(grass1_sprite, 1)

	SetSpritePosition(fence1_sprite, 280, 454)
	SetSpritePosition(fence2_sprite, 700, 454)
	
	SetSpritePosition(sign_sprite, 440, 430)
Return

