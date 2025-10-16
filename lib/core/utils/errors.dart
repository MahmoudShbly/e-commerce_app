class Failures{
  Failures(  this.errorMassage,);
  final String errorMassage;
}
class ServerFailure extends Failures{
  ServerFailure( super.errorMassage);
  
}