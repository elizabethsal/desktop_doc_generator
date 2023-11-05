import 'dart:io';

abstract class PdfConverterInterface {
  Future<File> getPdf();
}