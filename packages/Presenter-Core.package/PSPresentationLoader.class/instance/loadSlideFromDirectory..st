slide loading
loadSlideFromDirectory: aDirectory

	| slide instanceVar|
	slide := self presentation createSlideBack.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	(aDirectory / 'metadata.dict') exists ifTrue:
	[instanceVar := (aDirectory readOnlyFileNamed: 'metadata.dict') fileInObjectAndCode.
	self update:slide with: instanceVar.].
	^ slide