event handling
mouseDown: evt

	self action
		ifNotNil: [:aBlock | ^ aBlock value].

	(self owner notNil and: [self owner respondsTo: #executeCode])
		ifTrue: [self owner executeCode]