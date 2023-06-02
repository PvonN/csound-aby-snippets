;;; Stereo-Looper
gSFile =

kLoopAmp = -6
kLoopSpeed = 1
kLoopStart = 0
iSndflLeng ftgen 0, 0, 0, 1, gSFile, 0, 0, 1 
iLoopEnd = tableng:i(iSndflLeng)/sr
kFadeTime = 0.05 

iNumChnls filenchnls gSFile
if iNumChnls == 1 	goto monoFile
				goto stereoFile
monoFile:
iLoopTableL ftgen 0, 0, 0, 1, gSFile, 0, 0, 1 
iLoopTableR = iLoopTableL
aLoopL flooper2 ampdbfs(kLoopAmp), kLoopSpeed, kLoopStart, iLoopEnd, kFadeTime, iLoopTableL
aLoopR flooper2 ampdbfs(kLoopAmp), kLoopSpeed, kLoopStart, iLoopEnd, kFadeTime, iLoopTableR
aLoopR delay aLoopR, 0.008 
				goto weiter
stereoFile:
iLoopTableL ftgen 0, 0, 0, 1, gSFile, 0, 0, 1 
iLoopTableR ftgen 0, 0, 0, 1, gSFile, 0, 0, 2 
aLoopL flooper2 ampdbfs(kLoopAmp), kLoopSpeed, kLoopStart, iLoopEnd, kFadeTime, iLoopTableL
aLoopR flooper2 ampdbfs(kLoopAmp), kLoopSpeed, kLoopStart, iLoopEnd, kFadeTime, iLoopTableR

weiter: 
;; output
aOutL = aLoopL
aOutR = aLoopR
outs aOutL, aOutR