

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yourtrends/bloc/localization/local_cubit.dart';
import 'package:yourtrends/utils/appLocalizations.dart';
import 'package:yourtrends/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourtrends/utils/language.dart';

import '../../common_component/custom_appbar.dart';
class OrderDashboard extends StatelessWidget {
    OrderDashboard({Key? key,}) : super(key: key);
   BuildContext ?contexts;
  @override
  Widget build(BuildContext context) {
    contexts=context;
    return Scaffold(appBar:CustomAppBar(
      height: 110,
      child: ListView(
        shrinkWrap: true,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                size: 30,
                color: Colors.white,
              ),

              onChanged: (Language? language) async {
                if (language != null) {
                  print(language.languageCode.toString());
                  if(language.languageCode.toString()=="en"){
                    BlocProvider.of<LocalCubit>(context)
                        .changeLanguage('en');
                  }
                  if(language.languageCode.toString()=="hi"){
                    BlocProvider.of<LocalCubit>(context)
                        .changeLanguage('hi');
                  }
                  // Locale _locale = await setLocale(language.languageCode);
                  // MyApp.setLocale(context, _locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        e.flag,
                        style: const TextStyle(fontSize: 30),
                      ),
                      Text(e.name)
                    ],
                  ),
                ),
              )
                  .toList(),
            ),
          ),
           Align(alignment: Alignment.topCenter,child: SvgPicture.asset(
               width: 50.0,
               height: 30.0,
               "assets/svgIcons/myIcons.svg",
               color: Colors.deepOrange,
               semanticsLabel: 'A red up arrow'
          ),),


        ],
      ),
    ),

      body: ListView(
        shrinkWrap: true,
        children: [

        _customer(),

        _alreadySelectedProduct(),

        _moreProduct(),
      ],
    ),);
  }

  Column _customer() {
    return Column(
         children: [
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Align(alignment: Alignment.topLeft,child: Text('loginCustomer'.tr(contexts!),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
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

                      Text('loginCustomer'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),

                      Text('recommendation'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text('customerBag'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
                    ],
                  ),
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
          child: Align(alignment: Alignment.topLeft,child: Text('alreadySelectedProduct'.tr(contexts!),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
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
                      Text('findVariant'.tr(contexts!),maxLines: 2,   overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 100,

                child:   InkWell(

                  child: Column(

                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text('searchProduct'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),


              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text('checkout'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
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
          child: Align(alignment: Alignment.topLeft,child: Text("moreProduct".tr(contexts!),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
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
                      Text('newArrow'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text('shopStore'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)


                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),
                      Text('shopStore'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),

                      Text('search'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 100,
                child: InkWell(

                  child: Column(
                    children:  [
                      const Icon(

                        Icons.account_circle,


                      ),

                      Text('similarProduct'.tr(contexts!),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)

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
