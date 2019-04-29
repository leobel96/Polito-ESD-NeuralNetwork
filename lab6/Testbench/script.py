import random
import math

inputs = [0,0,0]

def main():
  random.seed()
  with open("inputs.txt", "w+") as f_in:
    with open("outputs.txt", "w+") as f_out:
      for i in range(1024):
        inputs[0] = inputs[1]
        inputs[1] = inputs[2]
        inputs[2] = random.randint(0, 255)
        binary_input = format(inputs[2], 'b').zfill(8)
        f_in.write(binary_input + '\n')
        if inputs[2] > 127:
          inputs[2] = inputs[2] - 256
        output = math.floor(0.5*inputs[2])+math.floor(3.75*inputs[1])-inputs[0]
        if output > 127:
          output = 127
        elif output < -128:
          output = -128
        if output >= 0:
          binary_output = format(output, 'b').zfill(8)
        else:
          binary_output = format(((-output)^255)+1, 'b')
        f_out.write(binary_output + '\n')

main()
