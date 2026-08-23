import 'package:flutter_test/flutter_test.dart';

import 'package:clonar_instagram/main.dart';

void main() {
  testWidgets('La app carga la pantalla de perfil', (WidgetTester tester) async {
    await tester.pumpWidget(const InstagramCloneApp());

    expect(find.text('Instagram'), findsOneWidget);
  });
}