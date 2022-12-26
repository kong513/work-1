# When done, submit this entire file to the autograder.

# Part 1

def sum arr 
  arr.sum #นำ array มาบวกกัน
end

def max_2_sum arr 
  result = 0;
  if arr.empty? #ถ้าในarrฟั ไม่มีค่า จะreturn ค่า0
    return 0
    end
    if arr.length == 1 #เซ็ท arr มี 1 ตัว
      return arr[0]
      end
      a = arr.max(); #return ตัวที่่มากที่สุดใน arr
      t = arr.index(a) #return ตำเเหนงของตัวที่มากสุดใน arr
      arr.delete_at(t) #ลบค่าในตำแหน่งt ใน arr
      b = arr.max(); #return ตัวที่่มากที่สุดใน arr
      result = a + b # a+b
      return result #คืนค่าให้result
end

def sum_to_n? arr, n
  if arr.empty? #return false ถ้าใน arr ไม่มีค่่า
    return false;
    end
    arr.each do |x| #วนลูป ใน arr
      tmp = arr 
      tar = n - x 
      tmp.delete(x) #ลบค่าในตำแหน่งx
      if tmp.include?(tar) # return true ถ้า tar เป็นสิ่งที่อยู่ใน tmp
        return true
      end
    end
    return false
end



def hello(name)
  var = "Hello, " + name
  return var
end

def starts_with_consonant? s
  if s.length == 0 #return false ถ้าจำนวนข้อมอูล เป็น 0
    return false
    end
    if ('A'..'Z').include?(s[0].upcase) #checkว่า A-Z อยู่ใน s และเปลี่ยนเป็นตัวพิมใหญ่
      var = ['A','E','I','O','U'] #ประกาศ var
      if var.include?(s[0].upcase) # checkว่า var อยู่ใน s และเปลี่ยนเป็นตัวพิมใหญ่ และ return ค่า false
        return false
        end
        return true
    end
    return false
end

def binary_multiple_of_4? s
  n % 4 == 0 ? "True" : "False"#n mod 4 จะได้ 0 หรือป่าว ถ้า 0 == true
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price # สร้าง :isbn, :price เป็นตัวเเปรแบบ instance

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0 #ใน isbn ไม่มีค่า หรื่อ price <= 0 set variable  isbn และ price
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % price # ruturn price .ให้เป็น form "$%.2f"
end