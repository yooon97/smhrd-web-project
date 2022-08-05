package com.example;

public class projectDTO {

	private String id;
	private String pw;
	private String nick;

	public projectDTO(String id, String pw, String nick) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
	}

	public projectDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

}
