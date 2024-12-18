import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/about/cubit/about_cubit.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class AboutView extends StatelessWidget {
  /// {@macro counter_view}
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<AboutCubit, int>(
          builder: (context, state) {
            return Text('$state元', style: textTheme.displayMedium);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<AboutCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<AboutCubit>().decrement(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // 水平方向均匀分布子元素
          children: [
            IconButton(
              icon: Icon(Icons.person), // 使用人物图标
              onPressed: () {
                // 点击人物图标后的处理逻辑
                print("点击了我的图标");
                Navigator.pushNamed(context, '/about');
              },
            ),
            IconButton(
              icon: Icon(Icons.home), // 使用人物图标
              onPressed: () {
                // 点击人物图标后的处理逻辑
                print("点击了home图标");
                Navigator.pushNamed(context, '/home');
              },
            ),
          ], // 这里暂时为空，后续添加具体导航项
        ),
      ),
    );
  }
}
