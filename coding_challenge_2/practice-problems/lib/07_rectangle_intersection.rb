def rec_intersection(rect1, rect2)
  x = 0
  y = 1
  x1 = rect1[0][x] > rect2[0][x] ? rect1[0][x] : rect2[0][x]
  y1 = rect1[0][y] > rect2[0][y] ? rect1[0][y] : rect2[0][y]
  x2 = rect1[1][x] > rect2[1][x] ? rect2[1][x] : rect1[1][x]
  y2 = rect1[1][y] > rect2[1][y] ? rect2[1][y] : rect1[1][y]
  
  if(x2 <= x1 || y2 <= y1 )
    return nil
  else
    arr = [[x1, y1], [x2, y2]]
    return arr
  end
end