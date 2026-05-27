comparing
= anObject

	self == anObject ifTrue: [^ true].
	anObject class == self class ifFalse: [^ false].
	^ self insertionIndex = anObject insertionIndex
		and: [self indent = anObject indent
		and: [self targetSection == anObject targetSection]]
