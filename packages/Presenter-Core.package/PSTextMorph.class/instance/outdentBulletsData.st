bullets
outdentBulletsData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Outdent / remove bullet'.
		#action -> #decreaseBulletIndentOnSelection.
		#help -> 'Verringert die Einrückungsebene und entfernt Bullets schrittweise.'.
		#noButton -> true.
		#model -> self}
