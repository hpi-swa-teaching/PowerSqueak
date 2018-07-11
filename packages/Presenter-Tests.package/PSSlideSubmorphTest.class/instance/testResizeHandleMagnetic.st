container tests
testResizeHandleMagnetic
	| container bottomRightFractions | 
	self slide model magneticRasterActive: true.
	self slide addContent: self morph.
	container := self morph owner.
	self drag: MouseEvent redButton from: self morph bottomRight  to: self morph bottomRight + (20 @ 20).
	self slide fullBounds.
	bottomRightFractions := container layoutFrame rightFraction @ container layoutFrame bottomFraction.
	self assert: (bottomRightFractions roundTo: container rasterResolution)
		equals: bottomRightFractions 