import 'dart:developer';

import 'package:actor/core/Router/app_router.dart';
import 'package:actor/core/network/api_path_enum.dart';
import 'package:actor/core/network/network.dart';
import 'package:actor/core/widgets/custom_img.dart';
import 'package:actor/feature/images/data/repository/imges_repo.dart';
import 'package:actor/feature/people/cubit/people_cubit.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/data/repository/people_repo.dart';
import 'package:actor/feature/people/view/screens/person_list_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  await dotenv.load(fileName: "data.env");

  final dio = Dio();
  dio.options.queryParameters = {"api_key": dotenv.env['api_key']};

  dio.interceptors.add(PrettyDioLogger());

  final client = RestClient(dio);
  final PeopleRepo repo = PeopleRepo(client);
  final ImgesRepo imgesRepo = ImgesRepo(client: client);
  final PeopleCubit peopleCubit = PeopleCubit(repo);
  // final x = await repo.getPopulorList();
  // log(x.toString());

  // PersonModel per = x.right[15];

  // final c = await repo.getPersonInfo(per, "en");

  // per = c.isRight ? c.right : per;

  // final imgs = await imgesRepo.getImage(mix: per, path: ApiPath.person);

  // print(imgs);
  runApp(MainApp(
    peopleCubit: peopleCubit,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.peopleCubit});
  final PeopleCubit peopleCubit;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => peopleCubit,
        )
      ],
      child: MaterialApp(
        onGenerateRoute: AppRouter().generateRoute,
        home: Scaffold(
          body: Center(
            child: PersonListScreen(),
          ),
        ),
      ),
    );
  }
}
