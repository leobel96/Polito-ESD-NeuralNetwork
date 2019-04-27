import random


def rand_byte():
  number = random.randint(0, 255)
  binary = format(number, 'b').zfill(8)
  return binary


def main():
  random.seed()
  with open("inputs.txt", "w+") as f:
    for i in range(1024):
      binary = rand_byte()
      f.write(binary + '\n')

main()
