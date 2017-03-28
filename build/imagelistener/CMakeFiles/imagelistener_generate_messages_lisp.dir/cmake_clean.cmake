FILE(REMOVE_RECURSE
  "imagelistener_node_client_automoc.cpp"
  "imagelistener_node_server_automoc.cpp"
  "imageviewer_node_server_automoc.cpp"
  "CMakeFiles/imagelistener_generate_messages_lisp"
  "/home/tiva/catkin_ws/devel/share/common-lisp/ros/imagelistener/msg/ELVEZ.lisp"
  "/home/tiva/catkin_ws/devel/share/common-lisp/ros/imagelistener/srv/exampleImageProcessing.lisp"
  "/home/tiva/catkin_ws/devel/share/common-lisp/ros/imagelistener/srv/imageViewing.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/imagelistener_generate_messages_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
