slide resizing tests
testSlideSubMorphs

	| slide morph morphExtent morphPosition morphSideRatio morphExtentRatio morphPositionRatio |
	[self assert: (self tool slideCount = 1).
	slide := self tool slides at: 1.
	morph := Morph new openInWorld.
	morph position: slide position + (10@10).
	morphPosition := morph position.
	morphExtent := morph extent.
	slide acceptDroppingMorph: morph event: nil.
	self assert: morph position = morphPosition.
	self assert: morph extent = morphExtent. 
	morphSideRatio := morphExtent y / morphExtent x.
	morphExtentRatio := morphExtent / slide extent.
	morphPositionRatio := morph position - slide position / slide extent.
	self window extent: 100@532.
	self assert: (slide extent y / slide extent x = slide sideRatio).
	self assert: morph extent / slide extent = morphExtentRatio.
	self assert: morph position - slide position / slide extent = morphPositionRatio.
	] ensure: [morph ifNotNil: [morph abandon]]