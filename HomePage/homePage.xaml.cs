namespace HomePage;

public partial class homePage : ContentPage
{
	public homePage()
	{
		InitializeComponent();
		// ซ่อนแถบ Navigation Bar homePage
        NavigationPage.SetHasNavigationBar(this, false);
	}

    private void Goto_PaperPage(object sender, EventArgs e)
    {
		Navigation.PushAsync(new PaperPage());
    }



}