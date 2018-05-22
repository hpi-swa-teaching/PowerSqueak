initialize-release
initialize 

	super initialize.
	self color: Color seaFoam.
	self resizeHandles: OrderedCollection new.
	self hasHandles: false.
	self addResizeHandles