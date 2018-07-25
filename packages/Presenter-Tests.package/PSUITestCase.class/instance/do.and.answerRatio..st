helper functions
do: onePoint and: otherPoint answerRatio: aPoint
	"Checks whether onePoint and otherPoint are in the aPoint sideRatio.
	Has a tolerance of one pixel, as it is used for UI tests and some versions of Squeak round screen coordinates to pixels."
	^ (onePoint - (otherPoint * aPoint)) abs < (1 @ 1)