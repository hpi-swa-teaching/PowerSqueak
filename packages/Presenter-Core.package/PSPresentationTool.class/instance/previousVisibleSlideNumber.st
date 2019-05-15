slide management
previousVisibleSlideNumber

	self currentSlideNumber-1 to: 1 by: -1 do: 
		[:counter | (self presentation slideAt: counter) isHidden 
			ifFalse: [^ counter]].
	^self currentSlideNumber