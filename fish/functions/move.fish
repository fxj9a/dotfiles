function move --wraps='rsync -azAXHP' --description 'alias move rsync -azAXHP'
  rsync -azAXHP $argv
        
end
