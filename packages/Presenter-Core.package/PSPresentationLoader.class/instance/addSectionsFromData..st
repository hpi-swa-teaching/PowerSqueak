slide loading
addSectionsFromData: aCollection

	aCollection do: [:anEntry | self addSectionFromEntry: anEntry].
	self presentation normalizeSectionLevels