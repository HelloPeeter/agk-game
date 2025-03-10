// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Jogo" )
SetWindowSize( 960, 540, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 960, 540 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


//Includes
#include 'loader_background.agc'
#include 'keyboard.agc'
#include 'loader_character.agc'
#include 'start_game.agc'
#include 'set_scene_1.agc'
#include 'loader_enemy.agc'
#include 'sounds.agc'
#include 'interactions.agc'
#include 'game_over.agc'
#include 'layout.agc'


//--Variaveis--//

//Coordenadas do Samurai
samuraiX=0
//470(Valor Y para o Sprite ficar embaixo)-48(Tamanhao da altura do sprite do chao)
samuraiY=422

//Coordenadas do Ataque
slashX=samuraiX
slashY=samuraiY

//Determinar se ele vai virar pra direita ou não
samuraiRight=1
samuraiLeft=0

walkSpeed=3 //Velocidade que ele ira Andar
walkToRun=0 //Variavel para ativar a animaçao WalkToRun
walkToRunSpeed=5 //Velocidade da variavel enquanto na animaçao WalkToRun
runToIdle=0 //Variavel para ativar a animaçao IdleToRun
runSpeed=9 //Velocidade que ele ira Correr
//attackDmg=10 //Dano que ele ira causar


//Play Song
playSong=0
keep=0

//Contador de Vidas do Samurai
samuraiLife=5 //Se chegar a 0 o samurai morre
score=0 //Pontos
killsPerRound=0

//Enemys
//Coordenadas dos Inimigos
dim enemyX[11]
enemyY=samuraiY-3
enemyRunSpeed=7 //Velocidade dos inimigos
enemyRight=1
enemyLeft=0
EnemyL=0 
EnemyR=0
enemyCount=0

startRound=0
stopGame=0

setBackground_1 = 1
setBackground_2 = 0
gosub loader_background
gosub loader_character
gosub sounds
gosub loader_enemy
gosub layout

do
	gosub set_scene_1
	if(samuraiLife>0)
		gosub keyboard
	else
		if(stopGame=0)
			stopGame=1
		endif
		gosub game_over
	endif
	gosub start_game
	if(startRound=1)		
		gosub interactions
	endif
	
	
	//if(GetRawKeyPressed(82)) //Letra R
	//	if(setBackground_1=1)
	//		setBackground_1 = 0
	//	else
	//		setBackground_1 = 1
	//	endif
	//endif
	
	sync()
loop
