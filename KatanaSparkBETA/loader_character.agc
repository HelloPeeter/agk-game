loader_character:

//--Carregando as Imagens/Animações--//
LoadImage(1, 'samurai/idle.png') //Idle Animation
LoadImage(2, 'samurai/walk.png') //Walk Animation
LoadImage(3, 'samurai/idle_to_run.png') //Idle to Run Animation
LoadImage(4, 'samurai/run.png') //Run Animation
LoadImage(5, 'samurai/run_to_idle.png') //Run to Idle Animation
LoadImage(6, 'samurai/attack_1.png') //Attack_1 Animation
LoadImage(7, 'samurai/slash.png') //Slash Animation
LoadImage(8, 'samurai/hurt.png') //Hurt/Dead Animation



LoadImage(10,'samurai/play_song.png' ) //Playing Song Animation

//--Animações/Sprites--//

//Idle Animation
createSprite(1, 1) //Carrega o Sprite do Idle
SetSpriteAnimation(1, 30, 35, 11) //Seta 11 frames de animação
SetSpriteVisible(1, 0) //Seta o Sprite como Invisivel
setSpriteScale(1, 2, 2) //Seta para 60x70 o Sprite

//Walking Animation
createSprite(2, 2) //Carrega o Sprite de Walking
setSpriteSize(2, 34, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(2, 34, 36, 8) //Seta 8 frames de animação
setSpriteScale(2, 2, 2) // Seta para 72x70 o Sprite
SetSpriteVisible(2, 0) //Seta o Sprite como Invisivel

//Idle to Run Animation
CreateSprite(3, 3) //Carrega o Sprite de Idle to Run
setSpriteSize(3, 44, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(3, 44, 32, 4) //Seta 4 frames de animação
setSpriteScale(3, 2, 2) //Seta para 88x70 o Sprite
SetSpriteVisible(3, 0) //Seta o Sprite como Invisivel

//Running Animation
CreateSprite(4, 4) //Carrega o Sprite de Running
setSpriteSize(4, 44, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(4, 44, 32, 10) //Seta 10 frames de animação
setSpriteScale(4, 2, 2) //Seta para 88x70 o Sprite
SetSpriteVisible(4, 0) //Seta o Sprite como Invisivel
setSpriteDepth(4, 1)

//Run to Idle Animation
CreateSprite(5, 5) //Carrega o Sprite de Run do Idle
setSpriteSize(5, 52, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(5, 52, 36, 5) //Seta 5 frames de animação
SetSpriteVisible(5, 0) //Seta o Sprite como Invisivel
setSpriteScale(5, 2, 2) //Seta para 104x70 o Sprite
SetSpriteVisible(5, 0) //Seta o Sprite como Invisivel

//Attack_1 Animation
createSprite(6, 6) //Carrega o Sprite de Attack
setSpriteSize(6, 62, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(6, 62, 42, 7) //Seta 7 frames de animação
setSpriteScale(6, 2, 2) //Seta para 124x70 o Sprite
SetSpriteVisible(6, 0) //Seta o Sprite como Invisivel
//setSpriteDepth(6, 2)

//Slash_1 Animation
CreateSprite(7, 7) //Carrega o Sprite de Slash
SetSpriteSize(7, 106, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(7, 106, 32, 5) //Seta 5 frames de animação
setSpriteScale(7, 2, 2) //Seta para 246x79 o Sprite
SetSpriteVisible(7, 0) //Seta o Sprite como Invisivel

//Hurt/Dead Animation
createSprite(8, 8) //Carrega o Sprite de Hurt/Dead
setSpriteSize(8, 57, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(8, 57, 43, 12) //Seta 5 frames de animação
setSpriteScale(8, 2, 2) //Seta para 114x86
SetSpriteVisible(8, 0) //Seta o Sprite como Invisivel

//Play Song Animation
CreateSprite(10, 10) //Carrega o Sprite do Play Song
SetSpriteSize(10, 35, 35) //Seta o tamanho dos sprites pro mesmo do Idle
SetSpriteAnimation(10, 35, 39, 31) //Seta 31 frames de animação
setSpriteScale(10, 2, 2) //Seta para 70x70 o Sprite
SetSpriteVisible(10, 0) //Seta o Sprite como Invisivel
Return
