dropping/grabbing
isMovedContentMorph: aMorph

	^ (aMorph valueOfProperty: #undoStartLocation ifAbsent: [nil]) notNil