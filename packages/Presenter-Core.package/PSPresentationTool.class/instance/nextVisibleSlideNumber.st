slide management
nextVisibleSlideNumber

	self currentSlideNumber+1 to: self slideCount do: 
		[:counter | (self presentation slideAt: counter) isHidden 
			ifFalse: [^ counter]].
	^self currentSlideNumber