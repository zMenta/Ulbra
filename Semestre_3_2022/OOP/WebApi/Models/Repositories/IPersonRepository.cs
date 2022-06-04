using System.Collections.Generic;
using Aula11CrudPeople.Models.Domains;
using Aula12CrudPeopleOneToMany.Models.Repositories;

namespace Aula11CrudPeople.Models.Repositories
{
    public interface IPersonRepository : IBaseRepository<Person>
    {

    }
}