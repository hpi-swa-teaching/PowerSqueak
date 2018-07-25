context menu
copyChildToHand

	| copy |
	copy := self content copy.
	copy center: ActiveHand center.
	ActiveHand grabMorph: copy.
	^ copy