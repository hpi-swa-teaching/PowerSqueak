dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	(self isMovedContentMorph: aMorph)
		ifTrue: [^ self acceptMovedContentMorph: aMorph].
	^ self addContentUndoably: aMorph