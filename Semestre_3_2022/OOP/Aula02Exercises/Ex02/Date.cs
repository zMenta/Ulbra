namespace Ex02
{
    public class Date
    {

        public int year { get; set; }

        private int month;
        public int Month
        {
            get { return month; }
            set
            {
                if (value <= 0 || value > 12)
                {
                    month = 1;
                }
                else
                {
                    month = value;
                }
            }
        }
        private int day;
        public int Day
        {
            get { return day; }
            set
            {
                if (value <= 0 || value >= 31)
                {
                    day = 1;
                }
                else
                {
                    day = value;
                }
            }
        }

        public Date(int day, int month, int year)
        {
            this.day = day;
            this.month = month;
            this.year = year;
        }
    }
}