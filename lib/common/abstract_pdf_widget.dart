import 'package:pdf/widgets.dart' as pw;
abstract class AbstractPdfWidget {
  Future<pw.Widget> getPwWidget();
}