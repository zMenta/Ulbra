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
            this.size++;
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
            this.size++;
        }
        public void WriteFirst()
        {
            System.Console.WriteLine(this.first.value);
        }
        public void WriteLast()
        {
            System.Console.WriteLine(this.last.value);
        }

        public void Write()
        {
            Element current_element = this.first;
            for (int i = 0; i < this.size; i++)
            {
                System.Console.Write(current_element.value + ", ");
                current_element = current_element.nextElement;
            }
            System.Console.WriteLine();
        }

        public Element Find(int index)
        {
            Element current_element = this.first;
            for (int i = 0; i < size; i++)
            {
                if (i == index)
                {
                    break;
                }
                current_element = current_element.nextElement;
            }
            return current_element;
        }


        public void Pop()
        {
            if (this.size > 1)
            {
                // size - 2 = penultimate value index of the list or array.
                Element penultimate = Find(this.size - 2);

                this.size--;
                this.last = penultimate;
                this.last.nextElement = null;
            }
            else
            {
                this.Clear();
            }
        }


        public void PopFirst()
        {
            if (this.size > 1)
            {
                Element first_element = this.first;
                Element second_element = first_element.nextElement;

                this.size--;
                first_element.nextElement = null;
                this.first = second_element;
            }
            else
            {
                this.Clear();
            }
        }


        public void RemovePosition(int index)
        {
            Element element = Find(index);
            if (element == this.first)
            {
                this.PopFirst();
                return;
            }
            else if (element == this.last)
            {
                this.Pop();
                return;
            }
            Element previous_element = Find(index - 1);

            this.size--;
            previous_element.nextElement = element.nextElement;
            element.nextElement = null;
        }

        public int FindValueIndex(string parameter_value)
        {
            int element_index = 0;
            Element current_element = this.first;

            for (int i = 0; i < this.size; i++)
            {
                if (current_element.value == parameter_value)
                {
                    return element_index;
                }
                else
                {
                    current_element = current_element.nextElement;
                    element_index++;
                }
            }

            return -1;
        }


        public void RemoveValue(string parameter_value)
        {
            int element_index = this.FindValueIndex(parameter_value);
            this.RemovePosition(element_index);
        }


        public Element FindValue(string parameter_value)
        {
            int element_index = this.FindValueIndex(parameter_value);
            return this.Find(element_index);
        }

        public int FindValueAppearances(string parameter_value)
        {
            int appearances = 0;
            Element current_element = this.first;

            for (int i = 0; i < this.size; i++)
            {
                if (current_element.value == parameter_value)
                {
                    appearances++;
                }
                current_element = current_element.nextElement;
            }

            return appearances;
        }

    }
}