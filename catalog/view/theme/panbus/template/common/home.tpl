<?php echo $header; ?>
    <script type="text/javascript">
    var map;
    var image = '../image/catalog/other/marker.svg';
    $(document).ready(function(){
      map = new GMaps({
        el: '#map',
        lat:50.533368,
        lng: 25.462079,
        zoom:6
      });


      map.drawRoute({
        origin: [49.985236, 36.278953],
        // Харків
        waypoints: [
          { location: {lat: 49.6020233, lng: 34.4871993 },
            stopover:true
            // Полтава
          },
          { location: {lat: 50.4423678, lng: 30.4910745 },
            stopover:true
            // Київ
          },
          { location: {lat: 50.2678812, lng: 28.6386983 },
            stopover:true
            // Житомир
          },
          { location: {lat: 50.6149462, lng: 26.2809498 },
            stopover:true
            // Рівне
          },
          { location: {lat: 50.73977, lng: 25.2639656 },
            stopover:true
            // Луцьк
          },          
          { location: {lat: 51.2180881, lng: 22.493731 },
            stopover:true
            // Люблін
          },
          { location: {lat: 52.2296756, lng: 21.012228700000037 },
            stopover:true
            // Варшава
          },
          { location: {lat: 51.7730971, lng: 19.4105534 },
            stopover:true
            // Лодзь
          },
          { location: {lat: 52.223301, lng: 18.250695 },
            stopover:true
            // Конін
          },
          { location: {lat: 52.406374, lng: 16.925168100000064 },
            stopover:true
            // Познань
          },
          { location: {lat: 52.7325285, lng: 15.236930499999971},
            stopover:true
            // Гожув-Велькопольський
          },         

         ],
        strokeColor: '#cd4e37',
        strokeWeight: 3,
        destination: [53.4296143, 14.4845429],
        // Щецин
        travelMode: 'driving',

      });


      map.drawRoute({
        origin: [52.2296756, 21.012228700000037],
        // Варшава
        waypoints: [
          { location: {lat: 52.545826, lng: 19.709208 },
            stopover:true
            // Плоцьк
          },
          { location: {lat: 52.657013, lng: 19.058744 },
            stopover:true
            // Влоцлавек
          },
          { location: {lat: 53.0137902, lng: 18.59844369999996 },
            stopover:true
            // Торунь
          },
          { location: {lat: 53.12348040000001, lng: 18.008437800000024, },
            stopover:true
            // Бидгощ
          },
          { location: {lat: 54.35202520000001, lng: 18.64663840000003, },
            stopover:true
            // Гданськ
          },                   
         ],
        strokeColor: '#cd4e37',
        strokeWeight: 3,
        destination: [54.5188898, 18.530540900000005],
        // Гдиня
        travelMode: 'driving',

      });      


      map.drawRoute({
        origin: [49.233083, 28.468216900000016],
        // Вінниця
        waypoints: [
          { location: {lat: 49.422983, lng: 26.987133099999937 },
            stopover:true
            // Хмельницький
          },
          { location: {lat: 49.553517, lng: 25.594767000000047 },
            stopover:true
            // Тернопіль
          },
          { location: {lat: 49.839683, lng: 24.029717000000005 },
            stopover:true
            // Львів
          },
          { location: {lat: 50.06465009999999, lng: 19.94497990000002 },
            stopover:true
            // Краків
          },
          { location: {lat: 50.26489189999999, lng: 19.02378150000004 },
            stopover:true
            // Катовіце
          },          
          { location: {lat: 50.6751067, lng: 17.921297600000003 },
            stopover:true
            // Ополе
          },
          { location: {lat: 51.1078852, lng: 17.03853760000004 },
            stopover:true
            // Вроцлав
          },
          { location: {lat: 51.2070067, lng: 16.155323100000032 },
            stopover:true
            // Легниця
          },
          { location: {lat: 51.80344, lng: 15.717070000000035 },
            stopover:true
            // Нова Суль
          },
          { location: {lat: 51.9356214, lng: 15.506186200000002 },
            stopover:true
            // Зелена Гура
          }, 
          { location: {lat: 52.349131, lng: 14.561617 },
            stopover:true
            // Слубіце
          },
          { location: {lat: 52.586414, lng: 14.648613 },
            stopover:true
            // Костшин-над-Одрою
          },                          
         ],
        strokeColor: '#cd4e37',
        strokeWeight: 3,
        destination: [ 52.7325285, 15.236930499999971],
        // Гожув-Велькопольський
        travelMode: 'driving',

      });


      map.drawRoute({
        origin: [48.291640, 25.934947],
        // Чернівці
        waypoints: [
          { location: {lat: 48.446881, lng: 25.564217 },
            stopover:true
            // Снятин
          },
          { location: {lat: 48.526484, lng: 25.029698 },
            stopover:true
            // Коломия
          },
          { location: {lat: 48.919958, lng: 24.714260 },
            stopover:true
            // Івано Франк.
          },                                              
         ],
        strokeColor: '#cd4e37',
        strokeWeight: 3,
        destination: [49.553517, 25.594767000000047],
        // Тернопіль
        travelMode: 'driving',
        
      }); 


      map.drawRoute({
        origin: [51.7730971, 19.4105534],
        // Лодзь
        waypoints: [
          { location: {lat: 52.230618, lng: 19.364278000000013 },
            stopover:true
            // Кутно
          },                        
         ],
        strokeColor: '#cd4e37',
        strokeWeight: 3,
        destination: [52.223301, 18.250695],
        // Конін
        travelMode: 'driving',
        
      });  


      map.drawRoute({
        origin: [52.406374, 16.925168100000064],
        // Познань
        waypoints: [
          { location: {lat: 53.153498, lng: 16.745026 },
            stopover:true
            // Піла
          },                        
         ],
        strokeColor: '#cd4e37',
        strokeWeight: 3,
        destination: [53.4296143, 14.4845429],
        // Щецин
        travelMode: 'driving',
        
      });  









      map.addMarkers([
 
        {
          lat: 49.985236,
          lng: 36.278953,
          title: 'Харків',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
        },
        {
          lat: 49.6020233,
          lng: 34.4871993,
          title: 'Полтава',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
        },
        {
          lat: 50.4423678,
          lng: 30.4910745,
          title: 'Київ',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 50.2678812,
          lng: 28.6386983,
          title: 'Житомир',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 50.6149462,
          lng: 26.2809498,
          title: 'Рівне',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 50.73977,
          lng: 25.2639656,
          title: 'Луцьк',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 49.233083,
          lng: 28.468216900000016,
          title: 'Вінниця',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 49.422983,
          lng: 26.987133099999937,
          title: 'Хмельницький',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },          
        {
          lat: 49.553517,
          lng: 25.594767000000047,
          title: 'Тернопіль',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 49.839683,
          lng: 24.029717000000005,
          title: 'Львів',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 48.291640,
          lng: 25.934947,
          title: 'Чернівці',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            }, 
        {
          lat: 48.446881,
          lng: 25.564217,
          title: 'Снятин',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 48.526484,
          lng: 25.029698,
          title: 'Коломия',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 48.919958,
          lng: 24.714260,
          title: 'Івано-Франківськ',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 50.06465009999999,
          lng: 19.94497990000002,
          title: 'Краків',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 50.26489189999999,
          lng: 19.02378150000004,
          title: 'Катовіце',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 50.6751067,
          lng: 17.921297600000003,
          title: 'Ополе',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 51.1078852,
          lng: 17.03853760000004,
          title: 'Вроцлав',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 51.2070067,
          lng: 16.155323100000032,
          title: 'Легниця',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 51.80344,
          lng: 15.717070000000035,
          title: 'Нова Суль',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 51.9356214,
          lng: 15.506186200000002,
          title: 'Зелена Гура',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 52.349131,
          lng: 14.561617,
          title: 'Слубіце',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 52.586414,
          lng: 14.648613,
          title: 'Костшин-над-Одрою',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },                                                 
        {
          lat: 51.2180881,
          lng: 22.493731,
          title: 'Люблін',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },          
        {
          lat: 52.2296756,
          lng: 21.012228700000037,
          title: 'Варшава',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 52.545826,
          lng: 19.709208,
          title: 'Плоцьк',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 52.657013,
          lng: 19.058744,
          title: 'Влоцлавек',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 53.0137902,
          lng: 18.59844369999996,
          title: 'Торунь',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 53.12348040000001,
          lng: 18.008437800000024,
          title: 'Бидгощ',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 54.35202520000001,
          lng: 18.64663840000003,
          title: 'Гданськ',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 54.5188898,
          lng: 18.530540900000005,
          title: 'Гдиня',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },                                          
        {
          lat: 51.7592485,
          lng: 19.45598330000007,
          title: 'Лодзь',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 52.406374,
          lng: 16.925168100000064,
          title: 'Познань',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            }, 
        {
          lat: 52.7325285,
          lng: 15.236930499999971,
          title: 'Гожув-Велькопольський',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 53.4285438,
          lng: 14.552811600000041,
          title: 'Щецин',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },
        {
          lat: 52.230618,
          lng: 19.364278000000013,
          title: 'Кутно',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },             
        {
          lat: 52.223301,
          lng: 18.250695,
          title: 'Конін',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },  
        {
          lat: 53.153498,
          lng: 16.745026,
          title: 'Піла',
          icon: {
                url: "/image/catalog/other/marker.svg",
                size: new google.maps.Size(48, 48),
                scaledSize: new google.maps.Size(48, 48)
              },
            },  

      ]);

    });
  </script>
    <div id="map"></div>
<div class="container">
  <div class="row">
    <div id="content">
    <div class="choice-block-inmain">
      <div class="choice-block-inmain__title">Чому варто обрати саме нас:</div>
      <div class="choice-block-inmain__box">
        <a class="choice-block-inmain__text" href="/жодної-націнки-на-квитки">Жодної<br> націнки<br> на квитки</a>
      </div>
      <div class="choice-block-inmain__box">
        <a class="choice-block-inmain__text" href="/безкоштовне-швидке-бронювання">Безкоштовне<br> швидке<br> бронювання</a>
      </div>
      <div class="choice-block-inmain__box">
        <a class="choice-block-inmain__text" href="/щоденні-регулярні-рейси">Щоденні<br> регулярні<br> рейси</a>
      </div>      
      <div class="choice-block-inmain__box">
        <a class="choice-block-inmain__text" href="/постійна-система-знижок">Постійна<br> система<br> знижок</a>
      </div>
    </div>
    <?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>