require 'pry'

# def nyc_pigeon_organizer(data)
# organized_pigeons = data.each_with_object({}) do |(key, value), final_array|
#   # binding.pry
#   value.each do |inner_key, names|
#   #  binding.pry
#     names.each do |name|
#       if !final_array[name]
#         final_array[name] = {}
#         # binding.pry
#       end
#       if !final_array[name][key]
#         final_array[name][key] = []
#       end
#       final_array[name][key].push(inner_key.to_s)
#         #binding.pry
#     end
#   end
# end
# binding.pry
# organized_pigeons
# end


def nyc_pigeon_organizer(data)
  name_hash = {}
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      inner_value.each do |names|
        if !name_hash.include?(names)
          name_hash << names
          binding.pry
        end
      end
    end
  end
end
