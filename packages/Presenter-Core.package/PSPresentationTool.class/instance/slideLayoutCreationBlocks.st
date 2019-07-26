layouts
slideLayoutCreationBlocks
	
	^ self presentation slideLayouts values collect:
		[:aSlide | [self createSlideFromLayout: aSlide]]