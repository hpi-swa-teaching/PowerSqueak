presentation loading
testSortMorphFiles

	self 
		assert: {'2.morph' . '3.morph' . '4.morph'} 
		equals: (self loader sortedMorphFiles: {'4.morph' . '2.morph' . '3.morph'})