meaning of having a backslash is treat the character as a character not as a dart lang feature.
to interpolate strings we use $

single child scrollview doesnt work for components only for Scaffold body prop. because it cant understand the height of the component such as eg:- TransactionList

To use SingleChildScrollView you need to set a height of the view, to set the height of the the widget that supports a height param is Container

Listview.builder(best performance) renders the widgets that are only visible but ListView() renders all the elements this causes lags and bad performance

we need to add a ListView to a height defined widget.