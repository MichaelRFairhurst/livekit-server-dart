
import 'dart:convert';
class Room {

	Room(
	this.sid,this.name,this.emptyTimeout,this.maxParticipants,this.creationTime,this.turnPassword,this.enabledCodecs,this.metadata,this.numParticipants,this.activeRecording,);

    String sid;
    String name;
    String emptyTimeout;
    String maxParticipants;
    int creationTime;
    String turnPassword;
    List<Codec> enabledCodecs;
    String metadata;
    String numParticipants;
    bool activeRecording;
    
	
	factory Room.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		

		return new Room(
		json['sid'] as String,
		json['name'] as String,
		json['empty_timeout'] as String,
		json['max_participants'] as String,
		json['creation_time'] as int,
		json['turn_password'] as String,
		json['enabled_codecs'] != null
          ? (json['enabled_codecs'] as List)
              .map((d) => new Codec.fromJson(d))
              .toList()
          : <Codec>[],
		
		json['metadata'] as String,
		json['num_participants'] as String,
		json['active_recording'] as bool,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['sid'] = sid;
    	map['name'] = name;
    	map['empty_timeout'] = emptyTimeout;
    	map['max_participants'] = maxParticipants;
    	map['creation_time'] = creationTime;
    	map['turn_password'] = turnPassword;
		map['enabled_codecs'] = enabledCodecs?.map((l) => l.toJson())?.toList();
    	map['metadata'] = metadata;
    	map['num_participants'] = numParticipants;
    	map['active_recording'] = activeRecording;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class Codec {

	Codec(
	this.mime,this.fmtpLine,);

    String mime;
    String fmtpLine;
    
	
	factory Codec.fromJson(Map<String,dynamic> json) {
		
		

		return new Codec(
		json['mime'] as String,
		json['fmtp_line'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['mime'] = mime;
    	map['fmtp_line'] = fmtpLine;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ParticipantPermission {

	ParticipantPermission(
	this.canSubscribe,this.canPublish,this.canPublishData,this.hidden,this.recorder,);

    bool canSubscribe;
    bool canPublish;
    bool canPublishData;
    bool hidden;
    bool recorder;
    
	
	factory ParticipantPermission.fromJson(Map<String,dynamic> json) {
		
		
		
		
		

		return new ParticipantPermission(
		json['can_subscribe'] as bool,
		json['can_publish'] as bool,
		json['can_publish_data'] as bool,
		json['hidden'] as bool,
		json['recorder'] as bool,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['can_subscribe'] = canSubscribe;
    	map['can_publish'] = canPublish;
    	map['can_publish_data'] = canPublishData;
    	map['hidden'] = hidden;
    	map['recorder'] = recorder;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ParticipantInfo {

	ParticipantInfo(
	this.sid,this.identity,this.state,this.tracks,this.metadata,this.joinedAt,this.name,this.version,this.permission,this.region,this.isPublisher,);

    String sid;
    String identity;
    String state;
    List<TrackInfo> tracks;
    String metadata;
    int joinedAt;
    String name;
    String version;
    ParticipantPermission permission;
    String region;
    bool isPublisher;
    
	
	factory ParticipantInfo.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		
		

		return new ParticipantInfo(
		json['sid'] as String,
		json['identity'] as String,
		json['state'] as String,
		json['tracks'] != null
          ? (json['tracks'] as List)
              .map((d) => new TrackInfo.fromJson(d))
              .toList()
          : <TrackInfo>[],
		
		json['metadata'] as String,
		json['joined_at'] as int,
		json['name'] as String,
		json['version'] as String,
		new ParticipantPermission.fromJson(json['permission']),
		
		json['region'] as String,
		json['is_publisher'] as bool,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['sid'] = sid;
    	map['identity'] = identity;
    	map['state'] = state;
		map['tracks'] = tracks?.map((l) => l.toJson())?.toList();
    	map['metadata'] = metadata;
    	map['joined_at'] = joinedAt;
    	map['name'] = name;
    	map['version'] = version;
		map['permission'] = permission.toJson();
    	map['region'] = region;
    	map['is_publisher'] = isPublisher;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class SimulcastCodecInfo {

	SimulcastCodecInfo(
	this.mimeType,this.mid,this.cid,this.layers,);

    String mimeType;
    String mid;
    String cid;
    List<VideoLayer> layers;
    
	
	factory SimulcastCodecInfo.fromJson(Map<String,dynamic> json) {
		
		
		
		

		return new SimulcastCodecInfo(
		json['mime_type'] as String,
		json['mid'] as String,
		json['cid'] as String,
		json['layers'] != null
          ? (json['layers'] as List)
              .map((d) => new VideoLayer.fromJson(d))
              .toList()
          : <VideoLayer>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['mime_type'] = mimeType;
    	map['mid'] = mid;
    	map['cid'] = cid;
		map['layers'] = layers?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class TrackInfo {

	TrackInfo(
	this.sid,this.type,this.name,this.muted,this.width,this.height,this.simulcast,this.disableDtx,this.source,this.layers,this.mimeType,this.mid,this.codecs,);

    String sid;
    String type;
    String name;
    bool muted;
    String width;
    String height;
    bool simulcast;
    bool disableDtx;
    String source;
    List<VideoLayer> layers;
    String mimeType;
    String mid;
    List<SimulcastCodecInfo> codecs;
    
	
	factory TrackInfo.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		
		
		
		

		return new TrackInfo(
		json['sid'] as String,
		json['type'] as String,
		json['name'] as String,
		json['muted'] as bool,
		json['width'] as String,
		json['height'] as String,
		json['simulcast'] as bool,
		json['disable_dtx'] as bool,
		json['source'] as String,
		json['layers'] != null
          ? (json['layers'] as List)
              .map((d) => new VideoLayer.fromJson(d))
              .toList()
          : <VideoLayer>[],
		
		json['mime_type'] as String,
		json['mid'] as String,
		json['codecs'] != null
          ? (json['codecs'] as List)
              .map((d) => new SimulcastCodecInfo.fromJson(d))
              .toList()
          : <SimulcastCodecInfo>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['sid'] = sid;
    	map['type'] = type;
    	map['name'] = name;
    	map['muted'] = muted;
    	map['width'] = width;
    	map['height'] = height;
    	map['simulcast'] = simulcast;
    	map['disable_dtx'] = disableDtx;
    	map['source'] = source;
		map['layers'] = layers?.map((l) => l.toJson())?.toList();
    	map['mime_type'] = mimeType;
    	map['mid'] = mid;
		map['codecs'] = codecs?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class VideoLayer {

	VideoLayer(
	this.quality,this.width,this.height,this.bitrate,this.ssrc,);

    String quality;
    String width;
    String height;
    String bitrate;
    String ssrc;
    
	
	factory VideoLayer.fromJson(Map<String,dynamic> json) {
		
		
		
		
		

		return new VideoLayer(
		json['quality'] as String,
		json['width'] as String,
		json['height'] as String,
		json['bitrate'] as String,
		json['ssrc'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['quality'] = quality;
    	map['width'] = width;
    	map['height'] = height;
    	map['bitrate'] = bitrate;
    	map['ssrc'] = ssrc;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DataPacket {

	DataPacket(
	this.kind,this.user,this.speaker,);

    String kind;
    UserPacket user;
    ActiveSpeakerUpdate speaker;
    
	
	factory DataPacket.fromJson(Map<String,dynamic> json) {
		
		
		

		return new DataPacket(
		json['kind'] as String,
		new UserPacket.fromJson(json['user']),
		
		new ActiveSpeakerUpdate.fromJson(json['speaker']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['kind'] = kind;
		map['user'] = user.toJson();
		map['speaker'] = speaker.toJson();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ActiveSpeakerUpdate {

	ActiveSpeakerUpdate(
	this.speakers,);

    List<SpeakerInfo> speakers;
    
	
	factory ActiveSpeakerUpdate.fromJson(Map<String,dynamic> json) {
		

		return new ActiveSpeakerUpdate(
		json['speakers'] != null
          ? (json['speakers'] as List)
              .map((d) => new SpeakerInfo.fromJson(d))
              .toList()
          : <SpeakerInfo>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['speakers'] = speakers?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class SpeakerInfo {

	SpeakerInfo(
	this.sid,this.level,this.active,);

    String sid;
    String level;
    bool active;
    
	
	factory SpeakerInfo.fromJson(Map<String,dynamic> json) {
		
		
		

		return new SpeakerInfo(
		json['sid'] as String,
		json['level'] as String,
		json['active'] as bool,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['sid'] = sid;
    	map['level'] = level;
    	map['active'] = active;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class UserPacket {

	UserPacket(
	this.participantSid,this.payload,this.destinationSids,);

    String participantSid;
    String payload;
    List<String> destinationSids;
    
	
	factory UserPacket.fromJson(Map<String,dynamic> json) {
		
		
		

		return new UserPacket(
		json['participant_sid'] as String,
		json['payload'] as String,
		json['destination_sids'] != null ? (json['destination_sids'] as List).cast<String>() : <String>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['participant_sid'] = participantSid;
    	map['payload'] = payload;
		map['destination_sids'] = destinationSids?.map((l) => l)?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ParticipantTracks {

	ParticipantTracks(
	this.participantSid,this.trackSids,);

    String participantSid;
    List<String> trackSids;
    
	
	factory ParticipantTracks.fromJson(Map<String,dynamic> json) {
		
		

		return new ParticipantTracks(
		json['participant_sid'] as String,
		json['track_sids'] != null ? (json['track_sids'] as List).cast<String>() : <String>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['participant_sid'] = participantSid;
		map['track_sids'] = trackSids?.map((l) => l)?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ServerInfo {

	ServerInfo(
	this.edition,this.version,this.protocol,this.region,this.nodeId,this.debugInfo,);

    String edition;
    String version;
    int protocol;
    String region;
    String nodeId;
    String debugInfo;
    
	
	factory ServerInfo.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		

		return new ServerInfo(
		json['edition'] as String,
		json['version'] as String,
		json['protocol'] as int,
		json['region'] as String,
		json['node_id'] as String,
		json['debug_info'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['edition'] = edition;
    	map['version'] = version;
    	map['protocol'] = protocol;
    	map['region'] = region;
    	map['node_id'] = nodeId;
    	map['debug_info'] = debugInfo;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ClientInfo {

	ClientInfo(
	this.sdk,this.version,this.protocol,this.os,this.osVersion,this.deviceModel,this.browser,this.browserVersion,this.address,this.network,);

    String sdk;
    String version;
    int protocol;
    String os;
    String osVersion;
    String deviceModel;
    String browser;
    String browserVersion;
    String address;
    String network;
    
	
	factory ClientInfo.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		

		return new ClientInfo(
		json['sdk'] as String,
		json['version'] as String,
		json['protocol'] as int,
		json['os'] as String,
		json['os_version'] as String,
		json['device_model'] as String,
		json['browser'] as String,
		json['browser_version'] as String,
		json['address'] as String,
		json['network'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['sdk'] = sdk;
    	map['version'] = version;
    	map['protocol'] = protocol;
    	map['os'] = os;
    	map['os_version'] = osVersion;
    	map['device_model'] = deviceModel;
    	map['browser'] = browser;
    	map['browser_version'] = browserVersion;
    	map['address'] = address;
    	map['network'] = network;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class ClientConfiguration {

	ClientConfiguration(
	this.video,this.screen,this.resumeConnection,this.disabledCodecs,this.forceRelay,);

    VideoConfiguration video;
    VideoConfiguration screen;
    String resumeConnection;
    DisabledCodecs disabledCodecs;
    String forceRelay;
    
	
	factory ClientConfiguration.fromJson(Map<String,dynamic> json) {
		
		
		
		
		

		return new ClientConfiguration(
		new VideoConfiguration.fromJson(json['video']),
		
		new VideoConfiguration.fromJson(json['screen']),
		
		json['resume_connection'] as String,
		new DisabledCodecs.fromJson(json['disabled_codecs']),
		
		json['force_relay'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['video'] = video.toJson();
		map['screen'] = screen.toJson();
    	map['resume_connection'] = resumeConnection;
		map['disabled_codecs'] = disabledCodecs.toJson();
    	map['force_relay'] = forceRelay;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class VideoConfiguration {

	VideoConfiguration(
	this.hardwareEncoder,);

    String hardwareEncoder;
    
	
	factory VideoConfiguration.fromJson(Map<String,dynamic> json) {
		

		return new VideoConfiguration(
		json['hardware_encoder'] as String,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['hardware_encoder'] = hardwareEncoder;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class DisabledCodecs {

	DisabledCodecs(
	this.codecs,);

    List<Codec> codecs;
    
	
	factory DisabledCodecs.fromJson(Map<String,dynamic> json) {
		

		return new DisabledCodecs(
		json['codecs'] != null
          ? (json['codecs'] as List)
              .map((d) => new Codec.fromJson(d))
              .toList()
          : <Codec>[],
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['codecs'] = codecs?.map((l) => l.toJson())?.toList();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class RTPStats {

	RTPStats(
	this.startTime,this.endTime,this.duration,this.packets,this.packetRate,this.bytes,this.headerBytes,this.bitrate,this.packetsLost,this.packetLossRate,this.packetLossPercentage,this.packetsDuplicate,this.packetDuplicateRate,this.bytesDuplicate,this.headerBytesDuplicate,this.bitrateDuplicate,this.packetsPadding,this.packetPaddingRate,this.bytesPadding,this.headerBytesPadding,this.bitratePadding,this.packetsOutOfOrder,this.frames,this.frameRate,this.jitterCurrent,this.jitterMax,this.gapHistogram,this.nacks,this.nackAcks,this.nackMisses,this.nackRepeated,this.plis,this.lastPli,this.firs,this.lastFir,this.rttCurrent,this.rttMax,this.keyFrames,this.lastKeyFrame,this.layerLockPlis,this.lastLayerLockPli,);

    DateTime startTime;
    DateTime endTime;
    double duration;
    String packets;
    double packetRate;
    String bytes;
    String headerBytes;
    double bitrate;
    String packetsLost;
    double packetLossRate;
    String packetLossPercentage;
    String packetsDuplicate;
    double packetDuplicateRate;
    String bytesDuplicate;
    String headerBytesDuplicate;
    double bitrateDuplicate;
    String packetsPadding;
    double packetPaddingRate;
    String bytesPadding;
    String headerBytesPadding;
    double bitratePadding;
    String packetsOutOfOrder;
    String frames;
    double frameRate;
    double jitterCurrent;
    double jitterMax;
    Map<int,String> gapHistogram;
    String nacks;
    String nackAcks;
    String nackMisses;
    String nackRepeated;
    String plis;
    DateTime lastPli;
    String firs;
    DateTime lastFir;
    String rttCurrent;
    String rttMax;
    String keyFrames;
    DateTime lastKeyFrame;
    String layerLockPlis;
    DateTime lastLayerLockPli;
    
	
	factory RTPStats.fromJson(Map<String,dynamic> json) {
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			var gapHistogramMap = new Map<int,String>();
			(json['gap_histogram'] as Map<String, dynamic>)?.forEach((key, val) {
				
				if (val is String) {
					
					
				} else if (val is num) {
					
					
				}
				
			});
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		return new RTPStats(
		DateTime.tryParse(json['start_time']),
		
		DateTime.tryParse(json['end_time']),
		
		json['duration'] as double,
		json['packets'] as String,
		json['packet_rate'] as double,
		json['bytes'] as String,
		json['header_bytes'] as String,
		json['bitrate'] as double,
		json['packets_lost'] as String,
		json['packet_loss_rate'] as double,
		json['packet_loss_percentage'] as String,
		json['packets_duplicate'] as String,
		json['packet_duplicate_rate'] as double,
		json['bytes_duplicate'] as String,
		json['header_bytes_duplicate'] as String,
		json['bitrate_duplicate'] as double,
		json['packets_padding'] as String,
		json['packet_padding_rate'] as double,
		json['bytes_padding'] as String,
		json['header_bytes_padding'] as String,
		json['bitrate_padding'] as double,
		json['packets_out_of_order'] as String,
		json['frames'] as String,
		json['frame_rate'] as double,
		json['jitter_current'] as double,
		json['jitter_max'] as double,
		gapHistogramMap,
		
		json['nacks'] as String,
		json['nack_acks'] as String,
		json['nack_misses'] as String,
		json['nack_repeated'] as String,
		json['plis'] as String,
		DateTime.tryParse(json['last_pli']),
		
		json['firs'] as String,
		DateTime.tryParse(json['last_fir']),
		
		json['rtt_current'] as String,
		json['rtt_max'] as String,
		json['key_frames'] as String,
		DateTime.tryParse(json['last_key_frame']),
		
		json['layer_lock_plis'] as String,
		DateTime.tryParse(json['last_layer_lock_pli']),
		
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		map['start_time'] = startTime.toIso8601String();
		map['end_time'] = endTime.toIso8601String();
    	map['duration'] = duration;
    	map['packets'] = packets;
    	map['packet_rate'] = packetRate;
    	map['bytes'] = bytes;
    	map['header_bytes'] = headerBytes;
    	map['bitrate'] = bitrate;
    	map['packets_lost'] = packetsLost;
    	map['packet_loss_rate'] = packetLossRate;
    	map['packet_loss_percentage'] = packetLossPercentage;
    	map['packets_duplicate'] = packetsDuplicate;
    	map['packet_duplicate_rate'] = packetDuplicateRate;
    	map['bytes_duplicate'] = bytesDuplicate;
    	map['header_bytes_duplicate'] = headerBytesDuplicate;
    	map['bitrate_duplicate'] = bitrateDuplicate;
    	map['packets_padding'] = packetsPadding;
    	map['packet_padding_rate'] = packetPaddingRate;
    	map['bytes_padding'] = bytesPadding;
    	map['header_bytes_padding'] = headerBytesPadding;
    	map['bitrate_padding'] = bitratePadding;
    	map['packets_out_of_order'] = packetsOutOfOrder;
    	map['frames'] = frames;
    	map['frame_rate'] = frameRate;
    	map['jitter_current'] = jitterCurrent;
    	map['jitter_max'] = jitterMax;
		map['gap_histogram'] = json.decode(json.encode(gapHistogram));
    	map['nacks'] = nacks;
    	map['nack_acks'] = nackAcks;
    	map['nack_misses'] = nackMisses;
    	map['nack_repeated'] = nackRepeated;
    	map['plis'] = plis;
		map['last_pli'] = lastPli.toIso8601String();
    	map['firs'] = firs;
		map['last_fir'] = lastFir.toIso8601String();
    	map['rtt_current'] = rttCurrent;
    	map['rtt_max'] = rttMax;
    	map['key_frames'] = keyFrames;
		map['last_key_frame'] = lastKeyFrame.toIso8601String();
    	map['layer_lock_plis'] = layerLockPlis;
		map['last_layer_lock_pli'] = lastLayerLockPli.toIso8601String();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class TimedVersion {

	TimedVersion(
	this.unixMicro,this.ticks,);

    int unixMicro;
    int ticks;
    
	
	factory TimedVersion.fromJson(Map<String,dynamic> json) {
		
		

		return new TimedVersion(
		json['unix_micro'] as int,
		json['ticks'] as int,
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
    	map['unix_micro'] = unixMicro;
    	map['ticks'] = ticks;
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}


