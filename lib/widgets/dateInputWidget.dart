import 'package:flutter/material.dart';

class DateInputWidget extends StatefulWidget {
    final Function(DateTime) onSelectedDate;
    DateInputWidget({required this.onSelectedDate});
  @override
  _DateInputWidgetState createState() => _DateInputWidgetState();
}

class _DateInputWidgetState extends State<DateInputWidget> {
  DateTime selectedDate = DateTime.now(); 


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }

    widget.onSelectedDate(selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${selectedDate.toLocal()}".split(' ')[0], // Display only the date part.
              style: TextStyle(fontSize: 18.0),
            ),
            Icon(Icons.calendar_today),
          ],
        ),
      ),
    );
  }
}
