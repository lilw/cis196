def double_open filename1, filename2
  open(filename1) do |f1|
    open(filename2) do |f2|
      yield f1, f2
    end
  end

end

double_open("blah.txt", "other.txt") do |f1, f2|
  while(!f1.eof && !f2.eof)
    puts f1.readline().strip + " | "+ f2.readline().strip
  end
end