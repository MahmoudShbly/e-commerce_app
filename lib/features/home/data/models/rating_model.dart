class Rating {
  Rating({
    this.count = 0, 
    this.rate = 0.0,
    }
    );
  final int count;
  final double rate;

   Map<String, dynamic> toMap() {
    return {
      'count': count,
      'rate': rate,
    };
  }

  factory Rating.fromMap(Map<String, dynamic> map) {
    return Rating(
      count: map['count'] ?? 0,
      rate: (map['rate'] ?? 0).toDouble(),
    );
  }
}