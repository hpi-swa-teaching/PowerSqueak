execution
undo
	| command |
	
	self undoStack isEmpty ifTrue: [^ self].
	command := self undoStack removeLast.
	command unexecute.
	self redoStack addLast: command.
	^ command 