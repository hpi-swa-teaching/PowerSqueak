testing
isSectionAnchor

	^ self model notNil
		and: [self model sectionController isSectionAnchorSlide: self slide]