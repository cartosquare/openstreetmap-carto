# carto explain

# 基础图层

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

# 土地利用
## landcover-lowzoom

* type: polygon

5 <= zoom >= 9

## landcover
* type: polygon
zoom >= 10

landuse are polygon！
polygon excepting water and roads are all landuse!

## landcover-line

* type: linestring

zoom >= 14
森林防火带

## landcover-area-symbols
* type: polygon

不同种类的树林，用于树林的符号渲染

## landuse-overlay
* type: polygon

zoom >= 8
军事区、危险区

## tourism-boundary
* type: polygon

zoom >= 10

主题公园、动物园

## naturenature-reserve-boundaries

* polygon

z >= 8

国家公园，国家保护区

## trees
* type polygon

z >= 16

树木

## line-barriers
* type: linestring

zoom >= 14

城墙、围栏等线状阻隔物

## area-barriers
* type: polygon

zoom >= 16

面状的障碍物


## cliffs
* type: linestring

zoom >= 13

悬崖、人工陡坡

## text-poly-low-zoom
* polygon

z <= 9

面状物体的标注，绝大部分是landuse
*（！！这里面包括了军事区域的标注！！）*

## text-poly
* polygon

z >= 10

面状物体的标注，绝大部分是landuse
*（！！这里面包括了军事区域的标注！！）*

## nature-reserve-text
* linestring

z >= 13


# 水
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

## icesheet-poly

* type: polygon
* format: shapefile

antarctica icesheet polygons

zoom >= 5

## icesheet-outlines
* type : polygon
* format: shapefile
zoom >= 5

## water-areas
* type: polygon

water way in dock, riverbank
landuse in reservoir, basin
natural in water, glacier
zoom >= 0

## sprints
* type: point

zoom >= 14
泉水从地面冒出来的地方

## water-lines
* type: linestring
zoom >= 12

## water-barriers-line
* type: linestring

zoom >= 13

大坝、水闸、水门

## water-barriers-poly
* type: polygon

zoom >= 13
大坝、水闸、水门

## water-barriers-point
* type: point

zoom >= 17
大坝、水闸、水门

## marinas-area

* type: polygon

zoom >= 14
码头

## piers-poly
* type: polygon

zoom >= 12
海边栈道、海边石矶，用于阻挡海水、海边丁坝

## piers-line
* type: linestring

zoom >= 12
海边栈道、海边石矶，用于阻挡海水、海边丁坝

## waterway-bridges
* type: linestring

水上的桥

zoom >= 12

## bridge
*TODO: decide this classification*
* type: polygon

zoom >= 12

桥

## bridge-text

* polygon

zoom >= 11


## water-lines-text
* linestring

z >= 13




# 建筑
## buildings
* type: polygon

zoom >= 14

建筑物

## building-text
* type: polygon

z >= 14

## interpolation
* linestring

z >= 17

地址

## addresses
* point

z >= 17

地址



# 道路
## tunnels
* type: linestring

zoom >= 10

隧道，包括道路和铁路


## ferry-routes
* type linestring

zoom >= 8

渡船线路

## turning-circle-casing
* type: point

minzoom >= 15

转弯点

## turning-circle-fill
* type: point
转弯点

## highway-area-casing

* type: polygon

面状的道路或是铁路区域

minzoom >= 14

## highway-area-fill
* type: polygon

minzoom >= 14
面状的道路或是铁路区域，比highway-area-casing稍微详细一点

## roads-casing

* type: linestring

minzoom >= 10

所有的道路都在里面了

## roads-fill

* type: linestring

minzoom >= 10

所有的道路都在里面了

## aerialways

* type: linestring

minzoom >= 12

缆车线路

## roads-low-zoom
* type: linestring

6 <= zoom >= 9


## bridges
* type: linestring
公路和铁路上的桥

zoom >= 10

## guideways

* type: linestring

zoom >= 11

电车引导线路


## aeroways
* type: linestring

zoom >= 11

飞机场里的道路


## junctions
* points

z = 11

道路交叉口、路口

 ## roads-text-ref-low-zoom

 * linestring

 10 <= z >= 12

 比较高级别的路的ref（路的等级？）

## roads-text-ref
* linestring

z >= 13

## roads-area-text-name
* polygon

z >= 15

## roads-text-name
* linestring

z >= 13

(including road directions)

## paths-text-name
* linestring

z >= 15

更加不重要的路的文字（像是小区内部的）

## railways-text-name
* linestring

z >= 11

## ferry-routes-text
* linestring

z >= 13


# 行政区划
## admin-low-zoom
* type: linestring

4 <= zoom >= 10

admin_level in [0, 1, 2, 3, 4]

## admin-mid-zoom
* type: linestring
11 <= zoom >= 12

admin_level in [0, 1, 2, 3, 4, 5, 6, 7, 8]

## admin-high-zoom
*type: linestring

zoom >= 13

admin_level in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

## country-names
* point

admin_level = 2

zoom >= 2

## capital-names
* point

city, town, village, hamlet

3 <= zoom >= 15

## state-names
* point

admin_level = 4

z >= 4

## placenames-medium
* point

city, town

4 <= z <= 15

## placesnames-small
* point

suburb, village, hamlet, quarter, neighbourhood, locality, isolated_dwelling, farm, square

z >= 12

## admin-text
* linestring

z >= 16



# 感兴趣物
## entrances
* type: poiint

zoom >= 18

入口

## power-line

* linestring

z >= 14

电线

## stations
* point

z >= 12

站点

## stations-poly
* polygon

z >= 12

## amenity-points-poly
* polygon

z >= 10

poi polygon

## amenity-line
* linestring

z >= 10

poi lines

## power-towers

* points

 z >= 14

 电塔

 ## power-poles
 *points

 z >= 16

 电线杆





## text-point
* point

z >= 10

POI标注
*（！！这里面包括了军事区域的标注！！）*


## amenity-low-priority
* point

z >= 14

## amenity-low-priority-poly
* polygon

z >= 14

