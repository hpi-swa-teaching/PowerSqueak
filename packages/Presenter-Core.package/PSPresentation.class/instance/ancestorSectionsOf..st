collection behaviour
ancestorSectionsOf: aPSSlideSection

	| covering |
	covering := self sectionsCoveringSlideAt:
		(self indexOf: aPSSlideSection firstSlide).
	covering isEmpty ifFalse: [covering removeLast].
	^ covering
