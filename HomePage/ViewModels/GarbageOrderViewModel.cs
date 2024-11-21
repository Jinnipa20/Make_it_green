using System;
using System.Collections.ObjectModel;
using System.Windows.Input;
using HomePage.Models;
using HomePage.Services;
using PropertyChanged;

namespace HomePage.ViewModels;


[AddINotifyPropertyChangedInterface]
public class GarbageOrderViewModel
{
    FirestoreService _firestoreService;

    public ObservableCollection<GarbageOrderModel> GarbageOrder { get; set; } = [];
    public GarbageOrderModel CurrentOrder { get; set; }

    public ICommand Reset { get; set; }
    public ICommand AddOrUpdateCommand { get; set; }
    public ICommand DeleteCommand { get; set; }


public GarbageOrderViewModel(FirestoreService firestoreService)
    {
        this._firestoreService = firestoreService;
        this.Refresh();
        Reset = new Command( async () =>
        {
            CurrentOrder = new GarbageOrderModel();
            await this.Refresh();
        }
        );
        AddOrUpdateCommand = new Command(async () =>
        {
            await this.Save();
            await this.Refresh();
        });
        DeleteCommand = new Command(async () =>
        {
            await this.Delete();
            await this.Refresh();
        });
    }

    public async Task GetAll()
    {
        GarbageOrder = [];
        var items = await _firestoreService.GetAllOrder();
        foreach (var item in items)
        {
            GarbageOrder.Add(item);
        }
    }
    public async Task Save()
    {
       if(string.IsNullOrEmpty(CurrentOrder.Type))
       {
            await _firestoreService.InsertOrder(this.CurrentOrder);
       }
       else
       {
            await _firestoreService.UpdateOrder(this.CurrentOrder);
       }
    }
    private async Task Refresh()
    {
        CurrentOrder = new GarbageOrderModel();
        await this.GetAll();
    }

    private async Task Delete()
    {
        await _firestoreService.DeleteOrder(this.CurrentOrder.Type);
    }
}