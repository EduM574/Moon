package model;

import java.util.GregorianCalendar;

public class GerenciaAdmSolicitacao {
	
	private Administrador administrador;
	private Solicitacao solicitacao;
	private GregorianCalendar data;
	private String descricao;

	public GerenciaAdmSolicitacao() {
	}

	public GerenciaAdmSolicitacao(Administrador administrador, Solicitacao solicitacao,
			GregorianCalendar data, String descricao) {

		this.administrador = administrador;
		this.solicitacao = solicitacao;
		this.data = data;
		this.descricao = descricao;
	}

	public Administrador getAdministrador() {
		return administrador;
	}

	public void setAdministrador(Administrador administrador) {
		this.administrador = administrador;
	}

	public Solicitacao getSolicitacao() {
		return solicitacao;
	}

	public void setSolicitacao(Solicitacao solicitacao) {
		this.solicitacao = solicitacao;
	}

	public GregorianCalendar getData() {
		return data;
	}

	public void setData(GregorianCalendar data) {
		this.data = data;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
