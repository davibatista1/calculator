import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;
  ButtonClick(this.value);
}

class CommumButtonClick extends ButtonClick {
  CommumButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  const ButtonHub({
    super.key,
    required this.onButtonClick,
  });

  final void Function(ButtonClick click) onButtonClick;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        CalcButton(
          value: "%",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: "CE",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(ClearEntryButtonClick(value)),
        ),
        CalcButton(
          value: "C",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        CalcButton(
          value: "",
          color: Theme.of(context).colorScheme.primary,
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '7',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '8',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '9',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: "/",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '4',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '5',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '6',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: "*",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '1',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '2',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '3',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: "+",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: "-",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: '0',
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: ".",
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick(CommumButtonClick(value)),
        ),
        CalcButton(
          value: "=",
          color: Theme.of(context).colorScheme.onTertiary,
          onTap: (value) => onButtonClick(EqualsButtonClick(value)),
        ),
      ],
    );
  }
}

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    required this.value,
    this.color,
    this.onTap,
  });

  final String value;
  final Color? color;
  final void Function(String value)? onTap;

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primaryContainer;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              value,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      ),
    );
  }
}
