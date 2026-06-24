execution
undo

	| command |
	undoStack isEmpty ifTrue: [^ self].
	command := undoStack removeLast.
	command unexecute.
	redoStack addLast: command.
	^ command 