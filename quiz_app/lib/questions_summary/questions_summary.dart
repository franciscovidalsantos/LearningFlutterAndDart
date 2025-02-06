import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';
import 'package:quiz_app/styles/my_styles.dart';

class QuestionsSummary extends StatefulWidget {
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  State<QuestionsSummary> createState() {
    return _QuestionsSummaryState();
  }
}

class _QuestionsSummaryState extends State<QuestionsSummary> {
  final _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: FadingEdgeScrollView.fromSingleChildScrollView(
        gradientFractionOnEnd: 0.5,
        gradientFractionOnStart: 0.5,
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: widget.summaryData.map((data) {
              return SummaryItem(data);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
