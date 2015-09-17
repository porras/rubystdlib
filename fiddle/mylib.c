int add(int a, int b)
{
  return a + b;
}

int *returns_a_pointer(int a)
{
  static int b;
  b = a + 12;
  return (&b);
}

int uses_a_pointer(int *a)
{
  int b = *a;
  return b;
}
