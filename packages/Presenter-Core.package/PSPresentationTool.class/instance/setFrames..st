as yet unclassified
setFrames: aCollection
	
	aCollection inject: 0@0 into: [:aPoint  :each| 
		each at: #frame put: (aPoint corner: aPoint + (each at: #size)).
		aPoint + ((each at: #size) x @ 0)].
	
	 ^ aCollection