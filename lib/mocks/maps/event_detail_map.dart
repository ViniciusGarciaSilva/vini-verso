import 'package:vini_verso/modules/event_detail/data/models/artist_model.dart';
import 'package:vini_verso/modules/event_detail/data/models/crew_model.dart';
import 'package:vini_verso/modules/event_detail/data/models/event_model.dart';
import 'package:vini_verso/shared/utils/date_utils.dart';

const Map<String, dynamic> eventDetailMap = {
  'id': '1',
  'name': 'PsyFly - O Mundo dos Sonhos',
  'image_url': 'https://psytrancebr.com/wp-content/uploads/2020/03/psy-fly-mundo-dos-sonhos.jpg',
  'start_date': '14/03/2020 16:00',
  'end_date': '15/03/2020 19:00',
  'place': 'Palácio Sunset',
  'zone': 'SP - São José dos Campos',
  'artists': [
    {'name': 'Neelix', 'nationality': 'DE'},
    {'name': 'Fabio Fusco', 'nationality': 'DE'},
    {'name': 'Billx', 'nationality': 'FR'},
    {'name': 'Ghost Rider', 'nationality': 'IL'},
    {'name': 'Sonic Entity', 'nationality': 'RS'},
    {'name': 'Whiptongue', 'nationality': 'BR'},
    {'name': 'Sajanka', 'nationality': 'IL'},
    {'name': 'Audiomatic', 'nationality': 'DE'},
    {'name': 'Imaginarium', 'nationality': 'RS'},
    {'name': 'WhiteNo1se', 'nationality': 'IL'},
    {'name': 'Avan7', 'nationality': 'BR'},
    {'name': 'Vermont', 'nationality': 'BR'},
    {'name': 'Blazy', 'nationality': 'BR'},
    {'name': 'Psychological', 'nationality': 'BR'},
    {'name': 'FnX', 'nationality': 'BR'},
    {'name': 'Reality Test', 'nationality': 'IL'},
    {'name': 'Pharmacy Kids Story', 'nationality': 'PT'},
    {'name': 'Raz', 'nationality': 'IL'},
    {'name': 'Special M', 'nationality': 'BR'},
    {'name': 'Nirix', 'nationality': 'IL'},
    {'name': 'Rowdy', 'nationality': 'BR'},
    {'name': 'Acquavitta', 'nationality': 'BR'},
    {'name': 'Specter vs Oddyzeira', 'nationality': 'BR'},
    {'name': 'Babalos', 'nationality': 'CH'}
  ],
  'capacity': 10000,
  'interested': 17849,
  'confirmed': 12743,
  'min_price': 100.00,
  'max_price': 200.00,
  'tickets_url': 'https://www.ticketsforfun.com.br/',
  'crew': {
    'name': 'PsyFly',
    'image':
        'https://scontent.fcgh3-1.fna.fbcdn.net/v/t1.6435-9/92773386_1115110582187191_4179017249320861696_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHyMCszLxm7-78M_X_SDin6lCWxpJHLxAiUJbGkkcvECE4ZvI7vrXOUlC29KXp-5bGxt2blfisg6CQbXHX9JrFt&_nc_ohc=h3qFwzyTyC0AX-WPOJ0&_nc_ht=scontent.fcgh3-1.fna&oh=00_AT8iweHQxfJa4OpPiKRqJQoX8q4hCxCpY8Dp6oYbwP9Row&oe=6293DF52',
    'rating': 5.0
  },
  'description':
      'O mundo está nas mãos daqueles que tem coragem de sonhar e de correr o risco de viver seus sonhos.\nSonhar com o impossível é o primeiro passo para torná-lo possível.\nSeja qual for o seu sonho, comece!\nOusadia tem genialidade, poder e magia!\nSejam bem-vindos ao MUNDO DOS SONHOS.\nSejam bem-vindos à PsyFly ♥️\nIngressos Online: blacktag.com.br/eventos/4314/psyfly-o-mundo-dos-sonhos\nTema para perfil: www.facebook.com/profilepicframes/?selected_overlay_id=458036511742828',
  'line_up_url': ''
};

