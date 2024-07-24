enum Genre {
  fiction,
  nonfiction,
  periodical,
  biography,
  history,
  poetry,
  nobles,
  other
}

extension GetStringGenre on Genre {
  String get name {
    switch (this) {
      case Genre.fiction:
        return 'fiction';
      case Genre.nonfiction:
        return 'nonfiction';
      case Genre.periodical:
        return 'periodical';
      case Genre.biography:
        return 'biography';
      case Genre.history:
        return 'history';
      case Genre.poetry:
        return 'poetry';
      case Genre.nobles:
        return 'nobles';
      case Genre.other:
        return 'other';
    }
  }
}
