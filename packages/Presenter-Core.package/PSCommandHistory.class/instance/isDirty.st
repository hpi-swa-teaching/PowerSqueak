dirty state
isDirty

	^ (self undoStack) ~= (self cleanUndoStack)