def encrypt (input)
  stringLength=input.length
  count=0
  while count<stringLength 
    if input[count]!="z" && input[count] != " "
      input[count]=input[count].next
    elsif input[count]=="z"
      input[count]="a"
    end
    count+=1
  end
  return input
end

def decrypt (input)
  stringLength=input.length
  count=0
  alphabet="abcdefghijklmnopqrstuvwxyz"
  while count<stringLength
    if input[count]!="a" && input[count] != " "
      i=alphabet.index(input[count]).to_i
      i=i-1
      input[count]=alphabet[i]
    elsif input[count]=="a"
      input[count]="z"
    end
    count+=1
  end
  return input
end

# puts(encrypt("abd"))
# puts(encrypt("zed"))
# puts(decrypt("bcd"))
# puts(decrypt("afe"))
# puts(decrypt(encrypt("swordfish")))


begin
  puts "Would you like to [e]ncrypt or [d]ecrypt?"
  input = gets.chomp[0].downcase
end until input == "e" || input ==  "d"

if input == "e"
  puts "What would you like to encrypt?"
  input = gets.chomp
  puts(encrypt(input))
else
  puts "What would you like to decrypt?"
  input = gets.chomp
  puts(decrypt(input))
end