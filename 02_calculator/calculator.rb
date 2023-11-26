#write your code here
def add(a, b)
    a + b
end

def subtract(a,b)
    a - b 
end

def sum(arr)
    arr.inject(0) { |a, b| a + b }
end