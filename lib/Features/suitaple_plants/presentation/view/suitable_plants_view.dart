import 'package:agriguide/Features/suitaple_plants/presentation/view/widgets/soil_type_list_view_item.dart';
import 'package:agriguide/Features/suitaple_plants/presentation/view/widgets/suitable_plants_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/widgets/SearchTextField.dart';
import '../../../growing_tips/Presentation/views/widgets/custom_app_bar.dart';

class SuitablePlantsView extends StatelessWidget {
  const SuitablePlantsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>titleType = ['All', 'Sandy soil', 'Clay soil', 'Silty soil'];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              const CustomAppBar(
                title: 'Suitable Plant',
              ),
              SizedBox(
                height: 10.h,
              ),
              const SearchTextField(width: 324,),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                height: 31.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      SoilTypeItemListView(title: titleType[index],),
                  separatorBuilder: (context, index) => SizedBox(width: 11.w,),
                  itemCount: titleType.length,),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const SuitablePlantsListViewItem() ,
                  separatorBuilder: (context, index) => SizedBox(height: 22.h,),
                  itemCount: 8,),
              )



            ],
          ),
        ),
      ),
    );
  }
}


