import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 16, // المسافة الأفقية بين البطاقات
        runSpacing: 16, // المسافة الرأسية بين الصفوف
        alignment: WrapAlignment.center,
        children: const [
          ProjectCard(
            title: "Smart Store",
            description:
                "An app for managing grocery shopping lists and purchases.",
            videoPath: "assets/videos/smartstore.mp4",
            githubUrl: "https://github.com/engbasel/Grocery-Market-App",
            features: [
              "Flutter framework for cross-platform development",
              "Firebase for real-time data storage",
              "Create, manage, and share shopping lists",
              "Barcode scanning for quick item addition",
              "Customizable themes",
            ],
          ),
          ProjectCard(
            title: "Doner App",
            description:
                "An app for managing pet health records and appointments.",
            videoPath: "assets/videos/Doner.mp4",
            githubUrl: "https://github.com/engAhmedSami/blood_bank",
            features: [
              "Flutter for cross-platform development",
              "Firebase for real-time data storage",
              "Appointment scheduling & management",
              "Pet health record management",
              "User-friendly interface",
            ],
          ),
          ProjectCard(
            title: "Notes App",
            description:
                "A simple app for taking notes with customizable colors for each note.",
            videoPath: "assets/videos/NotesApp.mp4",
            githubUrl: "https://github.com/engbasel/Notes-App-SQflite",
            features: [
              "SQflite for local database storage",
              "Customizable note colors",
              "CRUD operations for notes",
              "Search & sorting functionality",
              "Simple and intuitive UI",
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String videoPath;
  final String githubUrl;
  final List<String> features;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.videoPath,
    required this.githubUrl,
    required this.features,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  late VideoPlayerController _controller;
  bool isInitialized = false;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        if (mounted) {
          setState(() {
            isInitialized = true;
          });
        }
      }).catchError((error) {
        log("Error initializing video: $error");
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  void _toggleVideo() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        isPlaying = false;
      } else {
        _controller.play();
        isPlaying = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, // تحديد عرض البطاقة
      decoration: BoxDecoration(
        color: Colors.blueGrey[900], // لون داكن أنيق
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 4))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: GestureDetector(
              onTap: _toggleVideo,
              child: isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          VideoPlayer(_controller),
                          if (!isPlaying)
                            Icon(Icons.play_circle_fill,
                                color: Colors.white70, size: 50),
                        ],
                      ),
                    )
                  : Container(
                      height: 180,
                      color: Colors.black12,
                      child: const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      ),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 5),
                Text(widget.description,
                    style:
                        const TextStyle(fontSize: 14, color: Colors.white70)),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => _launchUrl(widget.githubUrl),
                  child: const Text("Source Code",
                      style: TextStyle(color: Colors.blue)),
                ),
                const SizedBox(height: 10),
                const Text("Features:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const SizedBox(height: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.features
                      .map((feature) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Text("• $feature",
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white70)),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
