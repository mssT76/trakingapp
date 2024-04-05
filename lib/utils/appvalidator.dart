class Appvalidator{
  String? isEmpty(value){
    if(value!.isEmpty){
      return 'Enter details';
    }
    return null;
  }
}