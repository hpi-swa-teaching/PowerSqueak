execution
do: aCommand

	aCommand execute.
	self undoStack addLast: aCommand.
	self redoStack removeAll.
	^ aCommand