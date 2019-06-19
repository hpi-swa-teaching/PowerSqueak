as yet unclassified
dragOutMiniature: aMiniature

	self dragndrop: MouseEvent redButton
		from: aMiniature boundsInWorld center
		to: (self window boundsInWorld bottomRight + (20 @ 20)).

	^ aMiniature
	