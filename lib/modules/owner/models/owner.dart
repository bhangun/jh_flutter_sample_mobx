
import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';



class Owner {
    final int id;
    final String name;
    
    const Owner ({  
        this.id, 
        this.name, 
    });

    factory Owner.fromJson(Map<String, dynamic> json) =>  Owner(
        id: json['id'],
        name: json['name'],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };

    static List<Owner> listFromString(String str) => new List<Owner>.from(json.decode(str).map((x) => Owner.fromJson(x)));

    static List<Owner> listFromJson(List<dynamic> data) {
        return data.map((post) => Owner.fromJson(post)).toList();
    }

    static String listOwnerToJson(List<Owner> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));
}

class OwnerList {
  final List<Owner> owners;

  OwnerList({
    this.owners,
  });

  factory OwnerList.fromJson(List<dynamic> json) {
    List<Owner> owners = List<Owner>();
    owners = json.map((post) => Owner.fromJson(post)).toList();

    return OwnerList(
      owners: owners,
    );
  }
}



