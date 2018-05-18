submorph tests
testSubmorphsOnResize

	| slide |
	slide := self tool slides at: 1.
	self morph position: slide position + (10@10).
	slide acceptDroppingMorph: self morph event: nil.
	
	self assert: (self is: [morph extent x / morph extent y] constantOnResizeOf: self window).
	self assert: (self is: [morph extent / slide extent] constantOnResizeOf: self window).
	self assert: (self is: [morph position - slide position / slide extent] constantOnResizeOf: self window)