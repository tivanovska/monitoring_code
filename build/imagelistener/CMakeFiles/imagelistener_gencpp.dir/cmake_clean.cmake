FILE(REMOVE_RECURSE
  "imagelistener_node_client_automoc.cpp"
  "imagelistener_node_server_automoc.cpp"
  "imageviewer_node_server_automoc.cpp"
  "CMakeFiles/imagelistener_gencpp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/imagelistener_gencpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
