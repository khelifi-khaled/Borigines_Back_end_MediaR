
namespace Models.Entities
{
    public class User
    {

        public User() { }

        public User(Guid id, string firstName, string lastName, string login, bool isActive)
        {
            Id = id;
            FirstName = firstName;
            LastName = lastName;
            Login = login;
            IsActive = isActive;
        }

        public Guid Id  { get; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Login { get; set; }

        public bool IsActive { get; set; }

    }
}
