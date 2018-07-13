context menu
copyChildToHand

	| copy |
	copy := self child copy.
	copy center: ActiveHand center.
	ActiveHand grabMorph: copy.
	^ copy