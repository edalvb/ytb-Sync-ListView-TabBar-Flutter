import 'package:flutter/material.dart';
import 'package:ytb_sync_list_view_tabbar/rappi_concept/rappi_data.dart';

const categoryHight = 55.0;
const productHight = 110.0;

class RappiBLoC with ChangeNotifier {
  List<RappiTabCategory> tabs = [];
  List<RappiItem> items = [];
  late TabController tabController;
  ScrollController scrollController = ScrollController();
  bool _listen = true;

  void init(TickerProvider vsync) {
    tabController = TabController(vsync: vsync, length: rappiCategories.length);
    double offsetFrom = 0.0;
    double offsetTo = 0.0;

    for (int i = 0; i < rappiCategories.length; i++) {
      final category = rappiCategories[i];

      if (i > 0) {
        offsetFrom += rappiCategories[i - 1].products.length * productHight +
            categoryHight * i;
      }

      if (i < rappiCategories.length - 1) {
        offsetTo += rappiCategories[i + 1].products.length * productHight +
            categoryHight * i;
      } else {
        offsetTo = double.infinity;
      }

      tabs.add(
        RappiTabCategory(
          category: category,
          selected: i == 0,
          offsetFrom: categoryHight * i + offsetFrom,
          // offsetTo: categoryHight * (i + 1) + offsetFrom,
          offsetTo: offsetTo,
        ),
      );

      items.add(RappiItem(category: category));

      for (int j = 0; j < category.products.length; j++) {
        final product = category.products[j];
        items.add(RappiItem(product: product));
      }
    }

    scrollController.addListener(_onScrollListener);
  }

  void _onScrollListener() {
    if (_listen) {
      for (int i = 0; i < tabs.length; i++) {
        final tab = tabs[i];

        if (scrollController.offset >= tab.offsetFrom &&
            scrollController.offset <= tab.offsetTo &&
            !tab.selected) {
          onTabTap(i, animate: false);

          tabController.animateTo(i);

          break;
        }
      }
    }
  }

  onTabTap(int index, {bool animate = true}) async {
    final catSelected = tabs[index];
    for (int i = 0; i < tabs.length; i++) {
      tabs[i] =
          tabs[i].copyWith(catSelected.category.name == tabs[i].category.name);
    }

    notifyListeners();

    if (animate) {
      _listen = false;

      await scrollController.animateTo(
        catSelected.offsetFrom,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );

      _listen = true;
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScrollListener);
    scrollController.dispose();

    tabController.dispose();
    super.dispose();
  }
}

class RappiTabCategory {
  const RappiTabCategory({
    required this.category,
    required this.selected,
    required this.offsetFrom,
    required this.offsetTo,
  });

  RappiTabCategory copyWith(bool selected) => RappiTabCategory(
        category: category,
        selected: selected,
        offsetFrom: offsetFrom,
        offsetTo: offsetTo,
      );

  final RappiCategory category;
  final bool selected;
  final double offsetFrom;
  final double offsetTo;
}

class RappiItem {
  RappiItem({this.category, this.product});

  final RappiCategory? category;
  final RappiProduct? product;

  bool get isCategory => category != null;
}
