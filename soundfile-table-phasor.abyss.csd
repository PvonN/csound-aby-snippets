;; read a soundfile into a table and read it with a phasor
;; mono and stereo files
gSfile = ""
kSpeed = 1

iSndflNumChnls filenchnls gSfile
if iSndflNumChnls == 1 	goto monoFile
						goto stereoFile

monoFile:
iSndflTblLeft ftgen 0, 0, 0, 1, gSfile, 0, 0, 1
iSndflTblRight = iSndflTblLeft
iSpeedBase = sr/ftlen(iSndflTblLeft)
iSrConv = sr/ftsr(iSndflTblLeft)
aIndex phasor (iSpeedBase*kSpeed)/iSrConv
aSmpL table3 aIndex, iSndflTblLeft, 1
aSmpR table3 aIndex, iSndflTblRight, 1
						goto output

stereoFile:
iSndflTblLeft ftgen 0, 0, 0, 1, gSfile, 0, 0, 1
iSndflTblRight ftgen 0, 0, 0, 1, gSfile, 0, 0, 2
iSpeedBase = sr/ftlen(iSndflTblLeft)
iSrConv = sr/ftsr(iSndflTblLeft)
aIndex phasor (iSpeedBase*kSpeed)/iSrConv
aSmpL table3 aIndex, iSndflTblLeft, 1
aSmpR table3 aIndex, iSndflTblLeft, 1

output:
aOutL = aSmpL
aOutR = aSmpR
outs aOutL, aOutR
