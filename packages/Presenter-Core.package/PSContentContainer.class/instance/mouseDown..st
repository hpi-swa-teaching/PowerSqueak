event handling
mouseDown: evt 

	evt yellowButtonPressed
		ifTrue: [^ self abandon].
	self ifAnyHandleContains: evt position 
		do: [:handle | ^ evt hand newMouseFocus: handle]. 
	evt hand grabMorph: self child