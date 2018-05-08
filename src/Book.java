import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Book {

    @Id@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;
    private String isbn;
    private String author;
    private Date publicationDate;

    public Book(String title, String isbn, String author, Date publicationDate) {
        this.title = title;
        this.isbn = isbn;
        this.author = author;
        this.publicationDate = publicationDate;
    }

    protected Book() {
    }

    public long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(Date publicationDate) {
        this.publicationDate = publicationDate;
    }
}
