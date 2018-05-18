geometry
resizeMorphWidthToFit: aMorph

	| aspectRatio newWidth |
	newWidth := self extent x.
	aMorph extent x <= newWidth
		ifTrue: [ ^ self ].
	
	aspectRatio := aMorph extent y / aMorph extent x.
	aMorph extent: newWidth @ (newWidth * aspectRatio)