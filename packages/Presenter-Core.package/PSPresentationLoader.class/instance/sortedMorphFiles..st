morph loading
sortedMorphFiles: anOrderedCollection

	^ anOrderedCollection sorted: [:a :b |
		a splitInteger first < b splitInteger first]