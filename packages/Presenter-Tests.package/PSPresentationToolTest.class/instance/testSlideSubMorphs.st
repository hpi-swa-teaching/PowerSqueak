slide resizing tests
testSlideSubMorphs

	| slide morph |
	[self assert: (self tool slideCount = 1).
	slide := self tool slides at: 1.
	
	morph := Morph new openInWorld.
	morph position: slide position + (10@10).
	slide acceptDroppingMorph: morph event: nil.
	
	self assert: (self is: [morph extent x / morph extent y] constantOnResizeOf: self window).
	self assert: (self is: [morph extent / slide extent] constantOnResizeOf: self window).
	self assert: (self is: [morph position - slide position / slide extent] constantOnResizeOf: self window).
	] ensure: [morph ifNotNil: [morph abandon]]