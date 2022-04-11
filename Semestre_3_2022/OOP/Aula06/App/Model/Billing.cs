using System;

namespace Aula06.App.Model
{
    public class Billing
    {
        public Billing(int id, double value, Client clientBill, DateTime dateOfIssue, DateTime dueDate, DateTime dateOfPayment)
        {
            Id = id;
            Value = value;
            ClientBill = clientBill;
            DateOfIssue = dateOfIssue;
            DueDate = dueDate;
            DateOfPayment = dateOfPayment;
        }

        public int Id { get; set; }
        public double Value { get; set; }
        public Client ClientBill { get; set; }
        public DateTime DateOfIssue { get; set; }
        public DateTime DueDate { get; set; }
        public DateTime DateOfPayment { get; set; }
    }
}