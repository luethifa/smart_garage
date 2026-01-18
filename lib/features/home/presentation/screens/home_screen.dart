import 'package:flutter/material.dart';
import 'package:smart_garage/shared/widgets/section_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 1024,
          child: Column(
            spacing: 10,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: SectionCard(
                  title: "Auto in consegna",
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text('Ford Fiesta'));
                    },
                    separatorBuilder: (context, index) =>
                        Divider(height: 0.5, color: Colors.black12),
                    itemCount: 5,
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: SectionCard(
                  title: "Auto in rientro",
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text('Ford Fiesta'));
                    },
                    separatorBuilder: (context, index) =>
                        Divider(height: 0.5, color: Colors.black12),
                    itemCount: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
