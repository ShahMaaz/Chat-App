import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  hintText: "Type Message",
  border: InputBorder.none
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(
      color: Colors.lightBlueAccent,
      width: 2,
    ),
  ),
);

InputDecoration  kTextFieldDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blueAccent,
      width: 1,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blueAccent,
      width: 2,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
  ),
);