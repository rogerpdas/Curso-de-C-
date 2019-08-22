using System;
using System.Data;
using System.Data.SqlClient;
using Business.Model;

namespace Business
{
    public class MontadoraBLL
    {
        public void Salvar(MontadoraModel model)
        {
            if (model.Id == 0)
            {
                Adicionar(model);
                return;
            }
            Alterar(model);
        }

        private void Alterar(MontadoraModel model)
        {
            SqlCommand command = new SqlCommand();
            command.Connection = Acesso.Connection;
            command.CommandType = CommandType.Text;

            command.CommandText = $"update montadora set nome = '{model.Nome}' where id = {model.Id} ";
            command.ExecuteNonQuery();
        }

        private void Adicionar(MontadoraModel model)
        {
            SqlCommand command = new SqlCommand();
            command.Connection = Acesso.Connection;
            command.CommandType = CommandType.Text;

            command.CommandText = $"insert into montadora (nome, logo)values('{model.Nome}','{model.Logo}')";
            command.ExecuteNonQuery();
        }

        public void Excluir(int id)
        {
            SqlCommand command = new SqlCommand();
            command.Connection = Acesso.Connection;
            command.CommandType = CommandType.Text;

            command.CommandText = $"delete montadora where id = {id} ";
            command.ExecuteNonQuery();
        }

        public DataSet Buscar()
        {
            SqlCommand command = new SqlCommand();
            command.Connection = Acesso.Connection;
            command.CommandType = CommandType.Text;

            command.CommandText = $"select * from montadora";

            SqlDataAdapter da = new SqlDataAdapter(command);
            DataSet ds = new DataSet();

            da.Fill(ds);

            return ds;
        }

        public MontadoraModel Buscar(int id)
        {
            SqlCommand command = new SqlCommand();
            command.Connection = Acesso.Connection;
            command.CommandType = CommandType.Text;

            command.CommandText = $"select * from montadora where id = {id}";

            SqlDataReader dr = command.ExecuteReader();

            if (dr.Read())
            {
                MontadoraModel model = new MontadoraModel();
                model.Id = Convert.ToInt32(dr["id"]);
                model.Nome = dr["nome"].ToString();
                model.Logo = dr["logo"].ToString();

                return model;
            }

            return null;
        }
    }
}
