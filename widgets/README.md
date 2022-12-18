What are Widgets:

The Basic Elements of Flutter which are Classes in Dart with manipulable methods and parameters to be able to bring our creativity to life, like LEGO bricks.
We understand that Widgets can be related/connected (like Mothers and Daughters) through child/children parameters.
Container:

A widget that allows the creation of a rectangular space with vertical size (height) and horizontal size (width), colors (color), only child (child), in addition to other parameters that we can check in the catalog of Documentation widgets.
Stack:

A Widget with the power to draw its children one on top of the other, with parameters such as multiple children (children), alignment (alignment), in addition to other parameters that we can check in the Widgets catalog in the documentation.
Column:

A Widget with the power to draw its children one next to the other vertically, with parameters such as multiple children (children), vertical alignment (mainAxisAlignment), horizontal alignment (crossAxisAligment), in addition to other parameters that we can check in the Widgets catalog in the documentation .
Row:

A Widget with the power to draw its children next to each other horizontally, with parameters such as multiple children (children), horizontal alignment (mainAxisAlignment), vertical alignment (crossAxisAligment), in addition to other parameters that we can check in the Widgets catalog in the documentation .
ElevatedButton:

The First Button we created! It has action power with the onPressed parameter, in addition to the child parameter that allows adding a new Widget inside the ElevatedButton, in addition to other parameters that we can check in the Widgets catalog in the documentation.
Text:

The Widget responsible for using a String to show written information on the screen, in the format we want! With the style parameters we have the power to change the size, color and many other characteristics of our text.
overflow:

When we are not aware of space within our screen, our Widgets may be larger than the visible space, on these occasions the information in our Widgets may not be completely visible to the application user, losing important information due to lack of space. This defect is called Overflow.
Widget Tree:

To make the relationship between parent Widgets and child Widgets clearer, we need to clearly understand the concept of the Widget Tree. We used some Android Studio tools to make our understanding of the tree easier. With Flutter Inspector and Layout Explorer we can understand how the Widgets are arranged on the screen, including viewing their parameters and limits!
Design:

Where does art come into all this? Design is important so that our apps have a beautiful structure and a format that makes sense for mobile phones. Therefore, we saw the concepts of Material (Design created by google) and Cupertino (Design created by apple).