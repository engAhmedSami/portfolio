import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40), // تقليل الـ padding
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3, // تقليل العدد بحيث تظهر المربعات أصغر
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          SkillCard(
            icon: FontAwesomeIcons.mobileScreenButton,
            title: "Mobile App Development",
            skills: [
              {"text": "Flutter Development", "icon": FontAwesomeIcons.code},
              {"text": "Android Development", "icon": FontAwesomeIcons.android},
              {
                "text": "Cross-Platform Apps",
                "icon": FontAwesomeIcons.appStore
              },
              {
                "text": "Performance Optimization",
                "icon": FontAwesomeIcons.gaugeHigh
              },
              {"text": "API Integration", "icon": FontAwesomeIcons.gears},
              {"text": "Backend Integration", "icon": FontAwesomeIcons.server},
              {"text": "App Deployment", "icon": FontAwesomeIcons.upload},
              {"text": "UI/UX Integration", "icon": FontAwesomeIcons.palette},
              {"text": "Testing & Debugging", "icon": FontAwesomeIcons.bug},
            ],
          ),
          SkillCard(
            icon: FontAwesomeIcons.screwdriverWrench,
            title: "Tools",
            skills: [
              {"text": "Flutter", "icon": FontAwesomeIcons.code},
              {"text": "Dart", "icon": FontAwesomeIcons.arrowRight},
              {"text": "Android Studio", "icon": FontAwesomeIcons.laptop},
              {"text": "Java", "icon": FontAwesomeIcons.mugSaucer},
              {"text": "Firebase", "icon": FontAwesomeIcons.fire},
              {"text": "Git & GitHub", "icon": FontAwesomeIcons.git},
              {"text": "Postman", "icon": FontAwesomeIcons.paperPlane},
              {"text": "Xcode", "icon": FontAwesomeIcons.apple},
              {"text": "VSCode", "icon": FontAwesomeIcons.codeBranch},
            ],
          ),
          SkillCard(
            icon: FontAwesomeIcons.users,
            title: "Collaboration",
            skills: [
              {"text": "Self Learning", "icon": FontAwesomeIcons.lightbulb},
              {"text": "Teamwork", "icon": FontAwesomeIcons.users},
              {"text": "Problem-Solving", "icon": FontAwesomeIcons.brain},
              {"text": "Strong Communicator", "icon": FontAwesomeIcons.message},
              {"text": "Agile Methodology", "icon": FontAwesomeIcons.gears},
              {
                "text": "Detail-Oriented",
                "icon": FontAwesomeIcons.magnifyingGlass
              },
              {"text": "Clean Code Practices", "icon": FontAwesomeIcons.code},
            ],
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final List<Map<String, dynamic>> skills;

  const SkillCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.skills});

  @override
  SkillCardState createState() => SkillCardState();
}

class SkillCardState extends State<SkillCard> {
  double iconSize = 50;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => iconSize = 65),
      onExit: (_) => setState(() => iconSize = 50),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                child: Icon(widget.icon, size: iconSize, color: Colors.blue),
              ),
              SizedBox(height: 24),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ), // تحسين وضوح العنوان
              SizedBox(height: 16),
              SizedBox(
                height: 160, // زيادة الارتفاع لتناسب الأيقونات والنصوص
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  children: widget.skills
                      .map((skill) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(skill['icon'],
                                  size: 18,
                                  color:
                                      Colors.blue), // إضافة أيقونة بجانب النص
                              SizedBox(width: 14), // المسافة بين الأيقونة والنص
                              Expanded(
                                child: Text(
                                  skill['text'],
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ), // تحسين وضوح النص
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
