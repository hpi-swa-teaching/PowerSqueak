sections
indentSectionStartingAt: aSlide

	| section |
	section := self presentation sectionStartingAt: aSlide.
	section ifNil: [^ self].
	self presentation indentSection: section.
	self miniatureController updateSlideMiniatures
