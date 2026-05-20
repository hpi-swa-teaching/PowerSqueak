bullets
toggleBulletsData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Toggle bullet list (-)'.
		#action -> #toggleBulletsOnSelection.
		#help -> 'Wandelt die ausgewählten Zeilen in eine Aufzählung um oder entfernt die Bullets wieder.'.
		#noButton -> true.
		#model -> self}
