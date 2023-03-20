import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/images/landscape.jpg'),
          ),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
            child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Curabitur ac sem quam. Vestibulum et felis nec risus '
                'bibendum suscipit ut non augue. Proin nec aliquet nulla. '
                'Morbi vestibulum porta malesuada. Maecenas eget nisl euismod'
                ' est lobortis tempus ut non nibh. Suspendisse pulvinar velit'
                ' sed sagittis condimentum. Sed aliquet ut libero at tempor.'
                ' Aliquam vel consectetur purus. Suspendisse malesuada velit'
                ' ut ipsum suscipit, a dictum mauris fermentum. Aliquam ac'
                ' sem in quam finibus laoreet. Duis ut hendrerit purus. Donec'
                ' dolor ligula, imperdiet et tincidunt et, tempor at eros.'
                ' Donec nulla augue, lacinia a erat non, vehicula posuere'
                ' elit. In hac habitasse platea dictumst. Suspendisse enim'
                ' lacus, tempor a hendrerit quis, ullamcorper eu nunc. Nullam'
                ' et lectus tortor.', textAlign: TextAlign.justify,),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Lago Santo de Arimaguada',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Fataga, Gran Canaria',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.route,
            text: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(text,
            style: const TextStyle(
              color: Colors.blue,
            )),
      ],
    );
  }
}
