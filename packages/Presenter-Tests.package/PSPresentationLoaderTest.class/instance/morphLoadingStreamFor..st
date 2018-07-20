as yet unclassified
morphLoadingStreamFor: aByteArray

	^ (MultiByteBinaryOrTextStream with: aByteArray) 
		binary; 
		reset; 
		yourself