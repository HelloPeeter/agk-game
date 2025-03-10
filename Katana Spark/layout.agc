layout:

//Criando variaveis 

//Barra de vida
dim imageBar[2] = [40, 41]
dim bar[2] = [40, 41]

//Fonte
dim fontText[1] = [1]
dim indexText[2] = [50, 51]

//Bubble
dim bubbleImg[1] = [42]
dim bubbleSprite[1] = [42]

dim startImg[1] = [43]
dim startSprite[1] = [43]

//----Carregando Sprites/fonte-------

//--Fonte--
LoadFont(fontText[0], 'gameLayout/PixeloidSans_Bold.ttf')
CreateText(indexText[0], 'Score: ' + str(score))
SetTextSize(indexText[0], 30)
SetTextPosition(indexText[0], 5, 50)
setTextFont(indexText[0], fontText[0])

createText(indexText[1], 'F - Attack \nE - Play Song')
SetTextSize(indexText[1], 30)
SetTextPosition(indexText[1], 5, 80)
setTextFont(indexText[1], fontText[0])

//--Bubbles--
loadImage(bubbleImg[0], 'gameLayout/bubbles.png')
createSprite(bubbleImg[0], bubbleSprite[0])
SetSpriteAnimation(bubbleSprite[0], 16, 16, 9)
setSpriteScale(bubbleSprite[0], 2, 2)
SetSpriteVisible(bubbleSprite[0], 0)

loadImage(startImg[0],  'gameLayout/start_game_bubble.png')
createSprite(startImg[0], startSprite[0])
setSpriteAnimation(startSprite[0], 513, 207, 17)
setSpriteSize(startSprite[0], 100, 40)
setSpriteVisible(startSprite[0], 0)

//--Corazon--
//Carrega as Sprites do coraçao
LoadImage(imageBar[0], 'gameLayout/health_bar_decoration.png')
LoadImage(imageBar[1], 'gameLayout/health_bar.png')

//Bar_decoration Sprite
createSprite(bar[0], imageBar[0])
SetSpritePosition(bar[0], 0, 0)
setSpriteScale(bar[0], 3,3)	

//Health_bar Sprite
createSprite(bar[1], imageBar[1])
SetSpriteOffset(bar[1], 10, 17)
SetSpritePosition(bar[1], 42, 0)
setSpriteScale(bar[1], 3, 3)


return
