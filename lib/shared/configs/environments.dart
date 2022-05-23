abstract class Environment {
  String get suffix;
  String get baseUrl;
}

class DevEnvironment implements Environment {
  @override
  String get baseUrl => 'https:mock';

  @override
  String get suffix => 'dev';
}

class HmgEnvironment implements Environment {
  @override
  String get baseUrl => 'https://viniverseapitest.azurewebsites.net/api/v1/';

  @override
  String get suffix => 'hmg';
}
