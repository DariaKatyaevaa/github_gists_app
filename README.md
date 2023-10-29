# Github gists app

----

### Превью:

<img src="/preview/1.png" width="30%"> <img src="/preview/2.png" width="30%"> <img src="/preview/3.png" width="30%">
<img src="/preview/4.png" width="30%"> <img src="/preview/5.png" width="30%"> <img src="/preview/6.png" width="30%">

<br/>
----

### Описание:

* State Management: Cubit (BLoC)
* работа с API: Dio, Freezed
* кэширование изображений: extended_image
* pull to reload с помощью RefreshIndicator
* пагинация: реализовано с помощью scrollController listener, который при скролле до
  maxScrollExtent, вызывает загрузку новой страницы гистов
* смена темы с помощью BlocProvider, конфигурация темы сохраняется локально с помощью
  SharedPreferences
* DI: GetIt
* тесты: bloc_test и mockito
* анимация: flutter_animate

----

### Требования:

#### Первый экран - GIST LIST:

- [x] UI: аватар пользователя, название гиста, имя пользователя
- [x] Пагинация
- [x] Pull to reload

#### Второй экран - GIST INFO:

- UI:
    - [x] Аватар пользователя, название гиста, имя пользователя
    - [x] Список файлов, c отображением каждого файла, <= 5 строк
    - [x] Список коммитов
    - [x] При нажатии на файл, отображается полный файл
- [x] Пагинация
- [x] Pull to reload

#### Третий экран - GIST FILE:

- [x] Вывести содержимое файла
- [x] Работа в обычном и DarkMode
