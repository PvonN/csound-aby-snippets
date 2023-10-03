  ;   gSFile = "" ; add to global section
  ;   giSndfl ftgen 0, 0, 0, 1, gSfile, 0, 0, 0
  ;; play a soundfile from function table with looping
  kPlaybackSpeed = 1
  kAmp = 0.9
  kPlaybackSpeed = 1
  kLoopStart = 0
  kLoopEnd = filelen(gSFile)
  kFadeTime = 0.05
  iSndflTable = giSndfl
  iNumChnls filenchnls gSFile
  if iNumChnls == 1 then
    aSndfl1 flooper2 kAmp, kPlaybackSpeed, kLoopStart, kLoopEnd, \
      kFadeTime, iSndflTable
    aSndfl2 = aSndfl1
  elseif iNumChnls == 2 then
    aSndfl1, aSndfl2 flooper2 kAmp, kPlaybackSpeed, kLoopStart, \
      kLoopEnd, kFadeTime, iSndflTable
  endif
  
  ;; output
  aOut1 = aSndfl1
  aOut2 = aSndfl2
  outs aOut1, aOut2