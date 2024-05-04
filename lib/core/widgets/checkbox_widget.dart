// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:cahrity_project/core/constants/colors.dart';
// import 'package:cahrity_project/core/constants/styles.dart';
// import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';

// class CheckboxWidget extends StatelessWidget {
//   const CheckboxWidget(
//       {super.key,
//       required this.onChanged,
//       required this.text,
//       required this.value,
//       required this.selectedTermId});
//   final void Function(bool?)? onChanged;
//   final String text;
//   final int selectedTermId;

//   final bool value;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(text,
//               style:
//                   AppTextStyles.regular16.copyWith(color: AppColors.darkgrey)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "accept".tr(),
//                 style: AppTextStyles.regular14,
//               ),
//               SizedBox(width: 2.w),
//               BlocBuilder<FormsBloc, FormsState>(
//                 builder: (context, state) {
//                   return state.mapOrNull(data: (data) {
//                         print('sss$selectedTermId  ${data.selectedTermId}');

//                         return data.loadingAgreeOnTermAndCondition == true &&
//                                 selectedTermId == data.selectedTermId
//                             ? SizedBox(
//                                 height: 20.h,
//                                 width: 20.w,
//                                 child: const Padding(
//                                   padding:
//                                       EdgeInsetsDirectional.only(start: 4.0),
//                                   child: CircularProgressIndicator(),
//                                 )).center()
//                             : Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                       5.0), // Border radius
//                                 ),
//                                 child: ClipRRect(
//                                   child: Checkbox(
//                                     value: value,
//                                     onChanged: onChanged,
//                                   ),
//                                 ),
//                               );
//                       }) ??
//                       const SizedBox();
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
