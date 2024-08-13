part of 'heroPage.dart';

String capitalize(String name) => '${name[0].toUpperCase()}${name.substring(1)}';

class AttributeStatsWidget extends StatelessWidget{

  final String attribute;
  final double gain;
  final int base;

  const AttributeStatsWidget(
    {required this.attribute, required this.gain, required this.base, }
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children : [
        Image.asset(
          'assets/img/attribute/${attribute}_attribute_symbol.png',
          scale: 0.9,
          width: 70,
          height: 30,
        ),
        Row(
          children: [
            Text(base.toString()),
            Text(
              '+$gain',
              textScaler: const TextScaler.linear(0.8),
              style: const TextStyle(
                color: Colors.white60
              ),
            )
          ],
        )
      ]
    );
  }
}

Container labeleContainer(context, text){
  return Container(
    padding : const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge
    ),
  );
}

Row stat(text, icon){
  return Row(
    children: [
      const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
      Image.asset(icon),
      Text(text)
    ]
  );
}

DecoratedBox bar(value, List<Color> gradientColors){
  return DecoratedBox(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(225,15,76,117).withOpacity(.1),
          offset: const Offset(8, 8),
          blurRadius: 10,
          spreadRadius: 10
        )
      ]
    ),
    child : Container(
      width: 300,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        gradient: LinearGradient(
          colors : gradientColors,
          begin: Alignment.centerLeft,
          end : Alignment.centerRight,
        ),
        border: Border.all(
          width: 2,
          color: const Color.fromARGB(225,15,76,117)
        )
      ),
      child: Column(
        children : [
          value
        ]
      )
    )
  );
}