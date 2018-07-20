as yet unclassified
sortedMorphFiles: anOrderedCollection

	^ anOrderedCollection sorted: [:a :b |
		a splitInteger first < b splitInteger first]