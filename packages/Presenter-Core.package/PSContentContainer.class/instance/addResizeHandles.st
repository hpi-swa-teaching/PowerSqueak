handles
addResizeHandles

	self hasHandles ifFalse: [
		self corners
			withIndexDo: [:each :index |
				self addHandleAtPosition: each withIndex: index].
		self hasHandles: true]