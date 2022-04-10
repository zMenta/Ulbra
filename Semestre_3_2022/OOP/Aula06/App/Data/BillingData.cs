namespace Aula06.App.Data
{
    public class BillingData
    {
        private List<Billing> bilingList= new List<Billing>();

        public void GetAll()
        {
            return bilingList;
        }

        public void GetById(int id){
            return bilingList.Find(bill => bill.Id == id);
        }

        public void Add(Billing billing){
            billingList.Add(billing);
        }

        public void UpdateById(int id, Billing newBilling){
            var oldBilling = GetById(id);

            oldBilling = newBilling;
        }

        public void Delete(Billing billing){
            billingList.Remove(billing);
        }

    }
}