as yet unclassified
testSortMorphFiles

	self assert: {'1.morph'} equals: (self loader sortedMorphFiles: {'1.morph'}).
	
	self assert: {'2.morph' . '3.morph' . '4.morph'} 
		equals: (self loader sortedMorphFiles: {'4.morph' . '2.morph' . '3.morph'})