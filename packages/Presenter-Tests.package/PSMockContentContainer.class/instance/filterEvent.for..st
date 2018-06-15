as yet unclassified
filterEvent: evt for: aMorphOrNil
	
	self createContextMenu.
	(self containsPoint: evt position) ifTrue: [
		evt isMouseDown ifTrue: [
			evt yellowButtonPressed ifTrue: [
				self createContextMenu.
				evt ignore]]].
	^ evt