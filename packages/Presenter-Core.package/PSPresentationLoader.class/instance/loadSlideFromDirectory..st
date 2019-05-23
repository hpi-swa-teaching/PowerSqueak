slide loading
loadSlideFromDirectory: aDirectory

	| slide instanceVar|
	slide := self presentation createSlideBack.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	instanceVar := FileStream oldFileNamed: (aDirectory / 'metadata.dict') fullName do: [:in | Object readFrom: in].
	self update:slide with: instanceVar. 
	^ slide