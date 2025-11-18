package com.edu.kubernetes.controller;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class TestControllerTest {

    @Test
    void testControllerMethod() {
        // Arrange — criar o objeto a ser testado
        TestController controller = new TestController();

        // Act — chamar o método
        String response = controller.test();

        // Assert — validar o resultado
        assertEquals("test", response, "O método deve retornar 'test'");
    }
}