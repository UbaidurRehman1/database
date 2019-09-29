
def main():
    file = open('output.txt', 'w')
    write(file, 1, 33, 1)
    write(file, 33, 65, 2)
    write(file, 65, 89, 3)
    write(file, 89, 95, 4)
    write(file, 95, 101, 5)
    write(file, 101, 103, 6)
    write(file, 103, 105, 7)

def write(file, start, end, static_id):
    for i in range(start, end):
        string = '(' + str(i) + ', ' + str(static_id) + '), '
        if i % 10 == 0:
            string = '(' + str(i) + ', ' + str(static_id) + '), \r'
        file.write(string)

def write1(input_file, output_file):
    line = input_file.readline()
    while line:
        line = line.rstrip()
        string = '(' + line  + '),\r'
        output_file.write(string)
        line = input_file.readline()

main()