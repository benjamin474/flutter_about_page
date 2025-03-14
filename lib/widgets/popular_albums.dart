import 'package:flutter/material.dart';
import 'package:flutter_about_page/main.dart';


class PopularAlbums extends StatelessWidget{
  const PopularAlbums({super.key});

  @override
  Widget build(BuildContext context) {
    final albums = <Album>[
      const Album(title: '小資女孩向前衝', cover: '../..assets/officegirls.png'),
      const Album(title: '必娶女人', cover: '../..assets/marrymeornot.png'),
      const Album(title: '想見妳', cover:'../..assets/somedayoroneday.png'),
      const Album(title: '模仿犯', cover: '../..assets/copycatkiller.png'),
      const Album(title: '童話故事下集', cover: '../..assets/marrybut.png'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('熱門作品', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: albums.length,
            itemBuilder: (context, index) {
              final album = albums[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Image.asset(album.cover, width: 150,height: 150, fit: BoxFit.cover),
                    const SizedBox(height: 5),
                      Text(album.title, style: const TextStyle(fontSize: 16),
                    ),
                    
                  ],
                )
              );
            }
          )
        ),
        for(var album in albums)
          ListTile(
            leading: Image.asset(album.cover, width: 50),
            title: Text(album.title),
          ),
        
      ],
    );
  }
}