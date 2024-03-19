void main(){
  //модификаторы доступа => key words (var, dynamic, final. const)

  //const это инициализация во время компиляции
  const a = 10;
  //final это инициализация во время выполнения прошраммы
  final b = 20;
  //var нвходит тип автоматически
  var c = "Берет только string";
  //dynamic берет все типы
  dynamic s = "берет все типы работая динамично";
  print(a);
}