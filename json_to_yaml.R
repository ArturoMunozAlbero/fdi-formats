json_formats = list.files(pattern = ".json")
for(json_format in json_formats){
  print(json_format)
  json = jsonlite::read_json(json_format)
  yaml::write_yaml(json, gsub("json", "yaml", json_format))
}