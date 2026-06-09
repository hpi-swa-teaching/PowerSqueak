context menu
changeBackgroundColorData

	^ Dictionary withAll: {
		#label -> 'Background color'.
		#contextMenuLabel -> 'Change slide background color'.
		#action -> #showBackgroundColorDialog.
		#help -> 'Changes the background color of this slide.'.
		#size -> #bigButtonSize.
		#name -> #ChangeSlideBackgroundColorButton.
		#model -> self}