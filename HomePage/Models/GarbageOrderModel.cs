using System;
using Google.Cloud.Firestore;

namespace HomePage.Models;

public class GarbageOrderModel
{
    [FirestoreProperty]
    public string Type { get; set; }


    [FirestoreProperty]
    public string Weight { get; set; }


    [FirestoreProperty]
    public string Price { get; set; }
}
