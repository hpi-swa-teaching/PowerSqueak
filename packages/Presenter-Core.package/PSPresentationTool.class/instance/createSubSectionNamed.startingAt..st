sections
createSubSectionNamed: aString startingAt: aSlide

	| section parent targetLevel |
	self presentation addSectionNamed: aString firstSlide: aSlide.
	section := self presentation sectionNamed: aString.
	parent := self presentation sectionOfSlideAt:
		((self presentation indexOf: aSlide) - 1 max: 1).
	(parent isNil or: [parent == section])
		ifTrue: [^ self updateSlideMiniatures].
	targetLevel := parent level + 1.
	[section level < targetLevel
		and: [self presentation canIndentSection: section]]
			whileTrue: [self presentation indentSection: section].
	self updateSlideMiniatures
