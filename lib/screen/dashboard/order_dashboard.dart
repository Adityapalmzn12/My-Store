import 'package:flutter/material.dart';
import 'package:yourtrends/utils/constants.dart';

import '../../common_component/custom_appbar.dart';
class OrderDashboard extends StatelessWidget {
  const OrderDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:CustomAppBar(
      height: 120,
      child: Column(
        // children: [
        //   Text('One'),
        //   Text('Two'),
        //   Text('Three'),
        //   Text('Four'),
        // ],
      ),
    ),

      body: ListView(
        shrinkWrap: true,
      children: [

        _customer(),
        const Spacer(),
        _alreadySelectedProduct(),
        const Spacer(),
        _moreProduct(),
      ],
    ),);
  }

  Column _customer() {
    return Column(
         children: [
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Align(alignment: Alignment.topLeft,child: Text(Constants.customer,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
           ),
      Padding(
      padding: const EdgeInsets.all(18.0),
      child: Wrap(spacing: 10,
            runSpacing: 20,
            children: [

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),

                      Text(Constants.loginCustomer,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),

                      Text(Constants.recommendation,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(

                child: Column(
                  children:  [
                    const Icon(

                      Icons.account_circle,


                    ),
                    Text(Constants.customerBag)
                  ],
                ),
              ),



            ],),
    ),
         ],
       );
  }
  Column _alreadySelectedProduct() {
    return Column(
      children: [
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(alignment: Alignment.topLeft,child: Text(Constants.alreadySelectedProduct,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
        ),
        Padding(
          padding:  const EdgeInsets.all(18.0),
          child: Wrap(spacing: 10,
            runSpacing: 20,
            children: [

              SizedBox(
                width: 100,

                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text(Constants.findVariant,maxLines: 2,   overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,

                child:   InkWell(

                  child: Column(

                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text(Constants.searchProduct,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),

              const Spacer(),
              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text(Constants.checkout,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),



            ],),
        ),
      ],
    );
  }
  Column _moreProduct() {
    return Column(
      children: [
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(alignment: Alignment.topLeft,child: Text(Constants.moreProduct,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Wrap(spacing: 10,
            runSpacing: 20,
            children: [

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text(Constants.newArrow,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text(Constants.shopStore,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)


                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text(Constants.shopStore,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),

                      Text(Constants.search,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),

                      Text(Constants.similarProduct,maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              )


            ],),
        ),
      ],
    );
  }

}
