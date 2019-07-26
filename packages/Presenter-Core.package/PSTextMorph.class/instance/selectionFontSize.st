styling
selectionFontSize

	^ (self selectionAttribute: PSScalingFontAttribute)
		ifNil: [self class defaultBasicTextSize]
		ifNotNil: [:fontAttribute | fontAttribute basicTextSize]