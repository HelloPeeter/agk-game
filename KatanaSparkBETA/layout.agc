layout:


//Criando variaveis pra barra de vida
dim image[2] = [40, 41]
dim bar[2] = [40, 41]
	
//Carrega as Sprites do coraçao
LoadImage(image[0], 'gameLayout/health_bar_decoration.png')
LoadImage(image[1], 'gameLayout/health_bar.png')

//Bar_decoration Sprite
createSprite(bar[0], image[0])
SetSpritePosition(bar[0], 0, 0)
setSpriteScale(bar[0], 3,3)	

//Health_bar Sprite
createSprite(bar[1], image[1])
SetSpriteOffset(bar[1], 10, 17)
SetSpritePosition(bar[1], 42, 0)
setSpriteScale(bar[1], 3, 3)
//SetSpriteUV(bar[1], 0, 4/5, 0, 1)


return
