initialize-release
createShortcutsFrom: aCollection
	
	| shortcuts |
	shortcuts := Dictionary new.
	aCollection do: [:each |
		shortcuts at: each first put: each second].
	^ shortcuts