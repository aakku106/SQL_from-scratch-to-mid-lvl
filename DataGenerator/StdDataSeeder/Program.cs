using System;
using Microsoft.Data.SqlClient;
using Bogus;

class Program
{
    static void Main()
    {
        string connectionString = "Server=localhost,1433;Database=NepathyaDB;User Id=SA;Password=MyStrongPass123;TrustServerCertificate=True;Encrypt=True;";

        using var connection = new SqlConnection(connectionString);
        connection.Open();
        Console.WriteLine("✅ Connected to SQL Server");

        var faker = new Faker("en");
        var genderOptions = new[] { "Male", "Female", "Other" };

        for (int i = 0; i < 50; i++)
        {
            string name = faker.Name.FullName();
            string gender = faker.PickRandom(genderOptions);
            string phone = faker.Phone.PhoneNumber("98########");
            string address = faker.Address.FullAddress();
            string email = faker.Internet.Email();

            string query = @"
                INSERT INTO Std_det (stdName, gender, stdPhoneNum, stdAddress, stdEmail)
                VALUES (@name, @gender, @phone, @address, @email);";

            using var cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@email", email);

            cmd.ExecuteNonQuery();
        }

        Console.WriteLine("🔥 50 fake students inserted into NepathyaDB.Std_det");
    }
}
