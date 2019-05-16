slide management
nearestSlideInRange: aRange

	aRange do: 
		[:counter | (self presentation slideAt: counter) isHidden 
			ifFalse: [^ counter]].
	^self currentSlideNumber