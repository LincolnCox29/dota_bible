AbilityAttribute mapToAbilityAttribute(Map<String, dynamic> map) 
  => AbilityAttribute(
    header: map['header'],
    value: map['value']
  );

class AbilityAttribute {
  
  final String header;
  final dynamic value;

  const AbilityAttribute({required this.header, required this.value});

  @override
  String toString() => '$header $value';
}