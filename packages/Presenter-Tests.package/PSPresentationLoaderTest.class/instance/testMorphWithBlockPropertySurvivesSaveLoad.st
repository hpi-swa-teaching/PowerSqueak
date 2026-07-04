presentation loading tests
testMorphWithBlockPropertySurvivesSaveLoad

	| directory slide textMorph loadedSlide loadedContentClasses |
	textMorph := PSTextMorph new.
	textMorph
		setString: 'Skript Text';
		"ein block literal haette hier keinen context, nur so triggert der test den bug"
		setProperty: #customStep toValue: (Compiler evaluate: '[:aSlide | aSlide]').
	slide := PSSlide new.
	slide addContent: textMorph.
	directory := (FileDirectory default / 'PSLoaderTestBlockProperty') assureExistence.
	[PSPresentationSaver new
		saveSlide: slide
		inDirectory: directory
		withName: 'slide1'.
	loadedSlide := self loader
		world: self world;
		loadSlideFromDirectory: (directory / 'slide1').
	loadedContentClasses := loadedSlide submorphs collect: [:each | each content class].
	self
		assert: (loadedContentClasses includes: PSTextMorph);
		deny: (loadedSlide submorphs anySatisfy: [:each | each content hasProperty: #customStep])]
		ensure: [directory recursiveDelete]