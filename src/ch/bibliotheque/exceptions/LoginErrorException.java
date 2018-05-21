package ch.bibliotheque.exceptions;

public class LoginErrorException extends RuntimeException {
    public LoginErrorException() { super(); }
    public LoginErrorException(String message) { super(message); }
    public LoginErrorException(String message, Throwable cause) { super(message, cause); }
    public LoginErrorException(Throwable cause) { super(cause); }
}