EventModel get eventDetailEntity => EventModel(
      id: '1',
      name: 'PsyFly - O Mundo dos Sonhos',
      imageUrl: 'https://psytrancebr.com/wp-content/uploads/2020/03/psy-fly-mundo-dos-sonhos.jpg',
      startDate: dateFormatter('14/03/2020 16:00'),
      endDate: dateFormatter('15/03/2020 19:00'),
      place: 'Palácio Sunset',
      zone: 'SP - São José dos Campos',
      artists: [
        ArtistModel(
          name: 'Neelix',
          nationality: 'DE',
        ),
        ArtistModel(
          name: 'Fabio Fusco',
          nationality: 'DE',
        ),
        ArtistModel(
          name: 'Billx',
          nationality: 'FR',
        ),
        ArtistModel(
          name: 'Ghost Rider',
          nationality: 'IL',
        ),
        ArtistModel(
          name: 'Sonic Entity',
          nationality: 'RS',
        ),
        ArtistModel(
          name: 'Whiptongue',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Sajanka',
          nationality: 'IL',
        ),
        ArtistModel(
          name: 'Audiomatic',
          nationality: 'DE',
        ),
        ArtistModel(
          name: 'Imaginarium',
          nationality: 'RS',
        ),
        ArtistModel(
          name: 'WhiteNo1se',
          nationality: 'IL',
        ),
        ArtistModel(
          name: 'Avan7',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Vermont',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Blazy',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Psychological',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'FnX',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Reality Test',
          nationality: 'IL',
        ),
        ArtistModel(
          name: 'Pharmacy Kids Story',
          nationality: 'PT',
        ),
        ArtistModel(
          name: 'Raz',
          nationality: 'IL',
        ),
        ArtistModel(
          name: 'Special M',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Nirix',
          nationality: 'IL',
        ),
        ArtistModel(
          name: 'Rowdy',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Acquavitta',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Specter vs Oddyzeira',
          nationality: 'BR',
        ),
        ArtistModel(
          name: 'Babalos',
          nationality: 'CH',
        ),
      ],
      capacity: 10000,
      interested: 17849,
      confirmed: 12743,
      minPrice: 100,
      maxPrice: 200,
      ticketsUrl: 'https://www.ticketsforfun.com.br/',
      crew: CrewModel(
        name: 'PsyFly',
        image:
            'https://scontent.fcgh3-1.fna.fbcdn.net/v/t1.6435-9/92773386_1115110582187191_4179017249320861696_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHyMCszLxm7-78M_X_SDin6lCWxpJHLxAiUJbGkkcvECE4ZvI7vrXOUlC29KXp-5bGxt2blfisg6CQbXHX9JrFt&_nc_ohc=h3qFwzyTyC0AX-WPOJ0&_nc_ht=scontent.fcgh3-1.fna&oh=00_AT8iweHQxfJa4OpPiKRqJQoX8q4hCxCpY8Dp6oYbwP9Row&oe=6293DF52',
        rating: 5,
      ),
      description:
          'O mundo está nas mãos daqueles que tem coragem de sonhar e de correr o risco de viver seus sonhos.\nSonhar com o impossível é o primeiro passo para torná-lo possível.\nSeja qual for o seu sonho, comece!\nOusadia tem genialidade, poder e magia!\nSejam bem-vindos ao MUNDO DOS SONHOS.\nSejam bem-vindos à PsyFly ♥️\nIngressos Online: blacktag.com.br/eventos/4314/psyfly-o-mundo-dos-sonhos\nTema para perfil: www.facebook.com/profilepicframes/?selected_overlay_id=458036511742828',
      lineUpUrl: '',
    );
