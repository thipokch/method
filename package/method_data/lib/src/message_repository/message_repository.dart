import 'package:firebase_messaging/firebase_messaging.dart';

/// {@template message_repository}
/// MessageRepository description
/// {@endtemplate}
class MessageRepository {
  /// {@macro message_repository}
  const MessageRepository({required FirebaseMessaging messaging})
      : _messaging = messaging;

  // Delegate

  final FirebaseMessaging _messaging;
}
