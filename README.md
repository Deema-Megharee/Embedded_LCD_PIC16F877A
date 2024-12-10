# Embedded_LCD_PIC16F877A  

This project demonstrates how to interface an LM016L LCD with a PIC16F877A microcontroller. The purpose is to display English uppercase letters sequentially (A-Z) on the LCD using assembly language programming.  

## Features  
- Display characters on a 16x1 LCD module.  
- Utilize the PIC16F877A microcontroller's 8-bit mode for LCD communication.  
- Simulate and test the circuit using Proteus.  
- Assembly code written and compiled with MPLAB.  

## Components  
### Hardware:  
- **Microcontroller:** PIC16F877A  
- **LCD Module:** LM016L (16x1 character display)  
- **Power Supply:** 5V DC  
- Connecting wires, resistors, and breadboard/prototyping board.  

### Software:  
- MPLAB IDE: For writing and compiling assembly code.  
- Proteus: For designing and simulating the circuit.  

## Circuit Description  
The microcontroller is configured to communicate with the LM016L LCD in 8-bit mode. The LCD is used to display characters, with the pins connected as follows:  
- Data pins (D0-D7) are connected to PORTD of the PIC16F877A.  
- Control pins (RS, RW, and EN) are connected to PORTA.  

A simple delay routine is implemented for proper synchronization between the microcontroller and the LCD.  

## How to Run  
1. Connect the LCD to the PIC16F877A as per the provided circuit diagram.  
2. Write and compile the assembly code using MPLAB to generate the hex file.  
3. Load the generated hex file into the PIC16F877A in Proteus.  
4. Run the simulation to see the characters displayed on the LCD.  

## Output  
The LCD will sequentially display uppercase English letters from A to Z.  

## Applications  
- Educational projects for learning microcontroller programming and interfacing.  
- Simple text-based displays in embedded systems.  
- Customizable for other projects requiring character displays.  

## Contributing  
Contributions are welcome! If you have suggestions or improvements, feel free to submit an issue or a pull request.  

## License  
This project is licensed under the MIT License.  


