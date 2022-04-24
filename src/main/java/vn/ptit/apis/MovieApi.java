package vn.ptit.apis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vn.ptit.dtos.MovieDTO;
import vn.ptit.services.MovieService;

import java.util.List;

@RestController
@RequestMapping(path = "/api/movie")
public class MovieApi {
    @Autowired
    private MovieService movieService;

    @PostMapping(path = "/insert", produces = "application/json")
    public ResponseEntity<MovieDTO> insert(@RequestBody MovieDTO movieDTO) {
        MovieDTO res = movieService.insert(movieDTO);
        return new ResponseEntity<>(res, HttpStatus.OK);
    }

    @GetMapping(path = "/find-all", produces = "application/json")
    public ResponseEntity<List<MovieDTO>> findAll() {
        List<MovieDTO> res = movieService.findAll();
        return new ResponseEntity<>(res, HttpStatus.OK);
    }

    @GetMapping(path = "/find/{id}", produces = "application/json")
    public ResponseEntity<MovieDTO> findById(@PathVariable("id") int id) {
        MovieDTO res = movieService.findById(id);
        if (res != null) return new ResponseEntity<>(res, HttpStatus.OK);
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PutMapping(path = "/update", produces = "application/json")
    public ResponseEntity<MovieDTO> update(@RequestBody MovieDTO movieDTO) {
        MovieDTO res = movieService.update(movieDTO);
        return new ResponseEntity<>(res, HttpStatus.OK);
    }

    @DeleteMapping(path = "/delete/{id}", produces = "application/json")
    public ResponseEntity<Integer> delete(@PathVariable("id") int id) {
        movieService.delete(id);
        return new ResponseEntity<>(id, HttpStatus.OK);
    }


}
