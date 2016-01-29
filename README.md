# Application - Ruby

## Rock-Paper-Scissors

This project is in four phases, with an _optional_ bonus phase for those who want an extra challenge later.

---

This application needs to be built from scratch--meaning that you are being provided a beginning file/folder structure as you have in the past. You'll need to make that yourself first.

So your first step is still to **fork** this repository and then **clone** it locally. But you're responsible for creating the folders and files that have previously supported your application.

You're _not_ expected to have memorized those files and their contents though. Just refer to a previous project, like the String Segmentation toy problem, and make a duplicate file structure.

---

### Phase 1 - Build Rock-Paper-Scissors

This Phase is split into two parts :)

#### Part 1

Do this any way you know how, as simply as you can. The program should execute _one game_ of RPS and then display the winner's name.

![](https://camo.githubusercontent.com/d7beb141c53f2c5c25375db834d8d004043d3bfb/687474703a2f2f636c2e6c792f625a6a432f7270732e676966)

You _will_ need `gets` and `puts` for this, as your objective is to display an interface for two users to play RPS together on the command-line.

Again, this Phase is about _basic functionality_, so work on completion rather than adhering to any particular coding virtues.

#### Part 2

Modify your program so that a player doesn't immediately win when they win one game--they must win a _set_ of games. E.g. "best of 5" means that the first player to win _three_ games is the winner.

The program should begin by asking how many games a player must win to win the set. So it's not necessarily "best of 5"--it's whatever the players choose.

### Phase 2 - Refactoring

If you haven't already, organize your code into sensible methods. Don't overly stress over the number of lines (We're not rigid about the 5-lines rule.), and instead focus more on clearly named and well-documented (TomDoc) methods.

---

Then investigate your methods to see if any are doing _both_ the job of **getting** a value _and_ the job of **displaying** the value. In other words, is a method doing algorithmic work _and_ `puts`ing the final value?

If a method is doing both those jobs, it violates **Single Responsibility Principle**. Refactor your code by extracting just the `puts` part into its own method.

Methods that do algorithmic work should end with `return`, because their purpose is simply to achieve some _pure_ information. Methods that include a `puts` are meant to _only_ display that information.

So you might have an algorithmic method:

```ruby
def winner
  if player1_weapon > player2_weapon
    return player1
  elsif player2_weapon > player1_weapon
    return player2
  end
end
```

And then a display method that calls the `winner` method in its body:

```
def display_winner
  if winner == nil
    puts "No winner! Tie game."
  else
    puts "The winner is #{winner}!"
  end
end
```

Similarly, a method that does algorithmic work should not have a `gets` in it.

### Phase 3 - Tests

Write tests for your algorithmic methods. Don't worry about testing display or methods with `gets` in them.

Make sure your tests pass!

### Phase 4 - OOP

Now refactor your methods into classes.

---

#### Optional Bonus

1. Add a computer player.
2. Add the ability to play [*Rock Paper Scissors Lizard Spock*](http://www.samkass.com/theories/RPSSL.html).
3. Can you make the program output to a text file?
4. Add in the ability for players to play *Tic-Tac-Toe* _or_ RPS.
5. Make up your own new feature, and put it into place.