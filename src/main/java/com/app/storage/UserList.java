package com.app.storage;

import com.app.entities.User;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class UserList {

    private static final UserList instance = new UserList();

    private final List<User> userList;

    private UserList() {
        userList = new ArrayList<>();
    }

    public static UserList getInstance() {
        return instance;
    }

    public void add(User user) {
        userList.add(user);
    }

    public List<String> list() {
        return userList.stream()
                .map(User::getName)
                .collect(Collectors.toList());
    }

}
