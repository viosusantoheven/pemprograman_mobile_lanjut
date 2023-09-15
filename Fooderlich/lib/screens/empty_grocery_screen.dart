import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/tab_manager.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset('assets/fooderlich_assets/empty_list.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'No Groceries',
              style: TextStyle(fontSize: 21.0),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Shooping for ingredients?\nTap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              onPressed: () {
                Provider.of<TabManager>(context, listen: false).gotoRecipes();
              },
              color: Colors.green[400],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: const Text('Browse Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
