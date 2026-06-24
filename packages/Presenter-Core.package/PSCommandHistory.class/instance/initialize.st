initialize-release
initialize

	super initialize.
	undoStack := OrderedCollection new.
	redoStack := OrderedCollection new.
	cleanUndoStack := OrderedCollection new