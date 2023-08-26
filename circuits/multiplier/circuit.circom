pragma circom 2.0.0;
  
template Multiplier2 () {  
   //SIGNAL INPUT
   signal input a;
   signal input b;

   //SIGNAL FROM GATES 
   signal X;
   signal Y;

   //FINAL SIGNAL OUT
   signal output Q;

   //COMPONENT GATE USED TO CREATE CUSTOM CIRCUIT
   component Gateand = AND();
   component gatenot = NOT();
   component gateor = OR();

   //CIRCUIT LOGIIC

   //andGate logic
   Gateand.a <== a;  //passing basically
   Gateand.b <== b;
   X <== Gateand.out;

   //notGate logic
   gatenot.in <== b;
   Y <== gatenot.out;

   //orGate logic
   gateor.a <== X;
   gateor.b <== Y;
   Q <== gateor.out;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = Multiplier2();