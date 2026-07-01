initialize-release
initialize

	super initialize.
	self undoStack: OrderedCollection new;
		redoStack: OrderedCollection new;
		cleanUndoStack: OrderedCollection new