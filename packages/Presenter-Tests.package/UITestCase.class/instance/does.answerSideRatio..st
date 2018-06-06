helper functions
does: aMorph answerSideRatio: aNumber

	^ (aMorph extent y - (aMorph extent x * aNumber)) abs < 1