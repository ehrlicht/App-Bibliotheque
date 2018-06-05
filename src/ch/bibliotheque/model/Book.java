package ch.bibliotheque.model;

import javax.persistence.*;
import java.io.Serializable;
import java.time.Year;
import java.util.Date;

@Entity
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;
    private String author;
    private String publisher;
    private Year year;

    public Book(String title, String author, String publisher, Year year) {
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.year = year;
    }

    public Book() {}

    public long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) { this.title = title; }

    public String getPublisher() {
        if (publisher.isEmpty()) {
                return "Aucun";
        }
        return publisher;
    }

    public void setPublisher(String publisher) { this.publisher = publisher; }

    public String getAuthor() {
        if (author.isEmpty()) {
            return "Inconnu";
        }
        return author;
    }

    public void setAuthor(String author) { this.author = author; }

    public Year getYear() { return year; }

    public String getFormattedYear() {
        if (year.getValue() >= 0) {
            return year.toString();
        } else  {
            return Math.abs(year.getValue()) + " avant J.C.";
        }
    }

    public void setYear(Year year) {
        this.year = year;
    }
}
