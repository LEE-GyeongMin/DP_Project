package org.nhnnext.web;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Comment {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(length=1000, nullable=false)
	private String contents;
	
	@ManyToOne
	private Board board;

	public Comment() { }
	
	public Comment(Board board, String contents) {
		this.board = board;
		this.contents = contents;
	}

	public Long getId() {
		return id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Board getBoard() {
		return board;
	}

}
