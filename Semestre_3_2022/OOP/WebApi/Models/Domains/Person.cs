using System.Security.AccessControl;
namespace Aula11CrudPeople.Models.Domains
{
    public class Person
    {
        public Person(){}
        public Person(int id, string nome, string fone)
        {
            this.Id = id;
            this.Nome = nome;
            this.Fone = fone;

        }
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Fone { get; set; }
    }
}