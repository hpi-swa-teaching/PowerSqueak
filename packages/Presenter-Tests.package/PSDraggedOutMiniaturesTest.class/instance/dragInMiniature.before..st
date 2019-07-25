as yet unclassified
dragInMiniature: aMiniature before: anotherMiniature

	self dragndrop: MouseEvent redButton
		from: aMiniature boundsInWorld center
		to: (anotherMiniature boundsInWorld center - (0@5)).

	^ aMiniature
	