import 'package:flutter/material.dart';

class MailViewScreen extends StatelessWidget {
  const MailViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mark_email_read),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mail_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Codeforces Global Round 23 (Rated for Everybody, 50 Prize T-Shirts!)',
                style: TextStyle(color: Colors.grey, fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Hello, JeetDalal,\nYou are welcome to register and compete in Codeforces Round 828 (Div. 3). It starts on Sunday, October, 16, 2022 14:35 (UTC). The contest duration is 2 hours 15 minutes. The allowed programming languages are C/C++, Pascal, Java, C#, Python, Ruby, Perl, PHP, Haskell, Scala, OCaml, Go, D, JavaScript, Rust and Kotlin.Div. 3 rounds are designed especially for participants with a rating below 1600. We invite you to participate in the competition!The goal of such rounds is to help beginner participants to gain skills and to get new knowledge in a real contest. You can read the details in this post dedicated to them. In short: Not only real problems, but also exercises can be used.Our main goal is to give nice training problems, so we do not care much about the innovativeness of the problems.Often the formal text of the statements.Rated for participant with the rating below 1600.ICPC rules + 12-hour open hacking phase.Untrusted participants are not included in the official ranklist.The round will be held on the rules of Educational Rounds, so read the rules (here) beforehand. The round will be for newcomers and participants with a rating below 1600. Want to compete? Do not forget to register for the contest and check your handle on the registrants page. The registration will be open for the whole contest duration.If you have any questions, please feel free to ask me on the pages of Codeforces. If you no longer wish to receive these emails, click https://codeforces.com/unsubscribe/contests/25f4f60591e09b8f4ec89724348a16d0026ca70e/ to unsubscribe.Wish you high rating,MikeMirzayanov and Codeforces team",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
