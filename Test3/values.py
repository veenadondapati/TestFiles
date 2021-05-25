x = {'x':{'y':{'z':'a'}}}
#{'a':{'b':{'c':'d'}}}

def get_key_val(arg_dict):
  return_dict = {}
  for arg_key, arg_val in arg_dict.items():
      if isinstance(arg_val, dict):
        for in_key, in_val in arg_val.items():
          for return_key, return_val in get_key_val({arg_key+'/'+in_key: in_val}).items():
            return_dict[return_key] = return_val
      else:
        return_dict[arg_key] = arg_val
      return return_dict

get_key_val(x)