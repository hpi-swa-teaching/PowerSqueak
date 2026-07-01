event handling
mouseDown: evt

	(self owner notNil and: [self owner respondsTo: #executeCode])
		ifTrue: [self owner executeCode]