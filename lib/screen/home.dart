import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourtrends/screen/dashboard/order_dashboard.dart';
import 'package:yourtrends/screen/splash.dart';

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
              return const Text("No Internet Connection");
            } else if (state is NetworkSuccess) {
              return const OrderDashboard();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}