slide sections
nextSection

	| sectionStart |
	sectionStart := self presentation nextSectionStartAfter: self currentSlideNumber.
	sectionStart ifNotNil: [self selectSlideAt: sectionStart]
