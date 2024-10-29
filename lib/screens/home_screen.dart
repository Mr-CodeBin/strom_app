import 'package:flutter/material.dart';
import 'package:strom_app/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).brightness == Brightness.light;
    const int? itemCount = 5;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            scrolledUnderElevation: 0,
            floating: false,
            pinned: false,
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: theme
                    ? AppTheme.lightTheme.primaryColor
                    : AppTheme.darkTheme.primaryColor,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color(0xffEDEFF3),
                  size: 20,
                ),
                onPressed: () {
                  // Handle menu action
                },
              ),
            ),
            backgroundColor: theme
                ? AppTheme.lightTheme.scaffoldBackgroundColor
                : AppTheme.darkTheme.scaffoldBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              centerTitle: true,
              title: Text(
                'Stromleser',
                style: TextStyle(
                  color:
                      theme ? const Color(0xff222529) : const Color(0xffF6F6F6),
                  letterSpacing: -1,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [
              Container(
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: theme
                      ? AppTheme.lightTheme.primaryColor
                      : AppTheme.darkTheme.primaryColor,
                ),
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  color: const Color(0xffEDEFF3),
                  iconSize: 20,
                  onPressed: () {
                    // Handle settings action
                  },
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: Transform.rotate(
                      angle: 3.14 / -8,
                      child: Image.asset(
                        'assets/images/strom_dev1.png',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: theme
                          ? AppTheme.lightTheme.primaryColor
                          : AppTheme.darkTheme.primaryColor,
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Text(
                          'Output',
                          style: TextStyle(
                            color: Color(0xff222529),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1,
                          ),
                        ),
                        Text(
                          '- -',
                          style: TextStyle(
                            color: Color(0xffEDEFF3),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: theme
                              ? AppTheme.lightTheme.primaryColor
                              : AppTheme.darkTheme.primaryColor,
                        ),
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            // Handle power on action
                          },
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.red.withOpacity(0.3),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/power_off.png',
                                width: 25,
                                height: 25,
                              ),
                              const Text(
                                'OFF',
                                style: TextStyle(
                                  color: Color(0xff222529),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: theme
                              ? AppTheme.lightTheme.primaryColor
                              : AppTheme.darkTheme.primaryColor,
                        ),
                        alignment: Alignment.topCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/timer.png',
                              width: 30,
                              height: 25,
                            ),
                            const Text(
                              'Set \nTimer',
                              style: TextStyle(
                                color: Color(0xff222529),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                height: 0.9,
                                letterSpacing: -1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 2,
                    color: Color(0xff222529),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Energy',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle date selection
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? AppTheme.lightTheme.primaryColor
                              : AppTheme.darkTheme.primaryColor,
                        ),
                        icon: const Icon(
                          Icons.calendar_today,
                          size: 15,
                          color: Color(0xffF6F6F6),
                        ),
                        label: const Text(
                          '2024-10-25',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffF6F6F6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Consumption',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff606164),
                    ),
                  ),
                  const Text(
                    '0',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          itemCount == null
              ? SliverToBoxAdapter(
                  child: Center(
                    child: Icon(
                      Icons.calendar_today,
                      size: 50,
                      color: theme
                          ? AppTheme.lightTheme.primaryColor
                          : AppTheme.darkTheme.primaryColor,
                    ),
                  ),
                )
              : SliverList.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.electrical_services,
                      ),
                      title: Text('Energy Reading $index'),
                      subtitle: const Text('Details of the reading'),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
