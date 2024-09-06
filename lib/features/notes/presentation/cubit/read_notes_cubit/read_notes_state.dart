part of 'read_notes_cubit.dart';

sealed class ReadNotesState extends Equatable {
  const ReadNotesState();

  @override
  List<Object> get props => [];
}

final class ReadNotesInitial extends ReadNotesState {}

final class ReadNotesSuccess extends ReadNotesState {}
