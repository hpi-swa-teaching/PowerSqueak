A PSCommandHistoryTest tests undo and redo stack behavior of PSCommandHistory.
It uses test commands that append their execution to a log.

Instance Variables
	history:	<PSCommandHistory>
	log:		<OrderedCollection>

history
	- The command history tested by each test

log
	- Records executed and unexecuted test commands