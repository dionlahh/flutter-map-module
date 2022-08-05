part of 'draw_objects_bloc.dart';

abstract class DrawObjectsEvent extends Equatable {
  const DrawObjectsEvent();

  @override
  List<Object> get props => [];
}

class LoadObjects extends DrawObjectsEvent {
  final List<Circles> circles;
  // final List<CircleMarker> tempCircles;
  // final List<CircleMarker> savedCircles;

  final List<Markers> markers;
  final List<Markers> droneMarkers;

  // final List<LatLng> tempMarkerCoordinates;
  // final List<Marker> tempMarkers;
  // final List<Marker> savedMarkers;

  final List<Polygons> polygons;
  // final List<LatLng> tempPolygonPoints;
  // final List<List<LatLng>> polygonPoints;
  // final List<Polygon> savedPolygons;

  final List<Polylines> polylines;
  // final List<LatLng> tempPolylinePoints;
  // final List<List<LatLng>> polylinePoints;
  // final List<Polyline> savedPolylines;

  const LoadObjects({
    this.circles = const <Circles>[],
    // this.tempCircles = const <CircleMarker>[],
    // this.savedCircles = const <CircleMarker>[],
    this.markers = const <Markers>[],
    this.droneMarkers = const <Markers>[],

    // this.tempMarkerCoordinates = const <LatLng>[],
    // this.tempMarkers = const <Marker>[],
    // this.savedMarkers = const <Marker>[],
    this.polygons = const <Polygons>[],
    // this.tempPolygonPoints = const <LatLng>[],
    // this.polygonPoints = const <List<LatLng>>[],
    // this.savedPolygons = const <Polygon>[],
    this.polylines = const <Polylines>[],
    // this.tempPolylinePoints = const <LatLng>[],
    // this.polylinePoints = const <List<LatLng>>[],
    // this.savedPolylines = const <Polyline>[],
  });

  @override
  List<Object> get props => [
        circles,
        // tempCircles,
        // savedCircles,
        markers,
        // tempMarkerCoordinates,
        // tempMarkers,
        // savedMarkers,
        polygons,
        // tempPolygonPoints,
        // polygonPoints,
        // savedPolygons,
        polylines,
        // tempPolylinePoints,
        // polylinePoints,
        // savedPolylines,
      ];
}

class AddingCircles {
  const AddingCircles();
}

class AddCircles extends DrawObjectsEvent {
  final Circles circles;

  const AddCircles({required this.circles});

  @override
  List<Object> get props => [circles];
}

class UpdateCircles extends DrawObjectsEvent {
  final Circles circles;

  const UpdateCircles({required this.circles});

  @override
  List<Object> get props => [circles];
}

class DeleteCircles extends DrawObjectsEvent {
  final int position;

  const DeleteCircles({required this.position});

  @override
  List<Object> get props => [position];
}

class AddPolygons extends DrawObjectsEvent {
  final Polygons polygons;

  const AddPolygons({required this.polygons});

  @override
  List<Object> get props => [polygons];
}

class UpdatePolygons extends DrawObjectsEvent {
  final Polygons polygons;

  const UpdatePolygons({required this.polygons});

  @override
  List<Object> get props => [polygons];
}

class DeletePolygons extends DrawObjectsEvent {
  final int index;

  const DeletePolygons({required this.index});

  @override
  List<Object> get props => [index];
}

class AddMarkers extends DrawObjectsEvent {
  final Markers markers;

  const AddMarkers({required this.markers});

  @override
  List<Object> get props => [markers];
}

class UpdateMarkers extends DrawObjectsEvent {
  final Markers markers;

  const UpdateMarkers({required this.markers});

  @override
  List<Object> get props => [markers];
}

class DeleteMarkers extends DrawObjectsEvent {
  final Markers markers;

  const DeleteMarkers({required this.markers});

  @override
  List<Object> get props => [markers];
}

class AddDroneMarkers extends DrawObjectsEvent {
  final Markers droneMarkers;

  const AddDroneMarkers({required this.droneMarkers});

  @override
  List<Object> get props => [droneMarkers];
}

class UpdateDroneMarkers extends DrawObjectsEvent {
  final Markers droneMarkers;

  const UpdateDroneMarkers({required this.droneMarkers});

  @override
  List<Object> get props => [droneMarkers];
}

class DeleteDroneMarkers extends DrawObjectsEvent {
  final int position;

  const DeleteDroneMarkers({required this.position});

  @override
  List<Object> get props => [position];
}

class AddPolylines extends DrawObjectsEvent {
  final Polylines polylines;

  const AddPolylines({required this.polylines});

  @override
  List<Object> get props => [polylines];
}

class UpdatePolylines extends DrawObjectsEvent {
  final Polylines polylines;

  const UpdatePolylines({required this.polylines});

  @override
  List<Object> get props => [polylines];
}

class DeletePolylines extends DrawObjectsEvent {
  final Polylines polylines;

  const DeletePolylines({required this.polylines});

  @override
  List<Object> get props => [polylines];
}
