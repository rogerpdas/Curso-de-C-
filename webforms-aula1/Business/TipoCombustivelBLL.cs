using Business.Model;
using System;
using System.Data;
using System.Data.SqlClient;


namespace Business
{
	public class TipoCombustivelBLL
	{
		public void Salvar(TipoCombustivelModel model)
		{
			if (model.Id == 0)
			{
				Adicionar(model);
				return;
			}
			Alterar(model);
		}

		private void Alterar(TipoCombustivelModel model)
		{
			SqlCommand command = new SqlCommand();
			command.Connection = Acesso.Connection;
			command.CommandType = CommandType.Text;

			command.CommandText = $"update TipoCombustivel set nome = '{model.Descricao}' where id = {model.Id} ";
			command.ExecuteNonQuery();
		}

		private void Adicionar(TipoCombustivelModel model)
		{
			SqlCommand command = new SqlCommand();
			command.Connection = Acesso.Connection;
			command.CommandType = CommandType.Text;

			command.CommandText = $"insert into TipoCombustivel (Descricao)values('{model.Descricao}')";
			command.ExecuteNonQuery();
		}

		public void Excluir(int id)
		{
			SqlCommand command = new SqlCommand();
			command.Connection = Acesso.Connection;
			command.CommandType = CommandType.Text;

			command.CommandText = $"delete TipoCombustivel where id = {id} ";
			command.ExecuteNonQuery();
		}

		public DataSet Buscar()
		{
			SqlCommand command = new SqlCommand();
			command.Connection = Acesso.Connection;
			command.CommandType = CommandType.Text;

			command.CommandText = $"select * from TipoCombustivel";

			SqlDataAdapter da = new SqlDataAdapter(command);
			DataSet ds = new DataSet();

			da.Fill(ds);

			return ds;
		}

		public TipoCombustivelModel Buscar(int id)
		{
			SqlCommand command = new SqlCommand();
			command.Connection = Acesso.Connection;
			command.CommandType = CommandType.Text;

			command.CommandText = $"select * from TipoCombustivel where id = {id}";

			SqlDataReader dr = command.ExecuteReader();

			if (dr.Read())
			{
				TipoCombustivelModel model = new TipoCombustivelModel();
				model.Id = Convert.ToInt32(dr["id"]);
				model.Descricao = dr["Descricao"].ToString();

				return model;
			}

			return null;
		}
	}
}
