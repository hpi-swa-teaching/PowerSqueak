helper functions
does: aPoint answerRatio: aNumber

	^ (aPoint y - (aPoint x * aNumber)) abs < 1