FILE(REMOVE_RECURSE
  "imagelistener_node_client_automoc.cpp"
  "imagelistener_node_server_automoc.cpp"
  "imageviewer_node_server_automoc.cpp"
  "CMakeFiles/imagelistener_generate_messages"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/imagelistener_generate_messages.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
