as yet unclassified
filterEvent: evt for: aMorphOrNil
	
	(self containsPoint: evt position) ifTrue: [
		self createContextMenu.
		evt isMouseDown ifTrue: [
			evt yellowButtonPressed ifTrue: [
				self createContextMenu.
				evt ignore]]].
	^ evt