debug = 1
logging = 1
log_file = "log.txt"

function debug_print(arg)
  if debug == 1 then
    print(arg)
  end
  if logging == 1 then
    arg = arg .. "\n"
    local file = io.open(log_file, "a") -- "a" opens the logfile in append mode, and creates a file if one doesn't exist
    if file then
      file:write(arg)
      file:close()
    else
      print("log file not found and failed to create at " .. log_file) -- error
    end
  end
end -- end function debug_print()
