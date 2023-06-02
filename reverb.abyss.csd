instr 999 ; reverb
	aIn1 = gaRev1
	aIn2 = gaRev2
	kFbkbLvl = 0.85
	kFreqCf = sr/2

	aRev1, aRev2 reverbsc aIn1, aIn2, kFdbkLvl, kFreqCf

	outs aRev1, aRev2

	clear gaRev1, gaRev2
endin
