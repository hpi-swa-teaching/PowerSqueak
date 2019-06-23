initialize-release
reset

	self 
		errorReport: (Dictionary newFrom: 
			{#slides -> Dictionary new. 
			#files -> Dictionary new});		
		presentation: PSPresentation new.