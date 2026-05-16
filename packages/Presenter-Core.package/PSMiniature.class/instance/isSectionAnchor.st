testing
isSectionAnchor

	^ self model notNil
		and: [self model isSectionAnchorSlide: self slide]
