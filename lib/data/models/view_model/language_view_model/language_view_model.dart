import 'package:equatable/equatable.dart';

class LanguageViewModel extends Equatable {
  final String name;
  final String image;
  final String languageCode;

  const LanguageViewModel(
      {required this.name, required this.image, required this.languageCode});

  @override
  List<Object?> get props => ([name, image, languageCode]);
}
