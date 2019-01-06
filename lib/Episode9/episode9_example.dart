import 'package:flutter/material.dart';

class Example9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Bhandup",
    "Mumbai",
    "Visakhapatnam",
    "Coimbatore",
    "Delhi",
    "Bangalore",
    "Pune",
    "Nagpur",
    "Lucknow",
    "Vadodara",
    "Indore",
    "Jalalpur",
    "Bhopal",
    "Kolkata",
    "Kanpur",
    "New Delhi",
    "Faridabad",
    "Rajkot",
    "Ghaziabad",
    "Chennai",
    "Meerut",
    "Agra",
    "Jaipur",
    "Jabalpur",
    "Varanasi",
    "Allahabad",
    "Hyderabad",
    "Noida",
    "Howrah",
    "Thane"
  ];

  final recentCities = [
    "New Delhi",
    "Faridabad",
    "Rajkot",
    "Ghaziabad",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.red,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            onTap: () {
              showResults(context);
            },
            leading: Icon(Icons.location_city),
            title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ]),
            ),
          ),
      itemCount: suggestionList.length,
    );
  }
}
