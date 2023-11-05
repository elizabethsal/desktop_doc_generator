import 'package:pdf/widgets.dart' as pw;
abstract class PdfConverterInterface {
 Future<List<pw.Widget>> getListPDFWidgets();
}