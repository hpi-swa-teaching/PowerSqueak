section editing
openRenameSectionChooserFor: aSlide

	| section |
	section := self presentation sectionStartingAt: aSlide.
	section ifNil: [^ self].
	self tool
		askForInputWithQuestion: 'Enter a new name for your Section'
		withInitial: section name
		andDo: [:userInput | self renameSectionNamed: section name to: userInput]
		onError: 'Section name already exists'