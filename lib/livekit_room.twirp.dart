
import 'dart:async';
import 'package:http/http.dart';
import 'package:requester/requester.dart';
import 'package:twirp_dart_core/twirp_dart_core.dart';
import 'dart:convert';
import 'livekit_models.twirp.dart';
class CreateRoomRequest {

	CreateRoomRequest(
	this.name,this.emptyTimeout,this.maxParticipants,this.nodeId,this.metadata,);

    String name;
    String emptyTimeout;
    String maxParticipants;
    String nodeId;
    String metadata;
    
	
	factory CreateRoomRequest.fromJson(Map<String,dynamic> json) {
		
		
		
		
		

		return new CreateRoomRequest(
		json['name'] as String,
		json['empty_timeout'] as String,
		json['max_participants'] as String,
		json['node_id'] as String,
		json['metadata'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['name'] = name;
    	map['empty_timeout'] = emptyTimeout;
    	map['max_participants'] = maxParticipants;
    	map['node_id'] = nodeId;
    	map['metadata'] = metadata;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListRoomsRequest {

	ListRoomsRequest(
	this.names,);

    List<String> names;
    
	
	factory ListRoomsRequest.fromJson(Map<String,dynamic> json) {
		

		return new ListRoomsRequest(
		json['names'] != null ? (json['names'] as List).cast<String>() : <String>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['names'] = names?.map((l) => l)?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListRoomsResponse {

	ListRoomsResponse(
	this.rooms,);

    List<Room> rooms;
    
	
	factory ListRoomsResponse.fromJson(Map<String,dynamic> json) {
		

		return new ListRoomsResponse(
		json['rooms'] != null
          ? (json['rooms'] as List)
              .map((d) => new Room.fromJson(d))
              .toList()
          : <Room>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['rooms'] = rooms?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DeleteRoomRequest {

	DeleteRoomRequest(
	this.room,);

    String room;
    
	
	factory DeleteRoomRequest.fromJson(Map<String,dynamic> json) {
		

		return new DeleteRoomRequest(
		json['room'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DeleteRoomResponse {

	DeleteRoomResponse(
	);

    
	
	factory DeleteRoomResponse.fromJson(Map<String,dynamic> json) {

		return new DeleteRoomResponse(
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListParticipantsRequest {

	ListParticipantsRequest(
	this.room,);

    String room;
    
	
	factory ListParticipantsRequest.fromJson(Map<String,dynamic> json) {
		

		return new ListParticipantsRequest(
		json['room'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ListParticipantsResponse {

	ListParticipantsResponse(
	this.participants,);

    List<ParticipantInfo> participants;
    
	
	factory ListParticipantsResponse.fromJson(Map<String,dynamic> json) {
		

		return new ListParticipantsResponse(
		json['participants'] != null
          ? (json['participants'] as List)
              .map((d) => new ParticipantInfo.fromJson(d))
              .toList()
          : <ParticipantInfo>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['participants'] = participants?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class RoomParticipantIdentity {

	RoomParticipantIdentity(
	this.room,this.identity,);

    String room;
    String identity;
    
	
	factory RoomParticipantIdentity.fromJson(Map<String,dynamic> json) {
		
		

		return new RoomParticipantIdentity(
		json['room'] as String,
		json['identity'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
    	map['identity'] = identity;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class RemoveParticipantResponse {

	RemoveParticipantResponse(
	);

    
	
	factory RemoveParticipantResponse.fromJson(Map<String,dynamic> json) {

		return new RemoveParticipantResponse(
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class MuteRoomTrackRequest {

	MuteRoomTrackRequest(
	this.room,this.identity,this.trackSid,this.muted,);

    String room;
    String identity;
    String trackSid;
    bool muted;
    
	
	factory MuteRoomTrackRequest.fromJson(Map<String,dynamic> json) {
		
		
		
		

		return new MuteRoomTrackRequest(
		json['room'] as String,
		json['identity'] as String,
		json['track_sid'] as String,
		json['muted'] as bool,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
    	map['identity'] = identity;
    	map['track_sid'] = trackSid;
    	map['muted'] = muted;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class MuteRoomTrackResponse {

	MuteRoomTrackResponse(
	this.track,);

    TrackInfo track;
    
	
	factory MuteRoomTrackResponse.fromJson(Map<String,dynamic> json) {
		

		return new MuteRoomTrackResponse(
		new TrackInfo.fromJson(json['track']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['track'] = track.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UpdateParticipantRequest {

	UpdateParticipantRequest(
	this.room,this.identity,this.metadata,this.permission,);

    String room;
    String identity;
    String metadata;
    ParticipantPermission permission;
    
	
	factory UpdateParticipantRequest.fromJson(Map<String,dynamic> json) {
		
		
		
		

		return new UpdateParticipantRequest(
		json['room'] as String,
		json['identity'] as String,
		json['metadata'] as String,
		new ParticipantPermission.fromJson(json['permission']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
    	map['identity'] = identity;
    	map['metadata'] = metadata;
		map['permission'] = permission.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UpdateSubscriptionsRequest {

	UpdateSubscriptionsRequest(
	this.room,this.identity,this.trackSids,this.subscribe,this.participantTracks,);

    String room;
    String identity;
    List<String> trackSids;
    bool subscribe;
    List<ParticipantTracks> participantTracks;
    
	
	factory UpdateSubscriptionsRequest.fromJson(Map<String,dynamic> json) {
		
		
		
		
		

		return new UpdateSubscriptionsRequest(
		json['room'] as String,
		json['identity'] as String,
		json['track_sids'] != null ? (json['track_sids'] as List).cast<String>() : <String>[],
		
		json['subscribe'] as bool,
		json['participant_tracks'] != null
          ? (json['participant_tracks'] as List)
              .map((d) => new ParticipantTracks.fromJson(d))
              .toList()
          : <ParticipantTracks>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
    	map['identity'] = identity;
		map['track_sids'] = trackSids?.map((l) => l)?.toList();
    	map['subscribe'] = subscribe;
		map['participant_tracks'] = participantTracks?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UpdateSubscriptionsResponse {

	UpdateSubscriptionsResponse(
	);

    
	
	factory UpdateSubscriptionsResponse.fromJson(Map<String,dynamic> json) {

		return new UpdateSubscriptionsResponse(
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class SendDataRequest {

	SendDataRequest(
	this.room,this.data,this.kind,this.destinationSids,);

    String room;
    String data;
    String kind;
    List<String> destinationSids;
    
	
	factory SendDataRequest.fromJson(Map<String,dynamic> json) {
		
		
		
		

		return new SendDataRequest(
		json['room'] as String,
		json['data'] as String,
		json['kind'] as String,
		json['destination_sids'] != null ? (json['destination_sids'] as List).cast<String>() : <String>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
    	map['data'] = data;
    	map['kind'] = kind;
		map['destination_sids'] = destinationSids?.map((l) => l)?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class SendDataResponse {

	SendDataResponse(
	);

    
	
	factory SendDataResponse.fromJson(Map<String,dynamic> json) {

		return new SendDataResponse(
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UpdateRoomMetadataRequest {

	UpdateRoomMetadataRequest(
	this.room,this.metadata,);

    String room;
    String metadata;
    
	
	factory UpdateRoomMetadataRequest.fromJson(Map<String,dynamic> json) {
		
		

		return new UpdateRoomMetadataRequest(
		json['room'] as String,
		json['metadata'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['room'] = room;
    	map['metadata'] = metadata;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

abstract class RoomService {
	Future<Room>createRoom(CreateRoomRequest createRoomRequest);
	Future<ListRoomsResponse>listRooms(ListRoomsRequest listRoomsRequest);
	Future<DeleteRoomResponse>deleteRoom(DeleteRoomRequest deleteRoomRequest);
	Future<ListParticipantsResponse>listParticipants(ListParticipantsRequest listParticipantsRequest);
	Future<ParticipantInfo>getParticipant(RoomParticipantIdentity roomParticipantIdentity);
	Future<RemoveParticipantResponse>removeParticipant(RoomParticipantIdentity roomParticipantIdentity);
	Future<MuteRoomTrackResponse>mutePublishedTrack(MuteRoomTrackRequest muteRoomTrackRequest);
	Future<ParticipantInfo>updateParticipant(UpdateParticipantRequest updateParticipantRequest);
	Future<UpdateSubscriptionsResponse>updateSubscriptions(UpdateSubscriptionsRequest updateSubscriptionsRequest);
	Future<SendDataResponse>sendData(SendDataRequest sendDataRequest);
	Future<Room>updateRoomMetadata(UpdateRoomMetadataRequest updateRoomMetadataRequest);
}

class DefaultRoomService implements RoomService {
	final String hostname;
    Requester _requester;
	final _pathPrefix = "/twirp/livekit.RoomService/";

    DefaultRoomService(this.hostname, {Requester requester}) {
		if (requester == null) {
      		_requester = new Requester(new Client());
    	} else {
			_requester = requester;
		}
	}

    
	Future<Room>createRoom(CreateRoomRequest createRoomRequest) async {
		var url = "${hostname}${_pathPrefix}CreateRoom";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(createRoomRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return Room.fromJson(value);
	}
    
	Future<ListRoomsResponse>listRooms(ListRoomsRequest listRoomsRequest) async {
		var url = "${hostname}${_pathPrefix}ListRooms";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(listRoomsRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ListRoomsResponse.fromJson(value);
	}
    
	Future<DeleteRoomResponse>deleteRoom(DeleteRoomRequest deleteRoomRequest) async {
		var url = "${hostname}${_pathPrefix}DeleteRoom";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(deleteRoomRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return DeleteRoomResponse.fromJson(value);
	}
    
	Future<ListParticipantsResponse>listParticipants(ListParticipantsRequest listParticipantsRequest) async {
		var url = "${hostname}${_pathPrefix}ListParticipants";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(listParticipantsRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ListParticipantsResponse.fromJson(value);
	}
    
	Future<ParticipantInfo>getParticipant(RoomParticipantIdentity roomParticipantIdentity) async {
		var url = "${hostname}${_pathPrefix}GetParticipant";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(roomParticipantIdentity.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ParticipantInfo.fromJson(value);
	}
    
	Future<RemoveParticipantResponse>removeParticipant(RoomParticipantIdentity roomParticipantIdentity) async {
		var url = "${hostname}${_pathPrefix}RemoveParticipant";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(roomParticipantIdentity.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return RemoveParticipantResponse.fromJson(value);
	}
    
	Future<MuteRoomTrackResponse>mutePublishedTrack(MuteRoomTrackRequest muteRoomTrackRequest) async {
		var url = "${hostname}${_pathPrefix}MutePublishedTrack";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(muteRoomTrackRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return MuteRoomTrackResponse.fromJson(value);
	}
    
	Future<ParticipantInfo>updateParticipant(UpdateParticipantRequest updateParticipantRequest) async {
		var url = "${hostname}${_pathPrefix}UpdateParticipant";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(updateParticipantRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return ParticipantInfo.fromJson(value);
	}
    
	Future<UpdateSubscriptionsResponse>updateSubscriptions(UpdateSubscriptionsRequest updateSubscriptionsRequest) async {
		var url = "${hostname}${_pathPrefix}UpdateSubscriptions";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(updateSubscriptionsRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return UpdateSubscriptionsResponse.fromJson(value);
	}
    
	Future<SendDataResponse>sendData(SendDataRequest sendDataRequest) async {
		var url = "${hostname}${_pathPrefix}SendData";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(sendDataRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return SendDataResponse.fromJson(value);
	}
    
	Future<Room>updateRoomMetadata(UpdateRoomMetadataRequest updateRoomMetadataRequest) async {
		var url = "${hostname}${_pathPrefix}UpdateRoomMetadata";
		var uri = Uri.parse(url);
    	var request = new Request('POST', uri);
		request.headers['Content-Type'] = 'application/json';
    	request.body = json.encode(updateRoomMetadataRequest.toJson());
    	var response = await _requester.send(request);
		if (response.statusCode != 200) {
     		throw twirpException(response);
    	}
    	var value = json.decode(response.body);
    	return Room.fromJson(value);
	}
    

	Exception twirpException(Response response) {
    	try {
      		var value = json.decode(response.body);
      		return new TwirpJsonException.fromJson(value);
    	} catch (e) {
      		return new TwirpException(response.body);
    	}
  	}
}



