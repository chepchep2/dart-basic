// void main() {
// List<String> players = ["Player 1", "Player 2", "Player 3", "Player 4"];
// int currentPlayerIndex = 0;
// int clapCount = 0;
// int roolCount = 0;
// int ahhCount = 0;
// List<int> clapCountsByPlayer = [0, 0, 0, 0];

// for (int i = 1; i <= 100; i++) {
//   String currentPlayer = players[currentPlayerIndex];

//   if (i % 30 == 0) {
//     print("$currentPlayer: ahh");
//     ahhCount++;
//   } else if (i % 3 == 0) {
//     print("$currentPlayer: clap");
//     clapCount++;
//     clapCountsByPlayer[currentPlayerIndex]++;
//   } else if (i % 10 == 0) {
//     print("$currentPlayer: rool");
//     roolCount++;
//   } else {
//     print("$currentPlayer: $i");
//   }

//   currentPlayerIndex = (currentPlayerIndex + 1) % players.length;
// }

// print("clap의 총 갯수: $clapCount");
// print("rool의 총 갯수: $roolCount");
// print("ahh의 총 갯수: $ahhCount");

// int maxClapCount = 0;
// String playerWithMaxClap = "";

// for (int i = 0; i < players.length; i++) {
//   int count = clapCountsByPlayer[i];
//   print("${players[i]}: $count");

//   if (count > maxClapCount) {
//     maxClapCount = count;
//     playerWithMaxClap = players[i];
//   }
// }
//
// print("가장 많은 clap을 출력한 플레이어: $playerWithMaxClap");

void main() {
  int ahh = 0;
  int clap = 0;
  int rool = 0;
  int Pl1 = 0;
  int Pl2 = 0;
  int Pl3 = 0;
  int Pl4 = 0;
  int maxCount = 0;
  String bestPlayer = "";

  int j = 1;
  while (j <= 100) {
    for (int i = 1; i <= 100; i++) {
      if (i % 30 == 0) {
        print("Player $j: ahh");
        ahh++;
      } else if (i % 3 == 0) {
        print("Player $j: clap");
        switch (i % 4) {
          case 1:
            Pl1++;
            break;
          case 2:
            Pl2++;
            break;
          case 3:
            Pl3++;
            break;
          case 0:
            Pl4++;
            break;
        }
        clap++;

        if (Pl1 > maxCount) {
          maxCount = Pl1;
          bestPlayer = "Player 1";
        }
        if (Pl2 > maxCount) {
          bestPlayer = "Player 2";
        }
        if (Pl3 > maxCount) {
          bestPlayer = "Player 3";
        }
        if (Pl4 > maxCount) {
          bestPlayer = "Player 4";
        }
      } else if (i % 10 == 0) {
        print("Player $j: rool");
        rool++;
      } else {
        print("Player $j: $i");
      }
      j++;
    }
  }

  print("clap의 총 개수: $clap");
  print("rool의 총 개수: $rool");
  print("ahh의 총 개수: $ahh");
  print("Player 1: $Pl1");
  print("Player 2: $Pl2");
  print("Player 3: $Pl3");
  print("Player 4: $Pl4");
  print("가장 많은 clap을 출력한 플레이어: $bestPlayer");
}
