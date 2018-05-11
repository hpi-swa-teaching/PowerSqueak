slide tests
testSlideResizing

	| tool slide morph morphExtent morphPosition morphSideRatio morphExtentRatio morphPositionRatio window |
	[window := PSPresentationTool open.
	tool := window model.
	self assert: (tool slideCount = 1).
	slide := tool slides at: 1.
	self assert: (slide extent y / slide extent x = slide sideRatio).
	window extent: 1000@123.
	self assert: (slide extent y / slide extent x = slide sideRatio).
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
	window extent: 100@532.
	self assert: (slide extent y / slide extent x = slide sideRatio).
	self assert: morph extent / slide extent = morphExtentRatio.
	self assert: morph position - slide position / slide extent = morphPositionRatio.
	] ensure: [morph ifNotNil: [morph abandon]. window abandon]