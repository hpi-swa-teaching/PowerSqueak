as yet unclassified
buildMorphErrorReportString
	
	| aString wronglyLoadedMorphs |
	wronglyLoadedMorphs := self slidesErrorReport select:
		[:each | each > 0].
	(wronglyLoadedMorphs) isEmpty
	ifTrue: [^ ' I loaded all morphs correctly.']
	ifFalse:
		[aString := ''.
		wronglyLoadedMorphs keysAndValuesDo: 
			[:key :value | aString := aString , Character cr , key , ' is missing ' , value , ' morph(s)'].
		^ aString].
	