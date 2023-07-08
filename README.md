# Controlling-Servo-Motor-using-Tang-Nano-4k

The board used here is Sipeed's Tang Nano 4k and  the compiler is Gowin IDE.
I have tried controlling servo motor(Tower Pro SG90) using FPGA. It is basically done by using PWM i.e varying the duty cycle of the signal between 1 ms to 2ms.
For turning the servo to left the duty cycle should be 1ms, for neutral position it should be 1.5 ms and for right it is to be kept 2 ms. The width of the counter should be 20 ms.
