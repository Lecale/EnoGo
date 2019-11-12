import random, strutils, terminal

let contents = readFile("NeuralNet.txt").splitLines() 
var consultations = 0
randomize()

while true :
  eraseScreen()
  if consultations == 0 :
    echo "Do you wish to consult Eno? : (y/n)"
  else :
    echo "Do you wish to consult Eno again? : (y/n)"
  let answer = readLine(stdin)
  if answer == "y" :
    echo ""
    echo " This is your advice: "
    echo ""    
    echo "  " , contents[rand(contents.len - 1)]
    echo ""
    echo " When you are ready. Press any key to continue"
    echo ""
    let peter = readLine(stdin)
    consultations = consultations + 1
  if answer == "n" :
    break

eraseScreen()
echo ""
echo "Thank you. Brian Eno is empty."
echo "You consulted " , consultations , " times"