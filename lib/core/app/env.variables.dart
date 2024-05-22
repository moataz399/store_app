import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariable {
  EnvVariable._();

  static final EnvVariable instance = EnvVariable._();

  String _envType = '';
  String _notificationBaseUrl = '';

  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(
          fileName: '.env.dev',
        );
      case EnvTypeEnum.prod:
        await dotenv.load(
          fileName: '.env.prod',
        );

        _envType = dotenv.get('ENV_TYPE');
        _notificationBaseUrl = dotenv.get('NOTIFICATION_BASE_URL');
    }
  }

  bool get debugMode => _envType == 'env';
  String  get notificationBaseUrl  => _notificationBaseUrl ;
}
