import 'package:flutter/foundation.dart';

import '../../common/models/transaction_model.dart';
import '../../repositories/transaction_repository.dart';
import 'wallet_state.dart';

class WalletController extends ChangeNotifier {
  WalletController({
    required this.transactionRepository,
  });

  final TransactionRepository transactionRepository;

  WalletState _state = WalletStateInitial();

  WalletState get state => _state;

  DateTime _selectedDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;

  List<TransactionModel> _transactions = [];
  List<TransactionModel> get transactions => _transactions;

  void _changeState(WalletState newState) {
    _state = newState;
    notifyListeners();
  }

  Future<List<TransactionModel>> getAllTransactions() async {
    _changeState(WalletStateLoading());

    final result = await transactionRepository.getAllTransactions();

    _changeState(WalletStateSuccess());

    return result;
  }

  void changeSelectedDate(DateTime newDate) {
    _selectedDate = newDate;
  }

  Future<List<TransactionModel>> getTransactionsByDateRange() async {
    _changeState(WalletStateLoading());

    final result = await transactionRepository.getAllTransactions();

    _changeState(WalletStateSuccess());

    return result;
  }
}
