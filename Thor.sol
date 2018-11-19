pragma solidity ^0.4.22;
contract thor{
 string public power;
 address public emperor;
 
 event PowerChange(string OldPower, string NewPower);
 
 function thor(string Xpower){
 power= Xpower;
 emperor= msg.sender;
 } 
 function setpower(string Xpower){
 require(emperor == msg.sender);
 PowerChange(power, Xpower);
 power= Xpower;
 }
}
