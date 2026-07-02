layouts
slideLayoutCreationBlocks

	^ self presentation slideLayouts values collect:
		[:aSlide | [self layoutController createSlideFromLayout: aSlide]]