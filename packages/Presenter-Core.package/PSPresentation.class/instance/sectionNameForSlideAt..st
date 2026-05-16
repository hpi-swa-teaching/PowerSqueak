slide sections
sectionNameForSlideAt: anIndex

	| previousStarts |
	previousStarts := self sectionIndexes select: [:each | each <= anIndex].
	previousStarts ifEmpty: [^ nil].
	^ self sectionNameStartingAt: previousStarts last
