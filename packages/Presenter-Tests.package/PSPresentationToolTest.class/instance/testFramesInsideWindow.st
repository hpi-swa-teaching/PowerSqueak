button tests
testFramesInsideWindow

	| buttonDictionaries lastFrame |
	buttonDictionaries := (1 to: 13) collect: [:each |
		Dictionary withAll: {#size -> #bigButtonSize}].
	self tool setFrames: buttonDictionaries.
	lastFrame := buttonDictionaries last at: #frame.
	self assert: lastFrame right <= 1.0001