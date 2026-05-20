bullets
indentBulletsData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Indent bullet level (-)'.
		#action -> #increaseBulletIndentOnSelection.
		#help -> 'Erhöht die Einrückungsebene der ausgewählten Aufzählungspunkte.'.
		#noButton -> true.
		#model -> self}