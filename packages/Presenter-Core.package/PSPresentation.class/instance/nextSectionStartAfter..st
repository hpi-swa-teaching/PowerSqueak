slide sections
nextSectionStartAfter: anIndex

	| followingStarts |
	followingStarts := self sectionIndexes select: [:each | each > anIndex].
	followingStarts ifEmpty: [^ nil].
	^ followingStarts first
