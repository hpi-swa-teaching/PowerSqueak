as yet unclassified
placeHandles

	self resizeHandles withIndexDo:  [:each :index | 
		each center: (self corners at: index)]