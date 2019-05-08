event handling
mouseDown: evt 

	self ifAnyHandleContains: evt position 
		do: [:handle | ^ evt hand newMouseFocus: handle]. 
	evt hand grabMorph: self content.
	self updateSelection