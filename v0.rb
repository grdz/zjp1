class Bottles
  def verse(i)
    if i > 2
      "#{i} bottles of beer on the wall, " +
      "#{i} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{i - 1} bottles of beer on the wall.\n"
    elsif i == 2
      "#{i} bottles of beer on the wall, " +
      "#{i} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{i - 1} bottle of beer on the wall.\n"
    elsif i == 1
      "#{i} bottle of beer on the wall, " +
      "#{i} bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " + 
      "99 bottles of beer on the wall.\n"
    end
  end

  def verses start, stop
    start.downto(stop).map { |count| verse count }.join "\n"
  end

  def song
    verses 99, 0
  end

end
