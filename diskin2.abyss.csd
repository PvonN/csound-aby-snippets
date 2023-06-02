;;; play a soundfile from disk
SFile = ""
kPlaybackSpeed = 1
iSkipTime = 0
iNumChnls filenchnls SFile
if iNumChnls == 1 then
	aSmp1 diskin2 SFile, kPlaybackSpeed, iSkipTime
	aSmp2 = aSmp1
elseif iNumChnls == 2 then
	aSmp1, aSmp2 diskin2 SFile, kPlaybackSpeed, iSkipTime
endif
;; output
aOutL = aSmp1
aOutR = aSmp2
