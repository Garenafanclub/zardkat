# Pragma Circom 2.0.0 - Multiplier2
This README file provides an overview of the Multiplier2 circuit implemented in Pragma Circom 2.0.0. The Multiplier2 circuit is designed to perform a multiplication operation using custom logic components such as AND, NOT, and OR gates.

#Table of Contents
Introduction
Circuit Description
Components
Usage
License
#Introduction
Pragma Circom 2.0.0 is a circuit modeling language and compiler that allows you to define and simulate digital circuits using a high-level language. This README focuses on explaining the Multiplier2 circuit, which showcases the usage of custom logic components to implement multiplication.

#Circuit Description
The Multiplier2 circuit takes two input signals, a and b, and computes their multiplication using custom logic gates. The circuit uses three main custom components: AND, NOT, and OR gates. The logical flow of the circuit is as follows:

An AND gate computes the logical AND operation between input signals a and b, and the result is stored in the signal X.

A NOT gate computes the logical NOT operation on input signal b, and the result is stored in the signal Y.

An OR gate computes the logical OR operation between signals X and Y, resulting in the final output signal Q, which represents the multiplication of a and b.

#Components
#Multiplier2 Template
The Multiplier2 template defines the overall structure of the circuit and connects the custom logic components.

input a: Input signal a.
input b: Input signal b.
signal X: Intermediate signal storing the result of the AND operation.
signal Y: Intermediate signal storing the result of the NOT operation.
signal Q: Output signal representing the multiplication result.
component Gateand: Custom AND gate component.
component gatenot: Custom NOT gate component.
component gateor: Custom OR gate component.
#AND Template
The AND template defines a custom logic component for the logical AND operation.

input a: Input signal a.
input b: Input signal b.
Output out: Output signal representing the AND operation result.
#NOT Template
The NOT template defines a custom logic component for the logical NOT operation.

input in: Input signal.
output out: Output signal representing the NOT operation result.
#OR Template
The OR template defines a custom logic component for the logical OR operation.

input a: Input signal a.
input b: Input signal b.
output out: Output signal representing the OR operation result.
#Usage
Make sure you have Pragma Circom 2.0.0 installed and set up on your system.

Copy and paste the provided code into a .circom file.

Compile the circuit using the Pragma Circom compiler.

Run simulations or generate proofs using the compiled circuit.

#License
This project is licensed under the MIT License. Feel free to use, modify, and distribute the code according to the terms of the license.
