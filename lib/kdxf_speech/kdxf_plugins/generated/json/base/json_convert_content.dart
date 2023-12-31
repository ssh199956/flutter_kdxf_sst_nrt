// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.

import '../../../bean/response_data_entity.dart';
import '../response_data_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
		switch (type) {
			case ResponseData:
				return responseDataFromJson(data as ResponseData, json) as T;
			case Data:
				return dataFromJson(data as Data, json) as T;
			case Result:
				return resultFromJson(data as Result, json) as T;
			case Ws:
				return wsFromJson(data as Ws, json) as T;
			case Cw:
				return cwFromJson(data as Cw, json) as T;    }
		return data as T;
	}

  static _getToJson<T>(Type type, data) {
		switch (type) {
			case ResponseData:
				return responseDataToJson(data as ResponseData);
			case Data:
				return dataToJson(data as Data);
			case Result:
				return resultToJson(data as Result);
			case Ws:
				return wsToJson(data as Ws);
			case Cw:
				return cwToJson(data as Cw);
			}
			return data as T;
		}
  //Go back to a single instance by type
	static _fromJsonSingle<M>( json) {
		String type = M.toString();
		if(type == (ResponseData).toString()){
			return ResponseData().fromJson(json);
		}
		if(type == (Data).toString()){
			return Data().fromJson(json);
		}
		if(type == (Result).toString()){
			return Result().fromJson(json);
		}
		if(type == (Ws).toString()){
			return Ws().fromJson(json);
		}
		if(type == (Cw).toString()){
			return Cw().fromJson(json);
		}

		return null;
	}

  //list is returned by type
	static M _getListChildType<M>(List data) {
		if(<ResponseData>[] is M){
			return data.map<ResponseData>((e) => ResponseData().fromJson(e)).toList() as M;
		}
		if(<Data>[] is M){
			return data.map<Data>((e) => Data().fromJson(e)).toList() as M;
		}
		if(<Result>[] is M){
			return data.map<Result>((e) => Result().fromJson(e)).toList() as M;
		}
		if(<Ws>[] is M){
			return data.map<Ws>((e) => Ws().fromJson(e)).toList() as M;
		}
		if(<Cw>[] is M){
			return data.map<Cw>((e) => Cw().fromJson(e)).toList() as M;
		}

		throw Exception("not found");
	}

  static M fromJsonAsT<M>(json) {
		if (json is List) {
			return _getListChildType<M>(json);
		} else {
			return _fromJsonSingle<M>(json) as M;
		}
	}
}