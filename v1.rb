# Bottles class is responsible for printing 99 bottles song. It contains methods for printing only one verse of the song, or verses from X to Y
class Bottles
  def verse(verse_number)
    one_down = "Take one down and pass it around, "
    one_less = verse_number - 1
    bottles_before_taken = "bottles"
    if one_less == 1
      bottles_after_taken = "bottle"
    else
      bottles_after_taken = bottles_before_taken
    end
    if verse_number >= 2
      "#{verse_number} #{bottles_before_taken} of beer on the wall, " +
      "#{verse_number} #{bottles_before_taken} of beer.\n" +
      "#{one_down}" +
      "#{one_less} #{bottles_after_taken} of beer on the wall.\n"
    elsif verse_number == 1
      "#{verse_number} bottle of beer on the wall, " +
      "#{verse_number} bottle of beer.\n" +
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
