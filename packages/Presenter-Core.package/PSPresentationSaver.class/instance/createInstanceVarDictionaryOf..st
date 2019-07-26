saving
createInstanceVarDictionaryOf: aSlide

	| instanceVars |
	instanceVars := Dictionary new.
	aSlide class instanceVarsToBeSaved do: [:each | 
		instanceVars at: each put:  (aSlide perform: each)].
	^ instanceVars
	
	