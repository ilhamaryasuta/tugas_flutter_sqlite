//import 'dart:async';
import 'package:flutter_sqlite/db_helper/repository.dart';
import 'package:flutter_sqlite/model/user.dart';

class UserService {
  late Repository _repository;
  UserService() {
    _repository = Repository();
  }
//Save User
  saveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

//Read All Users
  readAllUsers() async {
    return await _repository.readData('users');
  }

//Edit User
  updateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

  deleteUser(userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}
