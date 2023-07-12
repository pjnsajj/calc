import 'package:flutter/material.dart';

class Searcher extends StatefulWidget {
  const Searcher({super.key});

  @override
  State<Searcher> createState() => _SearcherState();
}

class _SearcherState extends State<Searcher> {

  Color? selectedColorSeed;
  List<ColorLabel> searchHistory = <ColorLabel>[];
  Iterable<Widget> getHistoryList(SearchController controller) {
    return searchHistory.map(
      (ColorLabel color) => ListTile(
        leading: const Icon(Icons.history),
        title: Text(color.label),
        trailing: IconButton(
          icon: const Icon(Icons.call_missed),
          onPressed: () {
            controller.text = color.label;
            controller.selection =
                TextSelection.collapsed(offset: controller.text.length);
          },
        ),
      ),
    );
  }

  Iterable<Widget> getSuggestions(SearchController controller) {
    final String input = controller.value.text;
    return ColorLabel.values
        .where((ColorLabel color) => color.label.contains(input))
        .map(
          (ColorLabel filteredColor) => ListTile(
            leading: CircleAvatar(backgroundColor: filteredColor.color),
            title: Text(filteredColor.label),
            trailing: IconButton(
              icon: const Icon(Icons.call_missed),
              onPressed: () {
                controller.text = filteredColor.label;
                controller.selection =
                    TextSelection.collapsed(offset: controller.text.length);
              },
            ),
            onTap: () {
              controller.closeView(filteredColor.label);
              handleSelection(filteredColor);
            },
          ),
        );
  }

  void handleSelection(ColorLabel selectedColor) {
    setState(() {
      selectedColorSeed = selectedColor.color;
      if (searchHistory.length >= 5) {
        searchHistory.removeLast();
      }
      searchHistory.insert(0, selectedColor);
    });
  }

  @override
  Widget build(BuildContext context) {
     final ThemeData themeData =
        ThemeData(useMaterial3: true, colorSchemeSeed: selectedColorSeed);
    final ColorScheme colors = themeData.colorScheme;
    return         Padding(
          padding: const EdgeInsets.all(10),
          child: SearchAnchor.bar(
            barHintText: 'Поиск по товарам',
            suggestionsBuilder:
                (BuildContext context, SearchController controller) {
              if (controller.text.isEmpty) {
                if (searchHistory.isNotEmpty) {
                  return getHistoryList(controller);
                }
                return <Widget>[
                  Center(
                      child: Text('Нет истории поиска.',
                          style: TextStyle(color: colors.outline)))
                ];
              }
              return getSuggestions(controller);
            },
          ),
        );
     
  }
}

SizedBox cardSize = const SizedBox(
  width: 80,
  height: 30,
);

enum ColorLabel {
  red('red', Colors.red),
  orange('orange', Colors.orange),
  yellow('yellow', Colors.yellow),
  green('green', Colors.green),
  blue('blue', Colors.blue),
  indigo('indigo', Colors.indigo),
  violet('violet', Color(0xFF8F00FF)),
  purple('purple', Colors.purple),
  pink('pink', Colors.pink),
  silver('silver', Color(0xFF808080)),
  gold('gold', Color(0xFFFFD700)),
  beige('beige', Color(0xFFF5F5DC)),
  brown('brown', Colors.brown),
  grey('grey', Colors.grey),
  black('black', Colors.black),
  white('white', Colors.white);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}
