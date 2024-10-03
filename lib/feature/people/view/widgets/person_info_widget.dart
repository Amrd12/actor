import 'package:actor/feature/people/data/model/person_detailed_model.dart';
import 'package:flutter/material.dart';

class PersonInfoWidget extends StatelessWidget {
  const PersonInfoWidget({super.key, required this.model, this.physics});
  final PersonDetailedModel model;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: physics,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Original Name"),
            _buildContentText(model.originalName),
            const SizedBox(height: 12.0),
            _buildSectionTitle("Also Known As"),
            _buildAlsoKnownAs(),
            const SizedBox(height: 12.0),
            _buildSectionTitle("Is Adult?"),
            _buildContentText(model.adult ? "Yes" : "No"),
            const SizedBox(height: 12.0),
            _buildSectionTitle("Biography"),
            _buildContentText(model.biography ?? ""),
            const SizedBox(height: 12.0),
            _buildSectionTitle("Birthday"),
            _buildContentText(model.birthday ?? ""),
            const SizedBox(height: 12.0),
            _buildSectionTitle("Gender"),
            _buildContentText(model.gender.name),
            const SizedBox(height: 12.0),
            _buildSectionTitle("Place Of Birth"),
            _buildContentText(model.placeOfBirth ?? "?"),
            const SizedBox(height: 12.0),
            _buildSectionTitle("Status"),
            _buildContentText(model.deathday == null
                ? "Alive: Still Alive"
                : "Deceased: Passed away on ${model.deathday}"),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildContentText(String content) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 14.0,
        color: Colors.black54,
      ),
    );
  }

  Widget _buildAlsoKnownAs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: model.alsoKnownAs!
            .map(
              (name) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Chip(
                  label: Text(name),
                  backgroundColor: Colors.grey[200],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
