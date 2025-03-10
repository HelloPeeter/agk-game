menu:

menuScreen = LoadImage('menu/screen.png')
menuSprite = createSprite(menuScreen)
button = createSprite(0)
mouse = createSprite(0)

SetSpriteAnimation(menuSprite, 960, 540, 26)
setSpritePosition(button, 299, 389)
setSpriteSize(button, 340, 76)
setSpriteVisible(button, 0)

setSpriteVisible(mouse, 0)



return
