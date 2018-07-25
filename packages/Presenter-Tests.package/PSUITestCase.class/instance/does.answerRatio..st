helper functions
does: aPoint answerRatio: aNumber
	"Has a tolerance of one pixel, as it is used for UI tests and some versions of Squeak round screen coordinates to pixels."
	^ (aPoint y - (aPoint x * aNumber)) abs < 1