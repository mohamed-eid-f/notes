import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final String? id;
  final String title;
  final String content;
  final String createdDate;
  final int color;

  const Note(
      {this.id,
      required this.title,
      required this.content,
      required this.createdDate,
      required this.color});

  @override
  List<Object?> get props => [id, title, content, createdDate, color];
}
