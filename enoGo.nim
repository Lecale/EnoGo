import random, strutils, terminal

let contents = readFile("NeuralNet.txt").splitLines() 

while true :
  eraseScreen()
  echo "Consult Eno? : (y/n)"
  let answer = readLine(stdin)
  if answer == "y" :
    echo ""
    echo contents[rand(contents.len - 1)]
    echo ""
  if answer == "n" :
    break

eraseScreen()
echo ""
echo "Thank you. Brian Eno is empty."