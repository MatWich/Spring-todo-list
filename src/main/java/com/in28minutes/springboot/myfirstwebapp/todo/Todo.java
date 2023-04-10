package com.in28minutes.springboot.myfirstwebapp.todo;

import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.context.annotation.Bean;

import java.time.LocalDate;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Todo {
    private int id;
    private String username;
    @Size(min=2, message = "Enter at least 2 character")
    private String description;
    private LocalDate target;
    private boolean done;
}
