sections
outdentSectionStartingAt: aSlide

	| section |
	section := self presentation sectionStartingAt: aSlide.
	section ifNil: [^ self].
	self presentation outdentSection: section.
	self miniatureController updateSlideMiniatures
