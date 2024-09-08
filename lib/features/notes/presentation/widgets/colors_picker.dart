import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/add_note_cubit/add_note_cubit.dart';

List<Color> colorsPalette = [
  const Color(0xffbbe7fe),
  const Color(0xffd3b5e5),
  const Color(0xffffd4db),
  const Color(0xffeff1db),
];

const double _radius = 32.0;

class ColorsPicker extends StatefulWidget {
  const ColorsPicker({
    super.key,
  });

  @override
  State<ColorsPicker> createState() => _ColorsPickerState();
}

class _ColorsPickerState extends State<ColorsPicker> {
  Color _selectedColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _radius * 2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: colorsPalette.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            BlocProvider.of<AddNoteCubit>(context).color = colorsPalette[index];
            setState(() {
              _selectedColor = colorsPalette[index];
            });
          },
          child: ColorItem(
              color: colorsPalette[index],
              isSelected: _selectedColor == colorsPalette[index]),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isSelected});
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: _radius,
      backgroundColor: isSelected ? Colors.white : Colors.transparent,
      child: CircleAvatar(
        radius: _radius - 4,
        backgroundColor: color,
      ),
    );
  }
}
