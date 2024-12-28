// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class bookAdapter extends TypeAdapter<book> {
  @override
  final int typeId = 1;

  @override
  book read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return book(
      book_name: fields[0] as String,
      book_description: fields[1] as String,
      price: fields[2] as int,
      book_author: fields[3] as String,
      genre: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, book obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.book_name)
      ..writeByte(1)
      ..write(obj.book_description)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.book_author)
      ..writeByte(4)
      ..write(obj.genre);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is bookAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
