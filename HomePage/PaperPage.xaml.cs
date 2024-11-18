namespace HomePage;

public partial class PaperPage : ContentPage
{
	public PaperPage()
	{
		InitializeComponent();
		// ซ่อนแถบ Navigation Bar PaperPage
        NavigationPage.SetHasNavigationBar(this, false);
	}
	// ฟังก์ชันที่ถูกเรียกเมื่อคลิกข้อความ
        private async void OnLabelTapped(object sender, EventArgs e)
        {
            Navigation.PushAsync(new homePage());
        }
		 private async void OnSaveClicked(object sender, EventArgs e)
        {
            // Navigate to the GarbageListPage
            await Navigation.PushAsync(new GarbageListPage());
        }
}