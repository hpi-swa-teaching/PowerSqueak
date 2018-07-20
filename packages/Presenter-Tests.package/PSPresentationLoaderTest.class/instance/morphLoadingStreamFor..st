presentation loading
morphLoadingStreamFor: aByteArray

	^ (MultiByteBinaryOrTextStream with: aByteArray) 
		binary; 
		reset; 
		yourself