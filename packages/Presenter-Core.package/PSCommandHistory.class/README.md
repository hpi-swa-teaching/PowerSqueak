A PSCommandHistory manages undoable and redoable commands.

Instance Variables
	undoStack:	<OrderedCollection>
	redoStack:	<OrderedCollection>
	cleanUndoStack:	<OrderedCollection>

undoStack
	- Commands that can currently be undone

redoStack
	- Commands that can currently be redone
	
cleanUndoStack
	- Snapshot of the undo stack at the last clean state, usually after loading or saving