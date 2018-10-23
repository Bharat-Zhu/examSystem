package com.exam.system.core.services;

import com.exam.system.core.entitys.User;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service("passwordService")
public class PasswordService {

    private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();

    @Value(value = "shiro.credentials.hashAlgorithmName")
    private String hashAlgorithmName = "MD5";

    @Value(value = "shiro.credentials.hashIterations")
    private int hashIterations = 1024;

    public void encryptPassword(User user) {
        user.setSalt(randomNumberGenerator.nextBytes().toHex());
        String newPassword = new SimpleHash(hashAlgorithmName,
                user.getPassword(),
                user.getSalt(),
                hashIterations).toHex();
        user.setPassword(newPassword);
    }
}
