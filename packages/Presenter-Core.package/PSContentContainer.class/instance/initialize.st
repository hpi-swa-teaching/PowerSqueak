initialize-release
initialize 

	super initialize.
	self color: Color transparent.
	self resizeHandles: OrderedCollection new.
	self hasHandles: false