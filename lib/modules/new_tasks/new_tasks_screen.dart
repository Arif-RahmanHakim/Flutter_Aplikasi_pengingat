import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Aplikasi_Pengingat/shared/components/task_item.dart';
import 'package:Aplikasi_Pengingat/shared/constants/constants.dart';
import 'package:Aplikasi_Pengingat/shared/cubit/cubit.dart';
import 'package:Aplikasi_Pengingat/shared/cubit/states.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NewTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).newTasks;
        return SafeArea(
          child: SingleChildScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Todo Apps',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: tasks.length > 0
                        ? Text(
                            'List Tugas',
                            style: TextStyle(
                              color: Colors.blue.shade300,
                              fontSize: 13,
                              fontFamily: 'NotoSans',
                            ),
                          )
                        : null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  tasks.length > 0
                      ? ListView.builder(
                          //scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            //print(index);
                            return TaskItem(
                              tasks: tasks[index],
                            );
                          },
                          // separatorBuilder: (context, index) => Padding(
                          //       padding: const EdgeInsets.only(left: 20),
                          //       child: Container(
                          //         width: double.infinity,
                          //         height: 1.0,
                          //         color: Colors.grey[200],
                          //       ),
                          //     ),
                          itemCount: tasks.length)
                      : Container(
                          child: Center(
                              child: Image.asset(
                          'images/icon.png',
                          height: 350,
                          width: 350,
                        ))),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
