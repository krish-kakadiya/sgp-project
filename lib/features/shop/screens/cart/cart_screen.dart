import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/utils/constants/colors.dart';

import '../../../../utils/helpers/helper_function.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('My Cart'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.trash),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2, // Replace with cart items count
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      title: const Text('Pizza Margherita', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text('200', style: TextStyle(color: Colors.red)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(Iconsax.minus)),
                          const Text('1', style: TextStyle(fontSize: 16)),
                          IconButton(onPressed: () {}, icon: const Icon(Iconsax.add)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Cart Total Section
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: dark ? TColors.darkerGrey : TColors.grey,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
            ),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Total:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("₹400", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: dark ? Colors.white : Colors.black)),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text("Proceed to Checkout"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
