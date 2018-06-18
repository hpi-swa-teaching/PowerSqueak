presentation saving
saveInDirectory: aDirectory

	self slideNumberMorph ifNotNil: [
		self slideNumberMorph abandon].
	
	self allMorphsDo: [:each | each prepareToBeSaved ].
	self submorphs doWithIndex: [:each :index | 
		each saveOnFileNamed: (aDirectory / (index asString, '.morph')) fullName].
	
	self slideNumberMorph ifNotNil: [
		self addSlideNumberMorph]