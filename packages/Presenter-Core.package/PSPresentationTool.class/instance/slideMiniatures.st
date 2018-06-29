as yet unclassified
slideMiniatures

	^ self slides collect: [:each | 
		(PSMiniature forSlide: each) 
			model: self; 
			yourself]