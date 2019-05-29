as yet unclassified
setFrames: aCollection
	
	aCollection inject: 0@0 into: [:aPoint  :each| 
		| actualSize |
		actualSize := self class perform: (each at: #size).
		each at: #frame put: (aPoint corner: aPoint + actualSize).
		aPoint + (actualSize x @ 0)].
	
	 ^ aCollection