import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  final List<MenuItem> items;

  CustomMenu({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 1.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            decoration: BoxDecoration(
              color: item.color,
              borderRadius: BorderRadius.circular(20.0), // Increase the radius for more curve
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(20.0), // Match the radius of the container
                onTap: () {
                  // Handle menu item tap
                },
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item.icon, color: Colors.white, size: 32.0),
                      SizedBox(height: 8.0),
                      Text(
                        item.title,
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MenuItem {
  final String title;
  final IconData icon;
  final Color color;

  MenuItem({required this.title, required this.icon, required this.color});
}
