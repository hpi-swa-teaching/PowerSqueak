slide sections
previousSection

	| currentSectionStarts currentSectionStart sectionStart |
	currentSectionStarts := self presentation sectionIndexes select: [:each | each <= self currentSlideNumber].
	currentSectionStarts ifEmpty: [^ self].
	currentSectionStart := currentSectionStarts last.
	sectionStart := self presentation previousSectionStartBefore: currentSectionStart.
	sectionStart ifNotNil: [self selectSlideAt: sectionStart]
