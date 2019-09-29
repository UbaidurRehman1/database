
def main():
    file = open('output.txt', 'w')
    # input_file = open("input.txt", 'r')
    # write1(input_file, file);

    for i in range(0, 8):
        if i % 2 == 0:
            start = i * 8 + 1;
            write(file, start, start + 8, 1) # A4
        elif i % 2 != 0:
            start = i * 8 + 1;
            write(file, start, start + 8, 2)
    # write(file, 1, 2, 1)
    # write(file, 1, 2, 1)
    # write(file, 1, 2, 1)
    # write(file, 1, 2, 1)
    # write(file, 1, 2, 1)
    # write(file, 1, 2, 1)
    # write(file, 17, 33, 4)
    # write(file, 33, 49, 1)
    # write(file, 49, 65, 4)
    # write(file, 65, 73, 1)
    # write(file, 73, 81, 2)
    # write(file, 81, 89, 3)

def write(file, start, end, static_id):
    for i in range(start, end):
        string = '(' + str(i) + ', ' + str(static_id) + '), '
        if i % 10 == 0:
            string = '(' + str(i) + ', ' + str(static_id) + '), \r'
        file.write(string)

def write1(input_file, output_file):
    line = input_file.readline()
    i = 0
    while line:
        i = i + 1
        line = line.rstrip()
        string = '(' + line  + '), '
        if i % 10 == 0:
            string = '(' + line  + '),\r'
        output_file.write(string)
        line = input_file.readline()

main()