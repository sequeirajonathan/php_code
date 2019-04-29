<?php
$strSentence = "the cat jumped over the fence at a speed never imagined";
$sentenceArray = explode(" ",$strSentence);

for ($i = 0; $i < count($sentenceArray); $i++) {
    if(strlen($sentenceArray[$i]) <= 3) {
      $sentenceArray[$i] = strtoupper($sentenceArray[$i]);
    }
}

unset($sentenceArray[rand(0,count($sentenceArray))]);
unset($sentenceArray[rand(0,count($sentenceArray))]);

$finalWordCount = count($sentenceArray);

$finalText = implode(" ",$sentenceArray);

echo  "The text is '$finalText' and it has ". $finalWordCount. " words";
