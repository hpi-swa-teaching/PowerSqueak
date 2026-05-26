accessing
labelText

	| name slideCount childCount |
	name := self section name.
	slideCount := self tool presentation recursiveSlideCountOfSection: self section.
	childCount := (self tool presentation directChildSectionsOf: self section) size.
	(self section isCollapsed and: [childCount > 0])
		ifTrue: [^ name, '   (', slideCount printString,
			' / ', childCount printString, ' nested)'].
	^ name, '   (', slideCount printString, ')'
