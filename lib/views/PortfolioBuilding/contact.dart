import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioFooter extends StatelessWidget {
  const PortfolioFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 80),
      color: const Color(0xFF0a0a0c), // لون الخلفية الداكن
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 140,
            runSpacing: 30,
            children: [
              // 🔹 معلومات المطور
              SizedBox(
                width: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.design_services,
                            color: Colors.white, size: 20),
                        SizedBox(width: 8),
                        Text(
                          "Developer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "We provide a seamless and innovative mobile app experience with a modern design, smooth performance, and an intuitive user interface. Our goal is to create smart and efficient applications that simplify your daily tasks and enhance your digital experience.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 12),
                    // أيقونات وسائل التواصل الاجتماعي
                    Row(
                      children: [
                        _socialIcon(FontAwesomeIcons.linkedin,
                            "https://www.linkedin.com/in/ahmedsami011/"),
                        _socialIcon(FontAwesomeIcons.github,
                            "https://github.com/engAhmedSami"),
                      ],
                    ),
                  ],
                ),
              ),
              // 🔗 الروابط السريعة
              _footerColumn("Quick link", [
                "Home",
                "Service",
                "Projects",
                "About",
                "Client",
                "Contact",
              ]),
              // 📜 الروابط المهمة
              _footerColumn("Important", [
                "Career",
                "Terms & Conditions",
                "Privacy Policy",
                "Cookies Policy",
                "Social Work",
              ]),
              // 📞 معلومات الاتصال
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contacts",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _contactRow(Icons.phone, "+20 01023582057"),
                    _contactRow(Icons.email, "ii.ahmedsami0@gmail.com"),
                    _contactRow(Icons.location_on, "Egypt, Dakahlia, Mansoura"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 🎨 أيقونات السوشيال ميديا مع الروابط
  Widget _socialIcon(IconData icon, String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () => _launchURL(url),
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.white10,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 16),
        ),
      ),
    );
  }

  // 📌 مكون للروابط
  Widget _footerColumn(String title, List<String> items) {
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                item,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 📞 تفاصيل الاتصال
  Widget _contactRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🌍 فتح الروابط عند النقر على الأيقونات
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not launch $url");
    }
  }
}
