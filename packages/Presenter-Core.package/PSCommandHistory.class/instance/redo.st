execution
redo

	| command |
	redoStack isEmpty ifTrue: [^ self].
	command := redoStack removeLast.
	command execute.
	undoStack addLast: command.
	^ command 