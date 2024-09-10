import 'dart:io';

import 'package:s3_storage/s3_storage.dart';

void main() async {
  final s3storage = S3Storage(
    endPoint: 'https://storage.gscdn.com/',
    signingType: SigningType.V2,
    accessKey: '15d3bf835c30463792dfbf266e40f581',
    secretKey: '167aed26a6c04c2bbeef8c5bdefed86b',
  );

  print(await s3storage.putObject('hunetdown/Resources/GrowB2B', '${DateTime.now().toIso8601String()}.png',
      File('example/custed.png').readAsBytes().asStream(),
      metadata: {'test': 'works'}));
}
