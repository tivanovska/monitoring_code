# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# The 'GrabAndSaveImageAction' has a similar goal as the 'GrabImagesAction' in
# case of only grabbing one image. It additionally contains a string describing
# the full storage path of the image to be captured.
# It wont provide the grabbed image via the result topic. Instead it only
# returns a flag indicating the success.

##########################################
################## GOAL ##################
##########################################

# Flag which indicates if the exposure time is provided and hence should be
# set before grabbing
bool exposure_given

# Only relevant, if exposure_given is true:
# The target exposure time in microseconds. This values can be overriden from
# the brightness search, in case that the flag exposure_fixed is not true.
float32 exposure_time

# Flag which indicates if the gain is provided and hence should be set before
# grabbing
bool gain_given

# Only relevant, if gain_given is true:
# The target gain in percent of the maximal value the camera supports.
# For USB-Cameras, the gain is in dB, for GigE-Cameras it is given in so
# called 'device specific units'. This value can be overriden from the
# brightness search, in case that the gain_fixed flag is set to false.
float32 gain_value

# Flag which indicates if the gamma value is provided and hence should be set
# before grabbing
bool gamma_given

# Only relevant, if gain_given is true:
# Gamma correction of pixel intensity.
# Adjusts the brightness of the pixel values output by the camera's sensor
# to account for a non-linearity in the human perception of brightness or
# of the display system (such as CRT).
float32 gamma_value

# Flag which indicates if the brightness value is provided and hence should
# be set before grabbing
bool brightness_given

# Only relevant, if brightness_given is true:
# The average intensity value of the resulting image. It depends the exposure
# time as well as the gain setting.
float32 brightness_value

# Only relevant, if brightness_given is true:
# If the camera should try reach the desired brightness, at least one of the
# following flags MUST be set. If both are set, the interface will use the
# profile that tries to keep the gain at minimum to reduce white noise.
# 'exposure_auto' will adapt the exposure time to reach the brightness, wheras
# 'gain_auto' does so by adapting the gain. If one of these flags is set to
# false, the connected property will be kept fix.
# In most of the cases trying to reach a target brightness only by varying the
# gain and keeping the exposure time fix is not a good approach, because the
# exposure range is many times higher than the gain range.
bool exposure_auto
bool gain_auto

# File path and image name (including file-extension) to store the grabbed
# image
string img_storage_path_and_name
