window closing
askForUnsavedChangesCloseAction

	^ UIManager default
		chooseFrom: #('Save' 'Discard changes' 'Cancel')
		values: #(#save #discard #cancel)
		title: self class unsavedChangesMessage