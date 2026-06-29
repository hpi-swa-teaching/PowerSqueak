execution
redo
	| command |
	
	self redoStack isEmpty ifTrue: [^ self].
	command := self redoStack removeLast.
	command execute.
	self undoStack addLast: command.
	^ command 