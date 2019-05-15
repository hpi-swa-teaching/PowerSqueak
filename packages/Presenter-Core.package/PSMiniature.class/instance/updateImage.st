updating
updateImage 

	self slide isHidden
		ifTrue: [self symbolForHiding: (TransformMorph new center: self center;yourself). self addMorph: self symbolForHiding. self halt]
		ifFalse: [self symbolForHiding ifNotNil: [self symbolForHiding abandon]].
	self newForm: (self slide imageForm scaledToSize: self formSize).
	self borderWidth: self borderWidth