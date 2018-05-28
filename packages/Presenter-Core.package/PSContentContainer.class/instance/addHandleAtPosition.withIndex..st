handles
addHandleAtPosition: aPosition withIndex: anIndex

	| handle |
	handle := self createHandleAtPosition: aPosition withIndex: anIndex.
	handle setProperty: #morphicLayerNumber toValue: self handleLayerNumber.
	self addMorphInLayer: handle.
	self resizeHandles add: handle