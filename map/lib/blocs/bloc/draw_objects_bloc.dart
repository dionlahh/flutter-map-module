// import 'dart:js_util';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geodesy/geodesy.dart';
import 'package:map/network/model/circles.dart';
import 'package:map/network/model/markers.dart';
import '../../object_mgr.dart';
import 'package:map/network/model/polygons.dart';
import 'package:map/network/model/polylines.dart';

part 'draw_objects_event.dart';
part 'draw_objects_state.dart';

class DrawObjectsBloc extends Bloc<DrawObjectsEvent, DrawObjectsState> {
  DrawObjectsBloc() : super(DrawObjectsInitial()) {
    ObjectMgr objectMgr = ObjectMgr();

    on<LoadObjects>(
      (event, emit) {
        emit(DrawObjectsLoaded(
          circles: event.circles,
          // tempCircles: event.tempCircles,
          // savedCircles: event.savedCircles,
          markers: event.markers,
          droneMarkers: event.droneMarkers,

          // tempMarkerCoordinates: event.tempMarkerCoordinates,
          // tempMarkers: event.tempMarkers,
          // savedMarkers: event.savedMarkers,
          polygons: event.polygons,
          // polygonPoints: event.polygonPoints,
          // tempPolygonPoints: event.tempPolygonPoints,
          // savedPolygons: event.savedPolygons,
          polylines: event.polylines,
          // polylinePoints: event.polylinePoints,
          // tempPolylinePoints: event.tempPolylinePoints,
          // savedPolylines: event.savedPolylines,
        ));
      },
    );

    on<AddCircles>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(
            DrawObjectsLoaded(
              circles: List.from(state.circles)..add(event.circles),
              polygons: List.from(state.polygons),
              markers: List.from(state.markers),
              droneMarkers: List.from(state.droneMarkers),
              polylines: List.from(state.polylines),
            ),
          );
          objectMgr.addCircle(event.circles);
        }
      },
    );

    on<UpdateCircles>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          // todo: implement function
        }
      },
    );

    on<DeleteCircles>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          objectMgr.getCircles().removeAt(event.position);
          emit(DrawObjectsLoaded(
            circles: List.from(state.circles)..removeAt(event.position),
            polygons: List.from(state.polygons),
            markers: List.from(state.markers),
            droneMarkers: List.from(state.droneMarkers),
            polylines: List.from(state.polylines),
          ));
        }
      },
    );

    on<AddMarkers>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(
            DrawObjectsLoaded(
              markers: List.from(state.markers)..add(event.markers),
              droneMarkers: List.from(state.droneMarkers),
              circles: List.from(state.circles),
              polygons: List.from(state.polygons),
              polylines: List.from(state.polylines),
            ),
          );
        }
      },
    );

    on<UpdateMarkers>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          // todo: implement function
        }
      },
    );

    on<DeleteMarkers>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(DrawObjectsLoaded(
            markers: List.from(state.markers)..remove(state.markers.last),
            droneMarkers: List.from(state.droneMarkers),
            circles: List.from(state.circles),
            polygons: List.from(state.polygons),
            polylines: List.from(state.polylines),
          ));
        }
      },
    );

    on<AddPolygons>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(
            DrawObjectsLoaded(
              polygons: List.from(state.polygons)..add(event.polygons),
              markers: List.from(state.markers),
              droneMarkers: List.from(state.droneMarkers),
              circles: List.from(state.circles),
              polylines: List.from(state.polylines),
            ),
          );
        }
      },
    );

    on<UpdatePolygons>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          // todo: implement function
        }
      },
    );

    on<DeletePolygons>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(DrawObjectsLoaded(
            polygons: List.from(state.polygons)..remove(state.polygons.last),
            markers: List.from(state.markers),
            circles: List.from(state.circles),
            polylines: List.from(state.polylines),
            droneMarkers: List.from(state.droneMarkers),
          ));
        }
      },
    );

    on<AddPolylines>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(
            DrawObjectsLoaded(
              polylines: List.from(state.polylines)..add(event.polylines),
              markers: List.from(state.markers),
              circles: List.from(state.circles),
              polygons: List.from(state.polygons),
              droneMarkers: List.from(state.droneMarkers),
            ),
          );
        }
      },
    );

    on<UpdatePolylines>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          // todo: implement function
        }
      },
    );

    on<DeletePolylines>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(DrawObjectsLoaded(
            polylines: List.from(state.polylines)..remove(state.polylines.last),
            markers: List.from(state.markers),
            circles: List.from(state.circles),
            polygons: List.from(state.polygons),
            droneMarkers: List.from(state.droneMarkers),
          ));
        }
      },
    );

    on<AddDroneMarkers>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(
            DrawObjectsLoaded(
              markers: List.from(state.markers),
              droneMarkers: List.from(state.droneMarkers)
                ..add(event.droneMarkers),
              circles: List.from(state.circles),
              polygons: List.from(state.polygons),
              polylines: List.from(state.polylines),
            ),
          );
        }
      },
    );

    on<UpdateDroneMarkers>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          // todo: implement function
        }
      },
    );

    on<DeleteDroneMarkers>(
      (event, emit) {
        final state = this.state;
        if (state is DrawObjectsLoaded) {
          emit(DrawObjectsLoaded(
            markers: List.from(state.markers),
            droneMarkers: List.from(state.droneMarkers)
              ..removeAt(event.position),
            circles: List.from(state.circles),
            polygons: List.from(state.polygons),
            polylines: List.from(state.polylines),
          ));
        }
      },
    );
  }
}
