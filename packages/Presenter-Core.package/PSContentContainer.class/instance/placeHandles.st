resizing
placeHandles

	self resizeHandles withIndexDo:  [:each :index | 
		each center: (self corners at: index)]