saving
removeBlockPropertiesFrom: aMorph

	aMorph otherProperties ifNotNil: [:properties |
		(properties keys select: [:each | (properties at: each) isBlock])
			do: [:each | aMorph removeProperty: each]]