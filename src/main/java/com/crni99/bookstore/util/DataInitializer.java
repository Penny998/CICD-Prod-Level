//package com.crni99.bookstore.util;
//import org.springframework.boot.CommandLineRunner;
//import org.springframework.stereotype.Component;
//
//import com.crni99.bookstore.model.Authority;
//import com.crni99.bookstore.model.User;
//import com.crni99.bookstore.repository.AuthorityRepository;
//import com.crni99.bookstore.repository.UserRepository;
//
//import java.util.Arrays;
//
//@Component
//public class DataInitializer implements CommandLineRunner {
//
//    private final UserRepository userRepository;
//    private final AuthorityRepository authorityRepository;
//
//    public DataInitializer(UserRepository userRepository, AuthorityRepository authorityRepository) {
//        this.userRepository = userRepository;
//        this.authorityRepository = authorityRepository;
//    }
//
//    @Override
//    public void run(String... args) throws Exception {
//        authorityRepository.saveAll(Arrays.asList(
//            new Authority("ROLE_USER"),
//            new Authority("ROLE_ADMIN")
//        ));
//
//        userRepository.save(new User("admin", "admin"));
//        
//    }
//}
