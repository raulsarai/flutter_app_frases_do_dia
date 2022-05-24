import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "É sobre se colocar em primeiro lugar e não aceitar ser coadjuvante na própria vida 🦋✨",
    'A vida não tem replay, aproveite cada momento. ~ 🍀',
    'Seja amor, se deixe amar e se ame em primeiro lugar. ✨',
    'Em constante transformação e em busca constante de ser a minha melhor versão. 🦋',
    'Ser melhor do que fui ontem é o plano que a minha alma escreveu. 🌎',
    'Tudo depende da importância que você dá… ⚓',
    'Faça do seu sorriso um próprio raio de sol: ilumine. 🌞',
    'Seja morada de sentimentos bons! ✨🍀',
    'Seus passos são iluminados e há muita fé em cada um de seus sonhos. ✨🙏',
    'A gente só consegue se surpreender quando para de esperar🍂🍂',
    'A cura só vem quando você se afasta do que te fere e do que suga suas melhores energias 🙏',
    'A vida é mesmo muito curta pra você nem tentar 💛',
    'Há sempre o novo a ser ocupado em algum lugar secreto de nós! ✨',
    'Tu te transformas em tudo que amas verdadeiramente ❤',
    'Um pouco de silêncio e solitude às vezes cai bem. ❤',
    'A vida é a gente conseguir perceber os momentos incríveis escondidos no dia a dia. 🌈',
    'Decidi renascer. E renascendo, sou outra. Sendo outra, nada do que eu era permanece mais. 🌎',
    'Voando na frequência da liberdade que me inspira. 🦋',
    'Novas folhas, novas flores, na infinita benção do recomeço. 🌎',
    'Menos ter e pensar, mais ser e sentir. ✨',
    'De todas as direções certas na vida, seguir em frente é o que sempre nos leva mais longe. ✨😊',
    'Seja o próprio motivo da sua felicidade. 💫😍',
    'Não temos nada a perder e um mundo inteiro para ver. 🍃',
    'Meus sonhos são maiores que os meus medos. ✨',
    'A vida não me deu o dom da síntese, por isso não me encaixo em qualquer lugar. 🌏',
    'A semente da sua simplicidade guarda o que te faz especial 🌿',
    'Acredite na magia dos novos começos. 🙌',
    'Só há vento favorável para quem sabe onde vai. 🌿',
    'Eu giro para onde gira o sol! 🌻🌻🦋',
    'Estar em paz, vale demais 💙',
    'Minha conduta é pura e meus valores eu não coloco em disputa. 💋✨',
    'O daqui pra frente é o mais importante. 🙌',
    'Se leve, leve a vida, eleve-se. ✨',
    'Apaixone-se pelo processo de se tornar a sua melhor versão. Seja você seu maior compromisso. ✨',
    'Resolveu seguir a luz do seu amor e hoje não sofre pelas sombras alheias. ☀⚓👌',
    'Depois de um tempo a gente só quer o que é leve, recíproco e verdadeiro. 🍀',
    'Tudo o que você alimenta, cresce. Alimente o amor, o bem e o que te traz paz. ♥️',
    'Que todos os dias sejam ensolarados dentro de nós. ✨',
    'Seja luz, sol. Seja flor, girassol. 🌻✨',
    'Uma grande parte da felicidade pode estar nas pequenas coisas. ☀⚓👌',
    'Não existe nenhum lugar melhor para você estar, do que em paz consigo mesmo. 🐚'
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("InstaFrases"),
          backgroundColor: Colors.deepPurpleAccent),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(width: 3,
                color: Colors.purple),
                color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            RaisedButton(
              color: Colors.purple,
              onPressed: _gerarFrase,
              child: const Text(
                "Nova Frase",
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
