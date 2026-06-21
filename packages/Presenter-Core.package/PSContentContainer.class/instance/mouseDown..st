event handling
mouseDown: anEvent
	
	self ifAnyHandleContains: anEvent position 
		do: [:handle | ^ anEvent hand newMouseFocus: handle].
	self rememberLocationForUndo.
	anEvent hand grabMorph: self content