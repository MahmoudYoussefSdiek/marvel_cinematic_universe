part of 'internet_cubit.dart';

@immutable
abstract class InternetState {}

class ConnectionInitial extends InternetState {}

class ConnectedState extends InternetState {}

class NotConnectedState extends InternetState {}
