# Fluter Map Module

It was built using Flutter framework and supporting [dependencies](#libraries).

Features that this **Fluter Map Module** offers:

- Map view of current position
- Area of coverage
- Feature plotting

<br>

# Prerequisites

- Android Studio SDK
- Flutter SDK
- Android 9.0 and above

<br>

# Table of Contents

1. [Integration](#integration)
2. [Features & Functions](#features--functions)<br>
   a. [Map](#map)<br>
   b. [App Bar Buttons](#app-bar-buttons)<br>
   c. [Floating Action Buttons](#floating-action-buttons)<br>
3. [Libraries](#libraries)

<br>

# Integration

When developing on different workstations, the Flutter packages and dependencies needs to be updated. This can be done so by running the following command lines within the Flutter module's working directory:

```
flutter clean
```

followed by

```
flutter pub get
```

## Launch

On application launch, it will first launch the map module, with orienation lock on. The screen will show the phone's current location and heading.

## Map

<p align="center">
  <img src="album\appbar_buttons.jpg" width="240" height="480" />
</p>

## App Bar Buttons:

- Orientation Lock Toggle
  - True (default): Screen is locked to the phone's current position on the map, and and will automatically rotate towards the phones's heading.
  - False: Screen is no longer locked, and the user can move the map around to view other parts of the map. Map no longer automatically rotate to the phone's heading.
- Grid Toggle
  - Toggles on and off a grid on the map.
- Map Layer Toggle
  - Toggles between different map layers.
- Settings Button
  - Allows the user to adjust the position marker's arc's radius and span using 2 different sliders. (default: 100m and phone's back camera's horizontal FOV)

## Floating Action Buttons:

These buttons allows for the user to draw its corresponding shapes/objects on the map.

## Clear All:

- Button is only available when there are objects plotted on the map.
- Deletes all plotted objects.

## Polyline:

<p align="center">
    <img src="album\Polyline_Trim_AdobeExpress.gif" width="240" height="480" />
</p>

- Tap on the screen to plot the points of the polyline.
- Save the plotted polyline by pressing the save button. This will change the polyline's colour to red, indicating that it has been saved.
- Toggle button switches the opacity of all saved polylines between 1 (default) and 0.

## Polygon:

<p align="center">
    <img src="album\Polygon_Trim_AdobeExpress.gif" width="240" height="480" />
</p>

- Tap on the screen to plot the points of the polygon.
- Save the plotted polygon by pressing the save button. This will change the polygon's colour to red, indicating that it has been saved.
- Toggle button switches the opacity of all saved polygon between 1 (default) and 0.
- Saved polygons can be edited by tapping on the polygons
  - Square markers on the polygon can be dragged to change the vertice's location.
  - Circle markers on the polygon can be dragged to create a new vertice.
  - Saved polygons can be deleted by tapping on the circle, followed by the delete button.

## Markers:

<p align="center">
    <img src="album\Marker_Trim_AdobeExpress.gif" width="240" height="480" />
</p>

- Tap on the screen to plot different markers.
- To add text beneath the markers, type the text in the textfield at the botttom of the screen. All the markers currently being plotted will have the same text.
- Save the plotted markers by pressing the save button.
- Toggle button switches the opacity of all saved markers between 1 (default) and 0.
- Saved markers can be tapped on for more information regarding the marker's position

## Circles:

<p align="center">
    <img src="album\Circle_Trim_AdobeExpress.gif" width="240" height="480" />
</p>

- Tap on the screen to plot a circle. (Only one circle can be plotted at a time)
- To adjust the radius of the circle, use the slider at the bottom of the screen. The radius in meters is shown beside the slider. (Max: 500m)
- Save the plotted circle by pressing the save button.
- Toggle button switches the opacity of all saved circles between 1 (default) and 0.
- Saved circles' radius can be adjusted by tapping on the circle on the map
- Saved circles can be deleted by tapping on the circle, followed by the delete button.

## Other Map Features:

- Scale Bar
  - Changes according to the current zoom of the map
- Compass
  - Rotates according to the phone's heading

<br>

# Libraries

This section includes useful libraries and plugins used within the Ground Sensor project.

Flutter Dependencies:

- [Flutter Map](https://pub.dev/packages/flutter_map)
- [Flutter Compass](https://pub.dev/packages/flutter_compass)
- [Flutter Map Marker Popup](https://pub.dev/packages/flutter_map_marker_popup)
- [Flutter Map Dragmarker](https://pub.dev/packages/flutter_map_dragmarker)
- [Flutter Map Line Editor](https://pub.dev/packages/flutter_map_line_editor)
- [Geodesy](https://pub.dev/packages/geodesy)
- [Geolocator](https://pub.dev/packages/geolocator)
- [Flutter Bloc](https://pub.dev/packages/flutter_bloc)
- [Equatable](https://pub.dev/packages/equatable)
- [Permission Handler](https://pub.dev/packages/permission_handler)
- [Cupertino Icons](https://pub.dev/packages/cupertino_icons)

<br>

# Know Issues

- On first launch, the application will crash due to permissions not being handled properly by the application. To fix, long press the application in the app drawer > App info > Permissions > allow location permission. Relaunch the application and you are good to go.
