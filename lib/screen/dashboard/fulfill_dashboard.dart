import 'package:flutter/material.dart';
class FulfillDashboard extends StatelessWidget {
  const FulfillDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      toolbarHeight: 90,
      flexibleSpace: Container(
        color: Colors.grey,
      ),
    ),
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Wrap(spacing: 10,
              runSpacing: 20,
              children: [

                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                )


              ],),
          ),
          const Divider(
            thickness: 10,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Wrap(spacing: 10,
              runSpacing: 20,
              children: [

                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                )


              ],),
          ),
          const Spacer(),
          const Divider(
            thickness: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Wrap(spacing: 10,
              runSpacing: 20,
              children: [

                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                ),
                InkWell(

                  child: Column(
                    children: [
                      const Icon(

                        Icons.account_circle,


                      ),
                      const Text("My Account")
                    ],
                  ),
                )


              ],),
          ),
        ],
      ),);
  }
}
