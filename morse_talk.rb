# code to ask the choice 
p "What do you wanna do, decode or encode?"
choice = gets.chomp
case 
# code to decode morse code
when choice == "decode"
    p "What do you wanna decode?"
    morse = gets.chomp
    marr = []
    morse_split = morse.split("/")
    morse_split.each do |word|
        string = ""
        char_arr = []
        word.split(" ").each do |letter|
            if letter == ".-"
                char_arr << "a"
            elsif letter == "-..."
                char_arr << "b"
            elsif letter == "-.-."
                char_arr << "c"
            elsif letter == "-.."
                char_arr << "d"
            elsif letter == "."
                char_arr << "e"
            elsif letter == "..-."
                char_arr << "f"
            elsif letter == "--."
                char_arr << "g"
            elsif letter == "...."
                char_arr << "h"
            elsif letter == ".."
                char_arr << "i"
            elsif letter == ".---"
                char_arr << "j"
            elsif letter == "-.-"
                char_arr << "k"
            elsif letter == ".-.."
                char_arr << "l"
            elsif letter == "--"
                char_arr << "m"
            elsif letter == "-."
                char_arr << "n"
            elsif letter == "---"
                char_arr << "o"
            elsif letter == ".--."
                char_arr << "p"
            elsif letter == "--.-"
                char_arr << "q"
            elsif letter == ".-."
                char_arr << "r"
            elsif letter == "..."
                char_arr << "s"
            elsif letter == "-"
                char_arr << "t"
            elsif letter == "..-"
                char_arr << "u"
            elsif letter == "...-"
                char_arr << "v"
            elsif letter == ".--"
                char_arr << "w"
            elsif letter == "-..-"
                char_arr << "x"
            elsif letter == "-.--"
                char_arr << "y"
            elsif letter == "--.."
                char_arr << "z"
            elsif letter == "--..--"
                char_arr << ","
            elsif letter == ".-.-.-"
                char_arr << "."
            else
                char_arr << "*"
            end
        end
        string = char_arr.join
        marr << string
        marr << " "
    end
    # code to join the array into a string
    final_string =  ""
    marr.each do |word|
        final_string << word
    end
    p final_string

# code to encode morse code
when choice == "encode"
    p "What do you wanna encode?"
    morse = gets.chomp
    marr = []
    morse_encode = morse.split(" ")
    morse_encode.each do |letter|
        marr << letter.split("")
    end
    marr_arr = []
    marr.each do |char|
        char_arr = []
        char.each do |letter|
            if letter == 'a'
                char_arr << ".-"
            elsif letter == 'b'
                char_arr << "-..."
            elsif letter == 'c'
                char_arr << "-.-."
            elsif letter == 'd'
                char_arr << "-.."
            elsif letter == 'e'
                char_arr << "."
            elsif letter == 'f'
                char_arr << "..-."
            elsif letter == 'g'
                char_arr << "--."
            elsif letter == 'h'
                char_arr << "...."
            elsif letter == 'i'
                char_arr << ".."
            elsif letter == 'j'
                char_arr << ".---"
            elsif letter == 'k'
                char_arr << "-.-"
            elsif letter == 'l'
                char_arr << ".-.."
            elsif letter == 'm'
                char_arr << "--"
            elsif letter == 'n'
                char_arr << "-."
            elsif letter == 'o'
                char_arr << "---"
            elsif letter == 'p'
                char_arr << ".--."
            elsif letter == 'q'
                char_arr << "--.-"
            elsif letter == 'r'
                char_arr << ".-."
            elsif letter == 's'
                char_arr << "..."
            elsif letter == 't'
                char_arr << "-"
            elsif letter == 'u'
                char_arr << "..-"
            elsif letter == 'v'
                char_arr << "...-"
            elsif letter == 'w'
                char_arr << ".--"
            elsif letter == 'x'
                char_arr << "-..-"
            elsif letter == 'y'
                char_arr << "-.--"
            elsif letter == 'z'
                char_arr << "--.."
            elsif letter == "."
                char_arr << ".-.-.-"
            elsif letter == ","
                char_arr << "--..--"
            else 
                char_arr << "*"
            end
        end
        marr_arr << char_arr
    end
    p marr_arr
    final_string = ""
    marr_arr.each do |char|
        char.each do |letter|
            final_string << letter
            final_string << " "
        end
    final_string << "/"
    end
    p final_string
else
    p "thats not a service i serve, so fuck off"
    sleep(2)
    p "sorry ;-;"
end