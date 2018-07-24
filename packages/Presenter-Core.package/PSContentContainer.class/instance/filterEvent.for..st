event handling
filterEvent: evt for: aMorphOrNil
	
	(self containsPoint: evt position) ifTrue: [
		evt isMouseDown ifTrue: [
			evt yellowButtonPressed ifTrue: [
				self invokeContextMenu.
				evt ignore]]].
	^ evt