accessing
unHighlight

	self isHighlighted ifTrue: [ self updateImage ].
	self borderColor: self class unHighlightBorderColor.