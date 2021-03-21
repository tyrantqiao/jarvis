package com.tyrantqiao.encry;

import org.jasypt.encryption.StringEncryptor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.StringUtils;

/**
 * 测试jasypt加解密$
 * <p>
 * 创建时间： 2021/3/20 21:32
 * 博客地址： <a href="https://tyrantqiao.com">详情戳我(╯‵□′)╯︵┻━┻)</a>
 *
 * @author tyrantqiao
 * @version 1.0
 **/
@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class TestEncryCode {
    @Autowired
    private StringEncryptor stringEncryptor;

    /**
     * 加密解密密码
     */
    @Test
    public void testEncryPassword() {
        extracted("6379");
    }

    private void extracted(String needEncryStr) {
        String encryptStr = stringEncryptor.encrypt(needEncryStr);
        assert !StringUtils.isEmpty(encryptStr);
        String decryptResult = stringEncryptor.decrypt(encryptStr);
        assert decryptResult.equals(needEncryStr);

        System.out.println(encryptStr);
        System.out.println(decryptResult);
    }

    @Test
    public void contextLoads() {
    }
}
