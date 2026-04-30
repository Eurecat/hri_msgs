uint32  track_id
string label
uint32  class_id
NormalizedRegionOfInterest2D bbox_xyxy
uint32 height # image height in pixels, that is, number of rows
uint32 width  # image width in pixels, that is, number of columns

# Segmentation contour: ordered list of normalized (x,y) boundary points.
# Empty when the model does not produce segmentation masks.
# Coordinates are in [0,1] relative to the image dimensions.
NormalizedPointOfInterest2D[] contour