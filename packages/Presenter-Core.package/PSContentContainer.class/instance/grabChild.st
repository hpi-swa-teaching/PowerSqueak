context menu
grabChild

	| hand |
	hand := self world firstHand.
	self content center: hand position.
	hand grabMorph: self content