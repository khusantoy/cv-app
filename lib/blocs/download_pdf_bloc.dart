import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

part 'download_pdf_states.dart';
part 'download_pdf_events.dart';

class DownloadPdfBloc extends Bloc<PDFEvent, DownloadPdfState> {
  DownloadPdfBloc() : super(InitialPdfState()) {
    on<DownloadPdfEvent>(_onDownloadPdf);
  }

  final _dio = Dio();

  void _onDownloadPdf(
      DownloadPdfEvent event, Emitter<DownloadPdfState> emit) async {
    emit(LoadingPdfState());
    await Future.delayed(const Duration(seconds: 3));
    final savePath = await _getSavePath();
    _dio.download(
        'https://file.notion.so/f/f/b695eb9f-0486-4c2a-be97-942efea34149/3c8b3c7f-c2e0-4748-ac27-cac5926ee4ed/Xusanboy_Tursunov.pdf?table=block&id=a1cf1aed-5719-4125-9201-429442126869&spaceId=b695eb9f-0486-4c2a-be97-942efea34149&expirationTimestamp=1722614400000&signature=NpXwpi31xaIuHZJWayQSsgZioO-41nuB4BCop9BtLyc&downloadName=Xusanboy_Tursunov.pdf',
        savePath);
    emit(LoadedPdfState());
  }
}

Future<String> _getSavePath() async {
  Directory? savePath = await getApplicationDocumentsDirectory();

  if (Platform.isAndroid) {
    savePath = Directory("/storage/emulated/0/download");
  }
  final fullPath = "${savePath.path}/xusanboy's_resume2.pdf";
  return fullPath;
}
