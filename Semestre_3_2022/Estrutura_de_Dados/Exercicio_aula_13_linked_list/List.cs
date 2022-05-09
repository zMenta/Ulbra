namespace Exercicio_aula_13_linked_list
{
    public class List
    {
        public List()
        {
            this.size = 0;
        }

        public Element first { get; set; }
        public Element last { get; set; }
        public int size { get; set; }

        public void Clear()
        {
            this.first = null;
            this.last = null;
            this.size = 0;
        }
        public void Add(string value)
        {
            Element element = new Element(value);
            if (size == 0)
            {
                this.first = element;
                this.last = element;
            }
            else
            {
                this.last.nextElement = element;
                this.last = element;
            }
            size++;
        }

        public void AddFirst(string value)
        {
            Element element = new Element(value);
            if (size == 0)
            {
                this.first = element;
                this.last = element;
            }
            else
            {
                element.nextElement = first;
                this.first = element;
            }
            size++;
        }
        public void WriteFirst()
        {
            System.Console.WriteLine(first.value);
        }
        public void WriteLast()
        {
            System.Console.WriteLine(last.value);
        }

        public void Write()
        {
            Element current_element = this.first;
            for (int i = 0; i < size; i++)
            {
                System.Console.WriteLine(current_element.value);
                current_element = current_element.nextElement;
            }
        }
    }
}