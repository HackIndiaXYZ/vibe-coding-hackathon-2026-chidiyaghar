import 'dart:convert';

class TranslationMessage {
  final int? id;
  final int sessionId;
  final int speakerId;
  final String originalText;
  final String translatedText;
  final DateTime timestamp;

  TranslationMessage({
    this.id,
    required this.sessionId,
    required this.speakerId,
    required this.originalText,
    required this.translatedText,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sessionId': sessionId,
      'speakerId': speakerId,
      'originalText': originalText,
      'translatedText': translatedText,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory TranslationMessage.fromMap(Map<String, dynamic> map) {
    return TranslationMessage(
      id: map['id'],
      sessionId: map['sessionId'],
      speakerId: map['speakerId'],
      originalText: map['originalText'],
      translatedText: map['translatedText'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }
}

class TranslationSession {
  final int? id;
  final String title;
  final DateTime createdAt;

  TranslationSession({
    this.id,
    required this.title,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory TranslationSession.fromMap(Map<String, dynamic> map) {
    return TranslationSession(
      id: map['id'],
      title: map['title'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }
}
