handles
addHandleAt: aPositionSelector

	| handle |
	handle := self createHandleOnMove: (self actionForCorner: aPositionSelector).
	handle setProperty: #morphicLayerNumber toValue: self handleLayerNumber.
	self addMorphInLayer: handle.
	self resizeHandles at: aPositionSelector put: handle