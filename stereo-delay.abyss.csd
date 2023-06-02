  ;;; stereo-delay
  aDelInL = SIGNAL-Left    ; replace with left signal
  aDelInR = SIGNAL-Right   ; replace with right signal

  iDelBuffSize = 2           ; buffer size in seconds
  iDelTime = 0.45             ; delay time in seconds 
  iDelFdbk = 0.5             ; feedback factor, 1.0 = loop
  ; delay-buffer
  aDelR init 0
  aDelL init 0
  aDumpL 	delayr iDelBuffSize
  aDelL 	deltap3 iDelTime 
  delayw aDelInL + (aDelR*iDelFdbk)

  aDumpR 	delayr iDelBuffSize
  aDelR 	deltap3 iDelTime
  delayw aDelInR + (aDelL*iDelFdbk)
  ;Output
  aDelOutL sum aDelInL, aDelL
  aDelOutR sum aDelInR, aDelR