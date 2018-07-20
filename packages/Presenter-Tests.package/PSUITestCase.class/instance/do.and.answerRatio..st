helper functions
do: onePoint and: otherPoint answerRatio: aPoint

	^ (onePoint - (otherPoint * aPoint)) abs < (1@1)