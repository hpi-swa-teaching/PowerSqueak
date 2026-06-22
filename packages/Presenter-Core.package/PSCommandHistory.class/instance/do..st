execution
do: aCommand

	aCommand execute.
	undoStack addLast: aCommand.
	redoStack removeAll.
	^ aCommand