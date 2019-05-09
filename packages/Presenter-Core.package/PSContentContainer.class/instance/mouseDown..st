event handling
mouseDown: anEvent
	
	self ifAnyHandleContains: anEvent position 
		do: [:handle | ^ anEvent hand newMouseFocus: handle]. 
	anEvent hand grabMorph: self content