import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/all_expenses_card_model.dart';
import 'package:responsive_ui_final_project/core/model/item_drawer_model.dart';
import 'package:responsive_ui_final_project/core/model/pie_chart_model.dart';
import 'package:responsive_ui_final_project/core/model/transaction_item_model.dart';
import 'package:responsive_ui_final_project/core/model/user_info_model.dart';
import 'package:responsive_ui_final_project/core/utils/image_app.dart';

List<UserInfoModel> userInfo = [
  UserInfoModel(
      image: AssetsImageApp.imagesAvatar3,
      name: "Lekan Okeowo",
      email: "demo@gmail.com"),
  UserInfoModel(
      image: AssetsImageApp.imagesAvatar2,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail"),
  UserInfoModel(
      image: AssetsImageApp.imagesAvatar3,
      name: "Josua Nunito",
      email: "Josh Nunito@gmail.com"),
];
List<ItemDrawerModel> listItemDrawer = [
  ItemDrawerModel(
    icon: AssetsImageApp.imagesDashboard,
    title: "Dashboard",
  ),
  ItemDrawerModel(
    icon: AssetsImageApp.imagesMyTransctions,
    title: "My Transition",
  ),
  ItemDrawerModel(
    icon: AssetsImageApp.imagesStatistics,
    title: "Statistics",
  ),
  ItemDrawerModel(
    icon: AssetsImageApp.imagesWalletAccount,
    title: "Wallet Account",
  ),
  ItemDrawerModel(
    icon: AssetsImageApp.imagesMyInvestments,
    title: "My Investments",
  ),
];
List<AllExpensesCardModel> listAllExpensesCardInfo = [
  AllExpensesCardModel(
    type: "Balance",
    date: "April 2022",
    icon: AssetsImageApp.imagesBalance,
    balance: "\$20,129",
  ),
  AllExpensesCardModel(
    type: "Income",
    date: "April 2022",
    icon: AssetsImageApp.imagesIncome,
    balance: "\$20,129",
  ),
  AllExpensesCardModel(
    type: "Expenses",
    date: "April 2022",
    icon: AssetsImageApp.imagesExpenses,
    balance: "\$20,129",
  ),
];
List<TransactionItemModel> listTransactionItem = [
  TransactionItemModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      amount: "\$20,129",
      isWithdrawal: true),
  TransactionItemModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: "\$2,000",
      isWithdrawal: false),
  TransactionItemModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: "\$20,129",
      isWithdrawal: false),
];

List<PieChartModel> listPieChartItem = [
  PieChartModel(color: Color(0xff208CC8), value: 40, title: "Design service"),
  PieChartModel(color: Color(0xff4EB7F2), value: 25, title: "Design product"),
  PieChartModel(color: Color(0xff064061), value: 20, title: "Product royalti"),
  PieChartModel(color: Color(0xffE2DECD), value: 22, title: "Other"),
];
