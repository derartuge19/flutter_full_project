import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:thinktank_flutter/main.dart' as app;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
   
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  });

  group('End-to-end test', () {
    testWidgets('Complete user journey test', (tester) async {
    
      app.main();
      await tester.pumpAndSettle();


      expect(find.text('ThinkTank Inspire the world!'), findsOneWidget);
      expect(find.text('Login'), findsOneWidget);
      expect(find.text('Register'), findsOneWidget);

      await tester.tap(find.text('Register'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField).at(0), 'John'); 
      await tester.enterText(find.byType(TextFormField).at(1), 'Doe'); 
      await tester.enterText(find.byType(TextFormField).at(2), 'test@example.com'); 
      await tester.enterText(find.byType(TextFormField).at(3), 'password123'); 
      await tester.enterText(find.byType(TextFormField).at(4), 'password123'); 
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.text('Dashboard'), findsOneWidget);
      expect(find.byType(Drawer), findsOneWidget);

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Submit Idea'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField).at(0), 'Test Idea');
      await tester.enterText(find.byType(TextFormField).at(1), 'This is a test idea description');
      await tester.enterText(find.byType(TextFormField).at(2), 'test, idea');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

     
      expect(find.text('My Ideas'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.person));
      await tester.pumpAndSettle();

      expect(find.text('User Profile'), findsOneWidget);
      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('test@example.com'), findsOneWidget);

   
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Logout'));
      await tester.pumpAndSettle();

      expect(find.text('ThinkTank Inspire the world!'), findsOneWidget);
      expect(find.text('Login'), findsOneWidget);
      expect(find.text('Register'), findsOneWidget);

      await tester.tap(find.text('Login'));
      await tester.pumpAndSettle();

    
      await tester.enterText(find.byType(TextFormField).at(0), 'test@example.com');
      await tester.enterText(find.byType(TextFormField).at(1), 'password123');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.text('Dashboard'), findsOneWidget);
    });

    testWidgets('Admin journey test', (tester) async {
    
      app.main();
      await tester.pumpAndSettle();

      await tester.tap(find.text('Login'));
      await tester.pumpAndSettle();

      
      await tester.enterText(find.byType(TextFormField).at(0), 'admin@example.com');
      await tester.enterText(find.byType(TextFormField).at(1), 'admin123');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();


      expect(find.text('Dashboard'), findsOneWidget);

   
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Feedback Pool'));
      await tester.pumpAndSettle();

      // Verify feedback pool page
      expect(find.text('Feedback Pool'), findsOneWidget);
      expect(find.byIcon(Icons.rate_review), findsOneWidget);

      
      await tester.tap(find.byIcon(Icons.rate_review));
      await tester.pumpAndSettle();

      // Verify reviewed ideas page
      expect(find.text('Reviewed Ideas'), findsOneWidget);

      // Test logout
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Logout'));
      await tester.pumpAndSettle();

      // Verify return to landing page
      expect(find.text('ThinkTank Inspire the world!'), findsOneWidget);
    });
  });
} 
