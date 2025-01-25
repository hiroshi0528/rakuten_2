import 'package:flutter/material.dart';
import 'package:rakuten_2/enum/tab_type.dart';

class TabIcon extends StatelessWidget {
  const TabIcon({
    required this.type,
    required this.isSelected,
    super.key,
  });

  final TabType type;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected ? _SelectedIcon(type) : _NormalIcon(type);
  }
}

const _size = 25.0;

class _NormalIcon extends StatelessWidget {
  const _NormalIcon(this.type);

  final TabType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _size,
      height: _size,
      child: type.iconWidget,
    );
  }
}

class _SelectedIcon extends StatelessWidget {
  const _SelectedIcon(this.type);

  final TabType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _size,
      height: _size,
      child: type.iconWidget,
    );
  }
}
