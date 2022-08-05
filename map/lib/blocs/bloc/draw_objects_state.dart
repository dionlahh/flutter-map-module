part of 'draw_objects_bloc.dart';

abstract class DrawObjectsState extends Equatable {
  const DrawObjectsState();

  @override
  List<Object> get props => [];
}

class DrawObjectsInitial extends DrawObjectsState {}

class DrawObjectsLoaded extends DrawObjectsState {
  // final ObjectMgr objectMgr = ObjectMgr();
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

  const DrawObjectsLoaded({
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
  List<Object> get props {
    return [circles, markers, polygons, polylines];
  }
}
