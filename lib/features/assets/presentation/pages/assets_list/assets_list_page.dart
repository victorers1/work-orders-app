import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/common/presentation/widgets/loading_widget.dart';
import 'package:work_orders_app/features/assets/presentation/pages/assets_list/assets_list_controller.dart';
import 'package:work_orders_app/features/assets/presentation/widgets/asset_widget.dart';

class AssetsListPage extends StatelessWidget {
  static const String routeId = '/assets-list-page';
  const AssetsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssetsListController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(title: const Text('Assets')),
        body: controller.isLoadingAssets
            ? const LoadingWidget()
            : ListView.separated(
                itemCount: controller.assets.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) => AssetWidget(
                  asset: controller.assets[index],
                ),
              ),
      ),
    );
  }
}
