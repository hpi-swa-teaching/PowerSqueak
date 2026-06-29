running
tearDown
	(self world allMorphs select: [:each | each isKindOf: MenuMorph]) do: [:each | each delete].
	super tearDown
