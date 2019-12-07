# Application Name
Shopping List

# Course
Hacking with Swift

# Objective
The aim of this app is to create a simple shopping list, by adding and removong items to a UITableView, enusring the entries are saved to the app's bundle for later retreival when the app is closedd, then reopened.

# Demo
![Demo](Demo_06122019.gif)


# Education supplier
This iOS app is developed as a "self challenge" project in the iBook tutorial "Hacking with Swift" which forms part of the "Hacking with Swift" tutorial series, authored by Paul Hudson. Self challenges are apps developed from scratch, solo and un-assisted. The requirements are provided by the instructor in text base, list form. Some helpful hints are sometimes provided.

# Project Type
Self challenge

# Topics / milestones
- UICollectionViewController

- UICollectionView

- UICollectionViewCell (create custom cell)

- instantiateViewController()

- Bundle.main.resourcePath

- contentsOfDirectory(atPath: path)

- UIImagePickerController

- UUID

- jpegData()

- UIAlertController / UIAlertAction

- UITableViewRowAction (swipte to Share and swipe to Delete)

- prepare(for segue:)

- Git / Github

# Project goals / instructions
- Your challenge is to put two different projects into one: I’d like you to re-make project 1, Storm Viewer, using a UICollectionViewController as seen in project 10.

</br> <strong> Additional hints: </strong> </br>
• You’ll need to use these three lines of code from project 1: let fm = FileManager.default, then let path = Bundle.main.resourcePath!, and finally let items = try! fm.contentsOfDirectory(atPath: path).

• Once you have an array of all the files in your app bundle, use the hasSuffix() method to filter out everything that isn’t a JPG image.

• You’ll need to make ViewController build on UICollectionViewController rather than just UIViewController.

• Just like in project 10, you should create a custom UICollectionViewCell subclass that contains an image view to show your storm images.

• You’ll need to design your detail view controller using Interface Builder, then call instantiateViewController to load it when a collection view cell is tapped.

# Stretch goals
Some features included are not part of the guided project, but are added as stretch goals. Stretch goals apply learned knowledge to accomplish and are completed unassisted. Stretch goals may either be suggested by the teaching instructor or self imposed. Strecth goals / features implemented (if any) will be listed here.

- Support swipe to share Shopping List item (self-imposed)

- Support swipe to delete Shopping List item (self-imposed)

# Completed
December, 2018

# Deployment information
- <strong>Deployment Target (iOS version): </strong>12.1 and higher
- <strong>Supported Devices: </strong>Universal
- <strong>Optimized for: </strong>iPhone

