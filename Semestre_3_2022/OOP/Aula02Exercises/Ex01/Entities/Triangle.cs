namespace Ex01.Entities
{
    public class Triangle
    {
        public double height { get; set; }
        public double baseLenght { get; set; }

        public Triangle(double height, double baseLenght)
        {
            this.height = height;
            this.baseLenght = baseLenght;

        }

        public double CalculateArea(){
            return (this.height * baseLenght) / 2;
        }

    }
}