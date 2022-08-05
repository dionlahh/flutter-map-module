import 'package:flutter_map/flutter_map.dart';
import 'package:geodesy/geodesy.dart';

enum Status {
  none,
  circle,
  polygon,
  marker,
  polyline,
  editCircle,
  editPolygon,
  editPolyline,
}

class GlobalData {
  static List<LatLng> tappedPoints = [];
  // polygon stuff
  static List<LatLng> tempPolygonPoints = [];
  static List<List<LatLng>> polygonPoints = [];
  // polygon stuff
  static List<LatLng> tempPolylinePoints = [];
  static List<List<LatLng>> polylinePoints = [];

  // circle stuff
  static List<CircleMarker> tempCircles = [];
  // Coordinates of SG:
  static LatLng tempPoint =
      LatLngBounds(LatLng(1.56073, 104.11475), LatLng(1.16, 103.502)).center;

// popupMarkers stuff
  static List<LatLng> tempPopupCoordinates = [];
  static List<Marker> tempPopupMarkers = [];

  //  Text Markers
  static List<LatLng> tempTextCoordinates = [];
  static List<Marker> textMarkers = [];
  static List<Marker> tempTextMarkers = [];

  static var activity = Status.none;

  static int polyID = -1;
  static int circleID = -1;

  static void setActivity(Status state) {
    GlobalData.tempPolygonPoints.clear();
    GlobalData.tempCircles.clear();
    GlobalData.tempPopupCoordinates.clear();
    GlobalData.tempPolylinePoints.clear();
    GlobalData.tempPopupCoordinates.clear();
    GlobalData.tempTextCoordinates.clear();
    GlobalData.tempTextMarkers.clear();
    GlobalData.tempPopupCoordinates.clear();
    GlobalData.tempPopupMarkers.clear();
    GlobalData.activity = state;
  }
}
