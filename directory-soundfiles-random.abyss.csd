;;; read a directory for wav. files
SDir = ""
iCount init 0
SFiles[] directory SDir, ".wav"
iNumberOfFiles lenarray SFiles
iFile random 0, iNumberOfFiles-1
iFile = round(iFile)
SFile = SFiles[iFile]
