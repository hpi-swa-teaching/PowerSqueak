slide miniatures
miniatureOf: aPSSlide

	^ self miniatures at: aPSSlide ifAbsentPut: [(PSMiniature forSlide: aPSSlide) 
			model: self; 
			yourself]