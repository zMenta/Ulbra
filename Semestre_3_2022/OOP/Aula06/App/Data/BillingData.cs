using System.Collections.Generic;
using Aula06.App.Model;

namespace Aula06.App.Data
{
    public class BillingData
    {
        private List<Billing> billingList = new List<Billing>();

        public List<Billing> GetAll()
        {
            return billingList;
        }

        public Billing GetById(int id)
        {
            return billingList.Find(bill => bill.Id == id);
        }

        public void Add(Billing billing)
        {
            billingList.Add(billing);
        }

        public void UpdateById(int id, Billing newBilling)
        {
            var oldBilling = GetById(id);

            oldBilling = newBilling;
        }

        public void Delete(Billing billing)
        {
            billingList.Remove(billing);
        }

    }
}