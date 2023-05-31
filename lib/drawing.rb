# text drawing helper functions.

def line
  puts '-' * 80
end

def box_text(text)
  length = text.length + 4
  puts '+' + '-' * length + '+'
  puts "| " + text + " |"
  puts '+' + '-' * length + '+'
end

def double_box_text(text)
  length = text.length + 6
  puts '+' + '=' * length + '+'
  puts "|| " + text + " ||"
  puts '+' + '=' * length + '+'
end

def center_text(text)
  total_length = 80
  text_length = text.length
  leading_space = (total_length - text_length) / 2
  puts ' ' * leading_space + text
end

def right_align_text(text)
  total_length = 80
  text_length = text.length
  leading_space = total_length - text_length
  puts ' ' * leading_space + text
end

def draw_horizontal_line(length)
  puts '-' * length
end

def draw_vertical_line(length)
  length.times { puts '|' }
end

def star_text(text)
  length = text.length + 6
  puts '*' * length
  puts "** " + text + " **"
  puts '*' * length
end

def triangle_text(text)
  length = text.length + 2
  length.times { |i| puts ' ' * (length - i) + text[0..i] }
end

def pyramid_text(text)
  length = text.length
  (length / 2 + 1).times do |i|
    puts ' ' * (length - i) + text[0..(2*i)] + ' ' * (length - i)
  end
end

# Testing function
def test_all_drawing_methods
  # Test the line function
  puts "Testing the line function:"
  line
  puts "\n"

  # Test the box_text function
  puts "Testing the box_text function:"
  box_text("Test text")
  puts "\n"

  # Test the double_box_text function
  puts "Testing the double_box_text function:"
  double_box_text("Test text")
  puts "\n"

  # Test the center_text function
  puts "Testing the center_text function:"
  center_text("Test text")
  puts "\n"

  # Test the right_align_text function
  puts "Testing the right_align_text function:"
  right_align_text("Test text")
  puts "\n"

  # Test the draw_horizontal_line function
  puts "Testing the draw_horizontal_line function:"
  draw_horizontal_line(10)
  puts "\n"

  # Test the draw_vertical_line function
  puts "Testing the draw_vertical_line function:"
  draw_vertical_line(10)
  puts "\n"

  # Test the star_text function
  puts "Testing the star_text function:"
  star_text("Test text")
  puts "\n"

  # Test the triangle_text function
  puts "Testing the triangle_text function:"
  triangle_text("Test text")
  puts "\n"

  # Test the pyramid_text function
  puts "Testing the pyramid_text function:"
  pyramid_text("Test text")
  puts "\n"
end
