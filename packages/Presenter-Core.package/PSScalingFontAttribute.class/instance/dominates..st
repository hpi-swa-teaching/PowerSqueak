testing
dominates: otherTextAttribute

	^ (otherTextAttribute isKindOf: TextFontChange) or: [otherTextAttribute class ==  self class]