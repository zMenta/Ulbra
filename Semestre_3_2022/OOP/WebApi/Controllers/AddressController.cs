
using Aula12CrudPeopleOneToMany.Models.Domains;
using Aula12CrudPeopleOneToMany.Models.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Aula11CrudPeople.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AddressController : ControllerBase
    {
        private IAddressRepository repository;
       
        public AddressController(IAddressRepository repository)
        {
            this.repository = repository;
        }

        [HttpGet()]
        public IEnumerable<Address>Get()
        {
            return repository.GetAll();
        }

        [HttpPost()]
        public IActionResult Post([FromBody]Address address)
        {
            repository.Create(address);
            return Ok(new {
                message = "Endereço cadastrado com sucesso.",
                httpCode=202,
                objectCreated = address
            });
        } 
    }
}