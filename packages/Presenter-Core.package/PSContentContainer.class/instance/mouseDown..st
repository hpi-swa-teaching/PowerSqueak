event handling
mouseDown: evt 

	self ifAnyHandleContains: evt position 
		do: [:handle | ^ evt hand newMouseFocus: handle]. 
	self grabOnBorder: evt.
	self updateSelection.
	(self content handlesMouseDown: evt)
		ifTrue: [^self content mouseDown: evt]