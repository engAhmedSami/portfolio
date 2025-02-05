import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16), // تقليل التباعد
      child: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount =
              1; // عرض عنصر واحد في كل صف لتناسب الموبايل بشكل عمودي

          if (constraints.maxWidth < 600) {
            // تصميم للأجهزة الصغيرة
            crossAxisCount = 1;
          }

          return GridView.count(
            shrinkWrap: true,
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio:
                0.8, // تغيير نسبة العرض/الارتفاع لجعل العناصر أطول
            children: [
              SkillCard(
                icon: FontAwesomeIcons.mobileScreenButton,
                title: "Mobile App Development",
                mobileSkills: [
                  {
                    "text": "Flutter Development",
                    "icon": FontAwesomeIcons.code
                  },
                  {
                    "text": "Android Development",
                    "icon": FontAwesomeIcons.android
                  },
                  {
                    "text": "Cross-Platform Apps",
                    "icon": FontAwesomeIcons.appStore
                  },
                  {
                    "text": "Performance Optimization",
                    "icon": FontAwesomeIcons.gaugeHigh
                  },
                  {"text": "API Integration", "icon": FontAwesomeIcons.gears},
                  {
                    "text": "Backend Integration",
                    "icon": FontAwesomeIcons.server
                  },
                  {"text": "App Deployment", "icon": FontAwesomeIcons.upload},
                  {
                    "text": "UI/UX Integration",
                    "icon": FontAwesomeIcons.palette
                  },
                  {"text": "Testing & Debugging", "icon": FontAwesomeIcons.bug},
                ],
              ),
              SkillCard(
                icon: FontAwesomeIcons.screwdriverWrench,
                title: "Tools",
                mobileSkills: [
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
                mobileSkills: [
                  {"text": "Self Learning", "icon": FontAwesomeIcons.lightbulb},
                  {"text": "Teamwork", "icon": FontAwesomeIcons.users},
                  {"text": "Problem-Solving", "icon": FontAwesomeIcons.brain},
                  {
                    "text": "Strong Communicator",
                    "icon": FontAwesomeIcons.message
                  },
                  {"text": "Agile Methodology", "icon": FontAwesomeIcons.gears},
                  {
                    "text": "Detail-Oriented",
                    "icon": FontAwesomeIcons.magnifyingGlass
                  },
                  {
                    "text": "Clean Code Practices",
                    "icon": FontAwesomeIcons.code
                  },
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class SkillCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final List<Map<String, dynamic>> mobileSkills;

  const SkillCard({
    super.key,
    required this.icon,
    required this.title,
    required this.mobileSkills,
  });

  @override
  SkillCardState createState() => SkillCardState();
}

class SkillCardState extends State<SkillCard> {
  double iconSize = 50;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // يمكنك إضافة أي تفاعل عند الضغط
      },
      child: MouseRegion(
        onEnter: (_) => setState(() => iconSize = 65),
        onExit: (_) => setState(() => iconSize = 50),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          color: const Color(0xFF0e0e10),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: Icon(widget.icon, size: iconSize, color: Colors.blue),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 14, // تقليل حجم النص للهواتف
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // محاذاة النص في الوسط
                ),
                const SizedBox(height: 16),
                // استخدام SingleChildScrollView حول Column للسماح بالتمرير
                SingleChildScrollView(
                  scrollDirection: Axis.vertical, // اجعل التمرير عمودي
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // محاذاة العناصر للجانب الأيسر
                    children: widget.mobileSkills.map((skill) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Icon(skill['icon'], size: 16, color: Colors.blue),
                            const SizedBox(width: 8),
                            Text(
                              skill['text'],
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
