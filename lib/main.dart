import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/splash.dart';
import 'screens/home.dart';
import 'screens/planner.dart';
import 'screens/profile.dart';
import 'screens/about.dart';
import 'screens/calorie_ai.dart';
import 'services/gemini_api.dart';
import 'utils/app_theme.dart';
import 'models/recipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppState()),
        ChangeNotifierProvider(create: (context) => TabNavigationState()),
      ],
      child: MaterialApp(
        title: 'FlavorLens',
        theme: AppTheme.themeData,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const MainNavigationScreen(initialIndex: 0),
          '/planner': (context) => const MainNavigationScreen(initialIndex: 1),
          '/calorie_ai':
              (context) => const MainNavigationScreen(initialIndex: 2),
          '/profile': (context) => const MainNavigationScreen(initialIndex: 3),
          '/about': (context) => const AboutScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  final int initialIndex;

  const MainNavigationScreen({super.key, this.initialIndex = 0});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen>
    with SingleTickerProviderStateMixin {
  late int _selectedIndex;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: _selectedIndex,
    );
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _selectedIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Listen to TabNavigationState changes
    final tabState = Provider.of<TabNavigationState>(context);
    if (_selectedIndex != tabState.currentIndex) {
      setState(() {
        _selectedIndex = tabState.currentIndex;
        _tabController.animateTo(_selectedIndex);
      });
    }
  }

  static const List<Widget> _screens = [
    HomeScreen(),
    PlannerScreen(),
    CalorieAIScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    final tabState = Provider.of<TabNavigationState>(context, listen: false);
    tabState.changeTab(index);

    setState(() {
      _selectedIndex = index;
      _tabController.animateTo(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(), // Disable swiping
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: AppTheme.primaryColor,
            unselectedItemColor: Colors.grey.shade400,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            elevation: 0,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu),
                activeIcon: Icon(Icons.restaurant_menu, size: 28),
                label: 'Recipes',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                activeIcon: Icon(Icons.calendar_month, size: 28),
                label: 'Planner',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.monitor_weight, color: Colors.grey.shade400),
                    Container(
                      width: 44,
                      height: 3,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color:
                            _selectedIndex == 2
                                ? AppTheme.primaryColor
                                : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                activeIcon: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(
                      Icons.monitor_weight,
                      size: 28,
                      color: AppTheme.primaryColor,
                    ),
                    Container(
                      width: 44,
                      height: 3,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                label: 'CalorieAI',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.person, color: Colors.grey.shade400),
                    Container(
                      width: 44,
                      height: 3,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color:
                            _selectedIndex == 3
                                ? AppTheme.primaryColor
                                : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                activeIcon: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      size: 28,
                      color: AppTheme.primaryColor,
                    ),
                    Container(
                      width: 44,
                      height: 3,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                label: 'Profile',
              ),
            ],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

// Simple app state provider
class AppState extends ChangeNotifier {
  int _recipeCount = 0;
  Recipe? _selectedRecipe;

  int get recipeCount => _recipeCount;
  Recipe? get selectedRecipe => _selectedRecipe;

  void incrementRecipeCount() {
    _recipeCount++;
    notifyListeners();
  }

  void setSelectedRecipe(Recipe recipe) {
    _selectedRecipe = recipe;
    notifyListeners();
  }

  void clearSelectedRecipe() {
    _selectedRecipe = null;
    notifyListeners();
  }
}

// Tab navigation state provider
class TabNavigationState extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void changeTab(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
