import 'package:cloud_firestore/cloud_firestore.dart';

class Person {
  Person({
    //personal info
    this.imageProfile,
    this.email,
    this.password,
    this.name,
    this.age,
    this.phoneNo,
    this.city,
    this.country,
    this.profileHeading,
    this.lookingForInaPartner,
    this.publishedDateTime,

    //Appearance
    this.height,
    this.weight,
    this.bodyType,

    //Life style
    this.drink,
    this.smoke,
    this.martialStatus,
    this.haveChildren,
    this.noOfChildren,
    this.profession,
    this.employmentStatus,
    this.income,
    this.livingSituation,
    this.willingToRelocate,
    this.relationshipYouAreLookingFor,

    //Background - Cultural Values
    this.nationality,
    this.education,
    this.languageSpoken,
    this.religion,
    this.ethnicity,
  });

  //personal info
  String? imageProfile;
  String? email;
  String? password;
  String? name;
  int? age;
  String? phoneNo;
  String? city;
  String? country;
  String? profileHeading;
  String? lookingForInaPartner;
  int? publishedDateTime;

  //Appearance
  String? height;
  String? weight;
  String? bodyType;

  //Life style
  String? drink;
  String? smoke;
  String? martialStatus;
  String? haveChildren;
  String? noOfChildren;
  String? profession;
  String? employmentStatus;
  String? income;
  String? livingSituation;
  String? willingToRelocate;
  String? relationshipYouAreLookingFor;

  //Background - Cultural Values
  String? nationality;
  String? education;
  String? languageSpoken;
  String? religion;
  String? ethnicity;

  ///
  // ignore: prefer_constructors_over_static_methods
  static Person fromDataSnapshot(DocumentSnapshot snapshot) {
    final dataSnapshot = snapshot.data()! as Map<String, dynamic>;

    return Person(
      //personal info
      name: dataSnapshot['name'],
      imageProfile: dataSnapshot['imageProfile'],
      email: dataSnapshot['email'],
      password: dataSnapshot['password'],
      age: dataSnapshot['age'],
      phoneNo: dataSnapshot['phoneNo'],
      city: dataSnapshot['city'],
      country: dataSnapshot['country'],
      profileHeading: dataSnapshot['profileHeading'],
      lookingForInaPartner: dataSnapshot['lookingForInaPartner'],
      publishedDateTime: dataSnapshot['publishedDateTime'],

      //Appearance
      height: dataSnapshot['height'],
      weight: dataSnapshot['weight'],
      bodyType: dataSnapshot['bodyType'],

      //Life style
      drink: dataSnapshot['drink'],
      smoke: dataSnapshot['smoke'],
      martialStatus: dataSnapshot['martialStatus'],
      haveChildren: dataSnapshot['haveChildren'],
      noOfChildren: dataSnapshot['noOfChildren'],
      profession: dataSnapshot['profession'],
      employmentStatus: dataSnapshot['employmentStatus'],
      income: dataSnapshot['income'],
      livingSituation: dataSnapshot['livingSituation'],
      willingToRelocate: dataSnapshot['willingToRelocate'],
      relationshipYouAreLookingFor: dataSnapshot['relationshipYouAreLookingFor'],

      //Background - Cultural Values
      nationality: dataSnapshot['nationality'],
      education: dataSnapshot['education'],
      languageSpoken: dataSnapshot['languageSpoken'],
      religion: dataSnapshot['religion'],
      ethnicity: dataSnapshot['ethnicity'],
    );
  }

  Map<String, dynamic> toJson() => {
        //personal info
        'imageProfile': imageProfile,
        'email': email,
        'password': password,
        'name': name,
        'age': age,
        'phoneNo': phoneNo,
        'city': city,
        'country': country,
        'profileHeading': profileHeading,
        'lookingForInaPartner': lookingForInaPartner,
        'publishedDateTime': publishedDateTime,

        //Appearance
        'height': height,
        'weight': weight,
        'bodyType': bodyType,

        //Life style
        'drink': drink,
        'smoke': smoke,
        'martialStatus': martialStatus,
        'haveChildren': haveChildren,
        'noOfChildren': noOfChildren,
        'profession': profession,
        'employmentStatus': employmentStatus,
        'income': income,
        'livingSituation': livingSituation,
        'willingToRelocate': willingToRelocate,
        'relationshipYouAreLookingFor': relationshipYouAreLookingFor,

        //Background - Cultural Values
        'nationality': nationality,
        'education': education,
        'languageSpoken': languageSpoken,
        'religion': religion,
        'ethnicity': ethnicity,
      };
}
