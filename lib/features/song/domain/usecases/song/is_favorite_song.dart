import 'package:spotify/core/usecase/usecase.dart';
import '../../../../../core/di/service_locator.dart';
import '../../repository/song/song.dart';

class IsFavoriteSongUseCase implements UseCase<bool,String> {
  @override
  Future<bool> call({String ? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }

  
}