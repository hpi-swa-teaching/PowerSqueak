as yet unclassified
slideMiniatures

	^ self slides collect: [:each | self miniatures at: each ifAbsentPut: 
		[(PSMiniature forSlide: each) 
			model: self; 
			yourself]]