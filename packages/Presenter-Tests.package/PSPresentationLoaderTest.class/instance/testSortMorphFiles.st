presentation loading tests
testSortMorphFiles

	self 
		assert: {'2.morph' . '3.morph' . '4.morph'} 
		equals: (self loader sortedMorphFilesIn: (PSMockFileDirectory from: 'Presentation' -> {'4.morph' . '2.morph' . '3.morph'}))