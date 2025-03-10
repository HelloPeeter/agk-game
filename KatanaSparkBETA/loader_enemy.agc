loader_enemy:
//--Carregando os Inimigos--//

//Load Enemys Id 200 to 
LoadImage(200, 'enemy/idle.png') //Idle Animation
LoadImage(201, 'enemy/run.png') //Run Animation
LoadImage(202, 'enemy/attack_1.png') //Attack Animation

createSprite(200, 200) //Carrega o sprite de Idle
SetSpriteAnimation(200, 30, 36, 5) //Seta 5 frames de animação
SetSpriteScale(200, 2, 2) //Seta o tamanho para o mesmo do player
setSpriteVisible(200, 0) //Seta o sprite invisivel

CreateSprite(201, 201) //Carrega o sprite de Run
SetSpriteAnimation(201, 30, 36, 8) //Seta 8 frames de animação
SetSpriteScale(201, 2, 2) //Seta o tamanho para o mesmo do player
SetSpriteVisible(201, 0)  //Seta o sprite invisivel
 
createSprite(202, 202) //Carrega o sprite de Attack
SetSpriteAnimation(202, 75, 36, 5) //Seta 5 frames de animação
SetSpriteScale(202, 2, 2) //Seta o tamanho para o mesmo do player
SetSpriteVisible(202, 0) //Seta o sprite invisivel



//Criando as variveis do inimigo
dim enemyIdle[11]
dim enemyRunning[11]
dim enemyAttack[11]

return
