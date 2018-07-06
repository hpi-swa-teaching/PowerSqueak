handles
addHandleAt: aPosition

	| handle |
	handle := self createHandleOnMove: (self actionForCorner: aPosition).
	handle setProperty: #morphicLayerNumber toValue: self handleLayerNumber.
	self addMorphInLayer: handle.
	self resizeHandles at: aPosition put: handle