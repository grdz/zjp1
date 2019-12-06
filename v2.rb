# Bottles class is responsible for printing 99 bottles song. It contains methods for printing only one verse of the song, or verses from X to Y
class Bottles
  def verse(verse_number)
    one_down = "Take one down and pass it around, "
    one_less = verse_number - 1
    container_plural = "bottles"
    container_singular = "bottle"
    beverage = "beer"
    
    if one_less == 1
      container_after_taken = container_singular
    else
      container_after_taken = container_plural
    end
    
    if verse_number >= 2
      "#{verse_number} #{container_plural} of #{beverage} on the wall, " +
      "#{verse_number} #{container_plural} of #{beverage}.\n" +
      "#{one_down}" +
      "#{one_less} #{container_after_taken} of #{beverage} on the wall.\n"
    elsif verse_number == 1
      "#{verse_number} #{container_singular} of #{beverage} on the wall, " +
      "#{verse_number} #{container_singular} of #{beverage}.\n" +
      "Take it down and pass it around, " +
      "no more #{container_plural} of #{beverage} on the wall.\n"
    else
      "No more #{container_plural} of #{beverage} on the wall, " +
      "no more #{container_plural} of #{beverage}.\n" +
      "Go to the store and buy some more, " + 
      "99 #{container_plural} of #{beverage} on the wall.\n"
    end
  end

  def verses high, low
    high.downto(low).map { |count| verse count }.join "\n"
  end

  def song
    verses 99, 0
  end
end
