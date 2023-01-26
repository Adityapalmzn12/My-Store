import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourtrends/screen/dashboard/order_dashboard.dart';
import 'package:yourtrends/screen/navigation_bar.dart';


import '../bloc/internet_check/network_bloc.dart';
import '../bloc/internet_check/network_state.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:BlocBuilder<NetworkBloc, NetworkState>(
          builder: (context, state) {
            if (state is NetworkFailure) {
              return Center(
                child: Wrap(
                  children: [
                    Center(child: const Text("No Internet Connection")),
                    SizedBox(height: 20,),
                    Center(child: Text("🥱",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),))
                  ],
                ),
              );
            } else if (state is NetworkSuccess) {
              return  NavigationBottomBar();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}