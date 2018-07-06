accessing
unHighlight

	self isHighlighted ifTrue: [ self updateImage ].
	self borderColor: Color transparent