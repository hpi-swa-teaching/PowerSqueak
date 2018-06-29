loading tests
testSortMorphFiles

	self assert: {'1.morph'} equals: (self tool sortedMorphFiles: {'1.morph'}).
	
	self assert: {'2.morph' . '3.morph' . '4.morph'} 
		equals: (self tool sortedMorphFiles: {'4.morph' . '2.morph' . '3.morph'})