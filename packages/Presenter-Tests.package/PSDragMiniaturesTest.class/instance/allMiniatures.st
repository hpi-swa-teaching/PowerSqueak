nil
allMiniatures

	^ self slides collect: [:each | self miniatureOf: each]