slide sections
previousSectionStartBefore: anIndex

	| previousStarts |
	previousStarts := self sectionIndexes select: [:each | each < anIndex].
	previousStarts ifEmpty: [^ nil].
	^ previousStarts last
