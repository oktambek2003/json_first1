class Person {
  final String name;
  final String username;
  final String country;
  final String city;
  final String picture;
  final String email;
  final String call;
  const Person(
      {required this.name,
      required this.username,
      required this.country,
      required this.city,
      required this.picture,
      required this.email,
      required this.call});
  factory Person.fromJsons(Map<String, dynamic> data) {
    return Person(
        name: data['name']['first'],
        username: data['login']['username'],
        city: data['location']['city'],
        country: data['location']['country'],
        picture: data['picture']['large'],
        email: data['email'],
        call: data["phone"]); 
  }
}
