package pl.coderslab;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {

    @RequestMapping("/helloBook")
    public Book helloBook() {
        return new Book(1L, "9788324631766", "Thinking in Java",
                "Bruce Eckel", "Helion", "programming");
    }

    private BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("")
    @ResponseBody
    public
    List<Book> getList() {
        return bookService.getBooks();
    }

    @PostMapping("")
    public void addBook(@RequestBody Book book) {
        bookService.add(book);
    }

    @GetMapping("/{id}")
    public Book getBook(@PathVariable Long id) {
        return this.bookService.get(id).orElseThrow(() -> {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Książka nieodnaleziona");
        });
    }

    @DeleteMapping("/{id}")
    public void removeBook(@PathVariable Long id) {
        bookService.delete(id);
    }

    @PutMapping("")
    @ResponseBody
    public void updateBook(@RequestBody Book book) {
        bookService.update(book);
    }
}

//@RequestMapping(value = "", method = RequestMethod.POST)
//    public JsonResponse create(@RequestParam String isbn,
//                               @RequestParam String name,
//                               @RequestParam String author,
//                               @RequestParam String publisher,
//                               @RequestParam String type) {
//
//        long lastId = 0;
//        for (Book b : bookService.getList()) {
//            if (lastId < b.getId()) {
//                lastId = b.getId();
//            }
//        }
//        Book book = new Book(++lastId, isbn, name, author, publisher, type);
//        bookService.add(book);
//        return new JsonResponse("created new book", book);
//    }


//    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
//    public JsonResponse update(@PathVariable Long id,
//                               @RequestParam String isbn,
//                               @RequestParam String name,
//                               @RequestParam String author,
//                               @RequestParam String publisher,
//                               @RequestParam String type) {
//        Book book = null;
//        for (Book b : bookService.getList()){
//            if (b.getId().equals(id)) {
//                b.setIsbn(isbn);
//                b.setAuthor(author);
//                b.setPublisher(publisher);
//                b.setTitle(name);
//                b.setType(type);
//                book = b;
//            }
//        }
//        return new JsonResponse("updated book",book);
//    }

