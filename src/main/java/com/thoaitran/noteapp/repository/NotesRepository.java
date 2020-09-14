package com.thoaitran.noteapp.repository;

import com.thoaitran.noteapp.model.Note;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface NotesRepository extends MongoRepository<Note, String> {
}
