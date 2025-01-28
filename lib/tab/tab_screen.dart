import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/%E3%81%8A%E6%B0%97%E3%81%AB%E5%85%A5%E3%82%8A/favorites_screen.dart';
import 'package:rakuten_2/%E3%82%82%E3%81%A3%E3%81%A8%E8%A6%8B%E3%82%8B/more_screen.dart';
import 'package:rakuten_2/%E6%8E%A2%E3%81%99/search_screen.dart';
import 'package:rakuten_2/%E8%B2%B7%E3%81%84%E7%89%A9%E3%81%8B%E3%81%94/screen/shopping_cart_screen.dart';
import 'package:rakuten_2/%E8%B3%BC%E5%85%A5%E5%B1%A5%E6%AD%B4/browsing_history_screen.dart';
import 'package:rakuten_2/enum/tab_type.dart';
import 'package:rakuten_2/home/home_screen.dart';

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
