import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../models/models.dart';
import '../../../utils/utils.dart';

class CourseCardWeb extends StatefulWidget {
  const CourseCardWeb({
    Key? key,
    required this.modelo,
    required this.image,
  }) : super(key: key);

  final AssetImage image;

  final CursosVirtualesModel modelo;

  @override
  State<CourseCardWeb> createState() => _CourseCardWebState();
}

class _CourseCardWebState extends State<CourseCardWeb> {
  bool superUser = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 400,
      width: 200,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: FadeInImage(
              height: 140,
              width: size.width,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/images/no-image.jpg'),
              image: widget.image,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              widget.modelo.courseName!,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 1,
            width: 180,
            color: Colors.grey,
          ),
          const SizedBox(height: 5),
          Text(
            widget.modelo.ponenteName!,
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.calendar_month_outlined),
                Text(widget.modelo.date!),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.access_time),
                Text(widget.modelo.time!),
              ],
            ),
          ),
          const SizedBox(height: 10),
          superUser
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => context.go('/course_details'),
                          child: Container(
                            height: 30,
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: colors.azulSiesa,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Inscribirse',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('Saco el código');
                        },
                        child: Container(
                          height: 30,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: colors.azulSiesa,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Cod',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () => context.go(
                        '/course_details/${widget.modelo.courseName}',
                        extra: widget.modelo),
                    child: Container(
                      height: 30,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: colors.azulSiesa,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Inscribirse',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
