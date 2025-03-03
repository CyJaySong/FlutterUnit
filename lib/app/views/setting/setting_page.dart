import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/app/router/unit_router.dart';
import 'package:flutter_unit/app/res/toly_icon.dart';
import 'package:flutter_unit/app/blocs/global/global_bloc.dart';
import 'package:flutter_unit/app/blocs/global/global_event.dart';
import 'package:flutter_unit/app/blocs/global/global_state.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('应用设置'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.palette,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('主题色设置'),
            trailing: _nextIcon(context),
            onTap: () => Navigator.of(context).pushNamed(UnitRouter.theme_color_setting),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.translate,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('字体设置'),
            trailing: _nextIcon(context),
            onTap: () => Navigator.of(context).pushNamed(UnitRouter.font_setting),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              TolyIcon.icon_item,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('item样式设置'),
            trailing: _nextIcon(context),
            onTap: () => Navigator.of(context).pushNamed(UnitRouter.item_style_setting),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              TolyIcon.icon_code,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('代码高亮样式'),
            trailing: _nextIcon(context),
            onTap: () => Navigator.of(context).pushNamed(UnitRouter.code_style_setting),
          ),
          const Divider(),
          _buildShowBg(context),
          const Divider(),
          _buildShowOver(context),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('版本信息'),
            trailing: _nextIcon(context),
            onTap: () => Navigator.of(context).pushNamed(UnitRouter.version_info),
          ),
        ],
      ),
    );
  }

  Widget _buildShowBg(BuildContext context) =>
      BlocBuilder<AppBloc, AppState>(
          builder: (_, state) => SwitchListTile(
                value: state.showBackGround,
                secondary: Icon(
                  TolyIcon.icon_background,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text('显示背景'),
                onChanged: (show) {
                  BlocProvider.of<AppBloc>(context)
                      .add(EventSwitchShowBg(show));
                },
              ));

  Widget _buildShowOver(BuildContext context) =>
      BlocBuilder<AppBloc, AppState>(
          builder: (_, state) => SwitchListTile(
            value: state.showPerformanceOverlay,
            secondary: Icon(
              TolyIcon.icon_show,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('显示性能浮层'),
            onChanged: (show) {
              BlocProvider.of<AppBloc>(context)
                  .add(EventSwitchShowOver(show));
            },
          ));

  Widget _nextIcon(BuildContext context) =>
      Icon(Icons.chevron_right, color: Theme.of(context).primaryColor);
}
