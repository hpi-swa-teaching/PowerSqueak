resizing
placeHandles

	self resizeHandles keysAndValuesDo:  [:key :each | 
		each center: (self perform: key)]