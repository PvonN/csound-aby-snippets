;;; resonant lowpass
kFiltFreq = 1000
kFiltQ = 10 ; between 1 and 500
aSig1 lowpass2 aSig1, kFiltFreq, kFiltQ
aSig2 lowpass2 aSig2, kFiltFreq, kFiltQ
