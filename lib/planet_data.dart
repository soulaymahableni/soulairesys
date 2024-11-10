class Planet {
  final String name;
  final String image;
  final String description;
  final String distanceFromSun;
  final String composition;
  final String temperature;
  final String size; // Nouvelle attribut pour la taille
  final String moons; // Nouvelle attribut pour les lunes

  Planet({
    required this.name,
    required this.image,
    required this.description,
    required this.distanceFromSun,
    required this.composition,
    required this.temperature,
    required this.size,
    required this.moons,
  });
}

final List<Planet> planets = [
  Planet(
    name: "عطارد",
    image: "android/assets/img/mercure.jpg",
    description:
        "ومع أن عطارد هو أقرب كوكب إلى الشمس إلا أنّه ليس الأكثر سخونة، هذا اللقب يُطلق على كوكب الزهرة. ويدور عطارد ببطء مقارنة بالأرض، حيث يستغرق 59 يومًا من أيام الأرض لإجراء دورة كاملة واحدة. لكن السنة تمُر سريعًا على عطارد لأنه أقرب كوكب إلى الشمس حيث يدور حول الشمس في 88 يومًا فقط من أيام الأرض",
    distanceFromSun: "57.91 مليون كيلومتر",
    composition: "Silex, fer, nickel",
    temperature: "430°C (jour), -180°C (nuit)",
    size: "4,879 km",
    moons: "0",
  ),
  Planet(
    name: "الزهرة",
    image: "android/assets/img/Venus.jpg",
    description:
        "  وكب الزُهرة هو ثاني كواكب المجموعة الشمسية وهو كوكب ترابي كعطارد والمريخ وشبيه بكوكب الأرض من حيث الحجم والتركيب وتعود تسميته بهذا الاسم إلى سطوعه ورؤيته من الكرة الأرضية وذلك لانعكاس كَمّيَّة كبيرة من ضوء الشمس عنه بسبب كثافة غلافه الجوي.",
    distanceFromSun: "108.2 مليون كيلومتر",
    composition: "Dioxyde de carbone, azote",
    temperature: "465°C",
    size: "12,104 km",
    moons: "0",
  ),
  Planet(
    name: "الأرض",
    image: "android/assets/img/terre.webp",
    description:
        "  وتمتاز الكرة الأرضية عن سائر الكواكب في مجموعتنا الشمسية بمميزات عديدة، منها وفرة الأكسجين في الغلاف الجوي والمياه السائلة على سطحه، وكلاهما من أهم مقومات الحياة. ولهذا ليس من المستغرب أن تكون الكرة الأرضية هي الكوكب الوحيد الذي يؤوي كائنات حية.كرة الأرضية هي خامس أكبر الكواكب في مجموعتنا الشمسية، وثالث أبعد الكواكب عن الشمس. إذ تبعد الأرض عن الشمس 150 مليون كيلومتر ",
    distanceFromSun: "149.6 مليون كيلومتر",
    composition: "Silicium, fer, oxygène",
    temperature: "15°C",
    size: "12,742 km",
    moons: "1 (القمر)",
  ),
  Planet(
    name: "المريخ",
    image: "android/assets/img/mars.jpg",
    description:
        "وهو رابع كوكب في الترتيب من حيث البعد عن الشمس. وهو كوكب صحراوي يمتاز ببرودته الشديدة وجوه المغبر، كما أن غلافه الجوي رقيق للغاية ",
    distanceFromSun: "227.9 مليون كيلومتر",
    composition: "حديد، أكسيد الحديد",
    temperature: "-60°C",
    size: "6,779 km",
    moons: "2 (فوبوس، ديموس)",
  ),
  Planet(
    name: "المشتري",
    image: "android/assets/img/jupiter.webp",
    description:
        " تسمية كوكب المشترى باسمه المُشْتَرِي هو أضخم كواكب المجموعة الشمسية سمي بالمشتري لأنه يستشري في سيره أي يلـجُّ ويمضي ويَـجِدُّ فيه بلا فتور ولا انكسار",
    distanceFromSun: "778.5 مليون كيلومتر",
    composition: "هيدروجين، هيليوم",
    temperature: "-108°C",
    size: "139,820 km",
    moons: "79",
  ),
  Planet(
    name: "زحل",
    image: "android/assets/img/zou7al.jpg",
    description:
        "     هو سادس كوكب بُعدًا عن الشمس وثاني أكبر كوكب في المجموعة الشمسية بعد كوكب المشتري، وهو كوكب عملاق غازي يتكون من الهيدروجين وليس له سطح صُلْب، ويبلغ متوسط نصف قطره حوالي تسعة أضعاف ونصف قطر الأرض، أكثر ما يميز كوكب زُحل حلقاته البارزة، والتي تتكون من جزيئات الجليد الممزوجة بكمية من الصخور المحطمة والغبار، يُعرف زُحل بأقماره الكثيرة فله على الأقل 82 قمراً تدور حوله تم تسمية 53 منها، ويعد تيتان من أكبر أقمار زُحل وثاني أكبر قمر في النظام الشمسي، وأكبر من كوكب عطارد وهو القمر الوحيد في النظام الشمسي الذي يتمتع بغلاف جوي كبير. يحيط بزُحل غلاف جوي هائل أو طبقة غازات كثيفة محيطة به مع أنماط طقس معقدة.",
    distanceFromSun: "1.43 مليار كيلومتر",
    composition: "هيدروجين، هيليوم",
    temperature: "-139°C",
    size: "116,460 km",
    moons: "82",
  ),
  Planet(
    name: "أورانوس",
    image: "android/assets/img/uranus.jpg",
    description: "كوكب بارد ويمتلك حلقات رائعة",
    distanceFromSun: "2.87 مليار كيلومتر",
    composition: "هيدروجين، هيليوم، ماء",
    temperature: "-224°C",
    size: "50,724 km",
    moons: "27",
  ),
  Planet(
    name: "نبتون",
    image: "android/assets/img/neptune.jpg",
    description:
        "  في دراسة حديثة عن لون الكوكب الثامن في مجموعة الشمسية، أظهرت الدراسة أن اللون الحقيقي لكوكب نبتون أزرق مخضر، وهو أقرب إلى نظيره العملاق الجليدي أورانوس، وذلك خلافا للاعتقاد السائد اليوم بأن لونه هو الأزرق الياقوتي  ",
    distanceFromSun: "4.5 مليار كيلومتر",
    composition: "هيدروجين، هيليوم، ميثان",
    temperature: "-218°C",
    size: "49,244 km",
    moons: "14",
  ),
  Planet(
    name: "بلوتو",
    image: "android/assets/img/bloutou.jpg",
    description: "كوكب قزم في حافة النظام الشمسي",
    distanceFromSun: "5.9 مليار كيلومتر",
    composition: "ماء، نيتروجين، ميثان",
    temperature: "-229°C",
    size: "2,377 km",
    moons: "5",
  ),
];
