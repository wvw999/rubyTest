# I figured there were two ways to go at this:
# 
# 1. write a function that could handle very deep recursion of arrays within arrays within arrays. That seemed big and ugly and like way too much work.

# 2. convert the whole thing to text and then back to an array. way less work, easier to look at, and more likely to get used on a daily basis. 

arr = [1,2,[3,4,[5,6]],7,[8,[9],10]]
outarr = ""
step = 0
arr.each do |print|
    if step == 0
        outarr = print.to_s
        step += 1
    else
        outarr = outarr + "," + print.to_s
    end
end

regexval = outarr.gsub(/[\[\]\s]/,'')
regexval = regexval.split(",")
print regexval
finalarray = []
regexval.each do |magic|
    finalarray.push(magic.to_i)
end
