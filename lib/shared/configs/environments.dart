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
  String get baseUrl => 'https://viniverso.herokuapp.com/';

  @override
  String get suffix => 'hmg';
}
