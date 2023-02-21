function guessTheNumber() {
    // kerjain disini
    let menu = 'y';
    do {
      let number = Math.floor(Math.random() * 10);
      let success = false;
      do {
        let answer = prompt('Guess the number (0-9)');
        if (number > answer) {
          alert('Too low');
        } else if (number < answer) {
          alert('Too high');
        } else {
          success = number == answer;
          alert('You won');
        }
      } while (!success);
      menu = prompt('Do you want to play again? (y/n)');
    } while (menu == 'y' || menu == 'Y');
  }
  
  // jangan sentuh, kecuali kamu ngerti ini buat apaan
  document
    .getElementById('button')
    .addEventListener('click', () => guessTheNumber());
  