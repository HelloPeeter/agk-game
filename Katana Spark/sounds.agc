sounds:
//--Carregando as Musicas--//
LoadMusic(20, 'song/daft_punk.mp3')
SetMusicFileVolume( 20, 20 )


//--Carregando as OSTs--//
screenOst = LoadSound('ost/screen_ost.wav')
inGameOst = LoadSound('ost/ingame_ost.wav')
fightingOst = loadSound('ost/fighting_ost.wav')

//--Carregando os Sounds Basicos--//

walkEffect = LoadSound('soundEffects/walking.wav')
slashEffect = loadSound('soundEffects/slash.wav')
dieEffect = LoadSound('soundEffects/playerDie.wav')


function soundLoop(i, v)
	if(GetSoundsPlaying(i)=0)
			PlaySound(i, v)
		endif
endfunction	

return
