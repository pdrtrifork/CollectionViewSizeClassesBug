# CollectionViewSizeClassesBug
An iOS app showing issue in UICollectionViewCell.

The app contains two tabs.

## Collection View tab
The content of the first tab is a UICollectionViewController with a number of cells. Each cell contains a single label.

The horizontal constraints of the label are:
* Leading
  * Installed: Checked
  * RxR: Unchecked
* Trailing
  * Installed: Unchecked
  * RxR: Checked

## Label tab
The content of the second tab is a UIViewController with a single label.

The horizontal constraints of the label are:
* Leading
  * Installed: Checked
  * RxR: Unchecked
* Trailing
  * Installed: Unchecked
  * RxR: Checked


# Debugging label constraints

Tabbing a label will present a table showing the horizontal constraints and an indication whether the constraint is active.

# The expected behaviour
Running the app on an iPhone should hug all labels to the left side of their super view, the width of the labels fitting the content.

Running the app on an iPad should hug all labels to the right side of their super view, the width of the labels fitting the content.


# Observed behaviour

The app works as expected on iPhones. On iPads the label in the View tab has the proper constraints active. But on the Collection View tab, the labels have their leading constraint active, even though it is disabled in the storyboard.