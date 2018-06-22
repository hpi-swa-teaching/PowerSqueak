loading tests
morphLoadingStreamFor: aByteArray

	^ (MultiByteBinaryOrTextStream with: aByteArray) 
		binary; 
		reset; 
		yourself