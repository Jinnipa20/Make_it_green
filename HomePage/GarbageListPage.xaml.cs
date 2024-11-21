namespace HomePage;

public partial class GarbageListPage : ContentPage
{
	public GarbageListPage()
	{
		InitializeComponent();
		// ซ่อนแถบ Navigation Bar GarbagePage
        NavigationPage.SetHasNavigationBar(this, false);
	}
	 private async void OnLabelTapped(object sender, EventArgs e)
        {
            Navigation.PushAsync(new homePage());
        }
}