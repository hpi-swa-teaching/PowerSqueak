sections
deleteSectionStartingAt: aSlide

	| section |
	section := self presentation sectionStartingAt: aSlide.
	section ifNil: [^ self].
	self presentation removeSectionNamed: section name.
	self updateSlideMiniatures
