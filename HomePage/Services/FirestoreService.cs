using System;
using Google.Cloud.Firestore;
using HomePage.Models;

namespace HomePage.Services;

public class FirestoreService
{
    private FirestoreDb db;
    public string StatusMessage;

    public FirestoreService()
    {
        this.SetupFireStore();
    }
     private async Task SetupFireStore()
    {
        if (db == null)
        {
            var stream = await FileSystem.OpenAppPackageFileAsync("make-it-green-e30d2-firebase-adminsdk-dflto-1f0a723832.json");
            var reader = new StreamReader(stream);
            var contents = reader.ReadToEnd();
            db = new FirestoreDbBuilder
            {
                ProjectId = "make-it-green-e30d2",

                JsonCredentials = contents
            }.Build();
        }
    }
    public async Task<List<GarbageOrderModel>> GetAllOrder()
    {
        try
        {
            await SetupFireStore();
            var data = await db.Collection("GarbageOrder").GetSnapshotAsync();
            var garbageorder = data.Documents.Select(doc =>
            {
                var order = new GarbageOrderModel();
                order.Type = doc.GetValue<string>("Type");
                order.Weight = doc.GetValue<string>("Weight");
                order.Price = doc.GetValue<string>("Price");
                return order;
            }).ToList();
            return garbageorder;
        }
        catch (Exception ex)
        {

            StatusMessage = $"Error: {ex.Message}";
        }
        return null;
    }
    public async Task InsertStudent(GarbageOrderModel order)
    {
        try
        {
            await SetupFireStore();
            var orderData = new Dictionary<string, object>
            {
                { "Type", order.Type },
                { "Weight", order.Weight },
                { "Price", order.Price }
                // Add more fields as needed
            };
            await db.Collection("GarbageOrder").AddAsync(orderData);
        }
        catch (Exception ex)
        {

            StatusMessage = $"Error: {ex.Message}";
        }
    }
     public async Task UpdateStudent(GarbageOrderModel order)
    {
        try
        {
            await SetupFireStore();

            // Manually create a dictionary for the updated data
            var studentData = new Dictionary<string, object>
            {
                { "Type", order.Type },
                { "Weight", order.Weight },
                { "Price", order.Price }
                // Add more fields as needed
            };
        }
    }
}
