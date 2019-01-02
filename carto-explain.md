# carto explain

## world

* type: polygon
* format: shapefile

simplified_land_polygon

only for rendering

zoom <= 9 
## coast-poly

* type: polygon
* format: shapefile

land_polygon_splited

only for rendering, splited land polygons

zoom >= 10

## necountries

* type: linestring
* format: shapefile

admin boundary line(on land)

1 <= zoom <= 3

## landcover-lowzoom
**TODO: list landuse types here**

* type: polygon

5 <= zoom >= 9

## landuse
* type: polygon
zoom >= 10

## landcover-line

* type: linestring

zoom >= 14

## water-lines-casing

TODO: what's the meaning of casing?
**casing can be think as the outline surrounding**

* type: linestring
* [stream, drain, ditch]

zoom <= 13

## water-lines-low-zoom
* type: linestring
* [river]
8 <= zoom >= 11