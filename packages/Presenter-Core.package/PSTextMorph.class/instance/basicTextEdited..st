editor access
basicTextEdited: someText

	someText isString
		ifTrue: [self setString: someText]
		ifFalse: [self setText: someText].
	self
		ensureScalingFontAttribute;
		relayoutText.
	self textMorph changed