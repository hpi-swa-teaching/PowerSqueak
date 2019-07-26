toolbuilder
createButtonSpecs: aCollection with: aBuilder

	self setFrames: aCollection.
	^ aCollection collect: [:each | self createButtonSpec: each with: aBuilder]