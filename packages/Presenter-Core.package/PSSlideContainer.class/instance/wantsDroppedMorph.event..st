events-processing
wantsDroppedMorph: aMorph event: evt

	(self currentSlide containsPoint: evt position) 
		ifTrue: [^ true].
	^ false