  ;;paulstretch
  ;; mono and stereo files
  gSfile = "/Users/philippneumann/Documents/Kompositionen/Funktionslust/Material/Csound/Rhythmen/230423_Rhythmen/Summe-001.wav"

  istretchFact = 3
  iwindowSize = .3
  
  iSndflNumChnls filenchnls gSfile
  if iSndflNumChnls == 1 	goto monoFile
                                goto stereoFile
  
  monoFile:
    iSmpL ftgen 0, 0, 0, 1, gSfile, 0, 0, 1
    iSmpR = iSmpL
    aStretchL paulstretch istretchFact, iwindowSize, iSmpL
    aStretchR paulstretch istretchFact, iwindowSize, iSmpR
    goto output

  stereoFile:
    iSmpL ftgen 0, 0, 0, 1, gSfile, 0, 0, 1
    iSmpR ftgen 0, 0, 0, 1, gSfile, 0, 0, 2
    aStretchL paulstretch istretchFact, iwindowSize, iSmpL
    aStretchR paulstretch istretchFact, iwindowSize, iSmpR

  output:
    aOutL = aStretchL
    aOutR = aStretchR
    outs aOutL, aOutR
