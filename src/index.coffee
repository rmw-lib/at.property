Function::property = (dict) ->
  for key of dict
    Object.defineProperty @::, key, dict[key]
  return

