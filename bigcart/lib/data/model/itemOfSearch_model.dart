// ignore_for_file: file_names

class Itemofsearch {
  final String? title;
  final String? suptitle;
  final String? image;
  final bool? isFavorite;
  final Function(int index)? onTap;
  Itemofsearch( {
    this.title,
    this.suptitle,
    this.image,
    this.onTap,
    this.isFavorite,
  });
}
