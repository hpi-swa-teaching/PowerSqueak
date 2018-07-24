testing
dominates: other

	^ (other isKindOf: TextFontChange) or: [other class == self class]