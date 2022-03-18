namespace Ex03
{
    public class Time
    {
        private int hour;
        public int Hour
        {
            get { return hour; }
            set
            {
                if (value > 24 || value < 0)
                {
                    hour = 12;
                }
                else
                {
                    hour = value;
                }
            }
        }

        private int minute;
        public int Minute
        {
            get { return minute; }
            set
            {
                if (value > 60 || value < 0)
                {
                    minute = 0;
                }
                else
                {
                    minute = value;
                }
            }
        }
        private int seconds;
        public int Seconds
        {
            get { return seconds; }
            set
            {
                if (value > 60 || value < 0)
                {
                    seconds = 0;
                }
                else
                {
                    seconds = value;
                }
            }
        }

        public Time(int hour, int minute, int seconds){
            this.Hour = hour;
            this.Minute = minute;
            this.Seconds = seconds;
        }


    }
}