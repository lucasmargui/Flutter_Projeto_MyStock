import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import '../features/home/home.dart';
import '../features/sign_in/sign_in.dart';
import '../features/splash/splash.dart';
import 'common/features/balance/balance.dart';
import 'common/features/transaction/transaction.dart';
import 'features/profile/profile.dart';
import 'features/sign_up/sign_up.dart';
import 'features/stats/stats.dart';
import 'features/wallet/wallet.dart';
import 'repositories/repositories.dart';
import 'services/services.dart';
import 'services/user_data_service/user_data_service.dart';

final locator = GetIt.instance;

void setupDependencies() {
  locator.registerLazySingleton<AuthService>((() => FirebaseAuthService()));

  locator.registerFactory<SecureStorageService>(
      () => const SecureStorageService());

  locator.registerFactory<UserDataService>(() => UserDataServiceImpl(
        firebaseAuth: FirebaseAuth.instance,
        firebaseFunctions: FirebaseFunctions.instance,
      ));
  locator.registerFactory<SplashController>(
      () => SplashController(const SecureStorageService()));

  locator.registerFactory<SignInController>(
      () => SignInController(locator.get<AuthService>()));

  locator.registerFactory<SignUpController>(
      () => SignUpController(locator.get<AuthService>()));

  locator.registerFactory<TransactionRepository>(
      () => TransactionRepositoryImpl());

  locator.registerLazySingleton<HomeController>(
    () => HomeController(locator.get<TransactionRepository>()),
  );

  locator.registerLazySingleton<BalanceController>(
    () => BalanceController(
      transactionRepository: TransactionRepositoryImpl(),
    ),
  );

  //Register Repositories

  locator.registerLazySingleton<TransactionController>(
    () => TransactionController(
      transactionRepository: locator.get<TransactionRepository>(),
      secureStorageService: locator.get<SecureStorageService>(),
    ),
  );

  locator.registerLazySingleton<WalletController>(
    () => WalletController(
      transactionRepository: locator.get<TransactionRepository>(),
    ),
  );

  locator.registerFactory<ProfileController>(
      () => ProfileController(userDataService: locator.get<UserDataService>()));

  locator.registerLazySingleton<StatsController>(() => StatsController(
      transactionRepository: locator.get<TransactionRepository>()));
}
