styling
selectionFontSize

	^ (self selectionAttribute: PSScalingFontAttribute)
		ifNil: [self defaultBasicTextSize]
		ifNotNil: [:fontAttribute | fontAttribute basicTextSize]