using System.Collections.Generic;
using Aula06.App.Model;

namespace Aula06.App.Data
{
    public class ClientData
    {
        private List<Client> clientList = new List<Client>();

        public List<Client> GetAll()
        {
            return clientList;
        }

        public Client GetById(int id)
        {
            return clientList.Find(client => client.Id == id);
        }

        public void Add(Client client)
        {
            clientList.Add(client);
        }

        public void UpdateById(int id, Client newClient)
        {
            var oldClient = GetById(id);

            oldClient = newClient;
        }

        public void Delete(Client client)
        {
            clientList.Remove(client);
        }
    }
}