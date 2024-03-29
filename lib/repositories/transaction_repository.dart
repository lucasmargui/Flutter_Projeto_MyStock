import '../common/models/models.dart';

import 'package:mystock_app/common/data/data.dart';

abstract class TransactionRepository {
  Future<DataResult<TransactionModel>> addTransaction({
    required TransactionModel transaction,
    required String userId,
  });
  Future<DataResult<TransactionModel>> updateTransaction(
      {required TransactionModel transaction});
  Future<DataResult<TransactionModel>> deleteTransaction(
      {required TransactionModel transaction});

  Future<DataResult<List<TransactionModel>>> getAllTransactions();

  Future<DataResult<List<TransactionModel>>> getTransactionsByDateRange(
      {required DateTime startDate, required DateTime endDate});

  Future<DataResult<BalancesModel>> getBalances();

  Future<DataResult<BalancesModel>> getBalancesByDateRange(
      {required DateTime startDate, required DateTime endDate});

  Future<DataResult<BalancesModel>> updateBalances(
      {required BalancesModel balance});
}
