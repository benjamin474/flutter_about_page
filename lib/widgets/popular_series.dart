import 'package:flutter/material.dart';
import 'package:flutter_about_page/main.dart';

class PopularSeries extends StatelessWidget {
  const PopularSeries({super.key});

  @override
  Widget build(BuildContext context) {
    final series = <Series>[
      const Series(title: '小資女孩向前衝', cover: '../../assets/officegirls.png'),
      const Series(title: '必娶女人', cover: '../../assets/marrymeornot.png'),
      const Series(title: '想見你', cover: '../../assets/somedayoneday.png'),
      const Series(title: '模仿犯', cover: '../../assets/copycatkiller.png'),
      const Series(title: '童話故事下集', cover: '../../assets/marrybut.png'),
    ];

    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(122, 130, 233, 0.498),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          const Text(
            '熱門出演作品',
            style: TextStyle(color: Colors.blueGrey, letterSpacing: 2.0),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: series.length,
              itemBuilder: (context, index) {
                final selectedSeries = series[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Image.asset(selectedSeries.cover, height: 200, fit: BoxFit.cover),
                      const SizedBox(height: 5),
                      Text(selectedSeries.title, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
