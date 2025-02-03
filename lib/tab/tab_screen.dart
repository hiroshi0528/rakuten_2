import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/tabMore/more_screen.dart';
import 'package:rakuten_2/tabSearch/search_screen.dart';
import 'package:rakuten_2/tabShopping/screen/shopping_cart_screen.dart';
import 'package:rakuten_2/tab_history/browsing_history_screen.dart';
import 'package:rakuten_2/enum/tab_type.dart';
import 'package:rakuten_2/home/view/home/home_screen.dart';
import 'package:rakuten_2/tabFavorite/screen/favorites_screen.dart';

class TabNotifier extends StateNotifier<TabType> {
  TabNotifier() : super(TabType.home);

  void setTab(TabType tab) {
    state = tab;
  }
}

final tabNotifierProvider =
    StateNotifierProvider<TabNotifier, TabType>((ref) => TabNotifier());

class TabScreen extends ConsumerWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(tabNotifierProvider);
    final tabNotifier = ref.read(tabNotifierProvider.notifier);

    final List<Widget> pages = [
      const HomeScreen(),
      const SearchScreen(),
      const FavoritesScreen(),
      ShoppingCartScreen(),
      const PurchaseHistoryScreen(),
      const MoreScreen(),
    ];

    return Scaffold(
      appBar: null,
      body: IndexedStack(
        index: TabType.values.indexOf(currentTab),
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBarTheme(
        data: BottomNavigationBarThemeData(
          selectedLabelStyle:
              TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 10),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: TabType.values.indexOf(currentTab),
          items: TabType.values.map((tab) {
            return BottomNavigationBarItem(
              icon: tab.iconWidget,
              label: tab.label,
            );
          }).toList(),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            tabNotifier.setTab(TabType.values[index]);
          },
        ),
      ),
    );
  }
}
