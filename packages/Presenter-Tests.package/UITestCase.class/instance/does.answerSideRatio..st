helper functions
does: aMorph answerSideRatio: aNumber

	^ (aMorph extent y - (aMorph extent x * aMorph sideRatio)) abs < 1