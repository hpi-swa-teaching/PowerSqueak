container tests
testResizeHandleMagnetic
	
	| bottomRightFractions | 
	self tool snapActive: true.
	self selectContainer.
	self 
		dragndrop: MouseEvent redButton 
		from: self morph bottomRight 
		to: self morph bottomRight + (20 @ 20).
	
	self slide fullBounds.
	bottomRightFractions := self container layoutFrame rightFraction @ self container layoutFrame bottomFraction.
	
	self 
		assert: (bottomRightFractions roundTo: self container rasterResolution)
		equals: bottomRightFractions 