import 'package:fluent_ui/fluent_ui.dart';
import 'package:yaml/yaml.dart';

class YamlTreeView extends StatelessWidget {
  const YamlTreeView(this.yaml, {Key? key}) : super(key: key);

  final YamlMap yaml;

  TreeViewItem treeWidget(MapEntry<dynamic, dynamic> entry) {
    final _key = entry.key;
    final _value = entry.value;
    if (_value is YamlMap) {
      return TreeViewItem(
        collapsable: false,
        content: Text("$_key :"),
        children: _value.entries.map(treeWidget).toList(),
      );
    }
    return TreeViewItem(
      collapsable: false,
      content: Text("$_key : $_value"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TreeView(
        items: yaml.entries.map(treeWidget).toList(),
      ),
    );
  }
}
