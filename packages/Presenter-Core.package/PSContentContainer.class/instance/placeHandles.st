resizing
placeHandles

	self flag: #TODO. "Meta programming"
	self resizeHandles keysAndValuesDo:  [:key :each | 
		each center: (self perform: key)]