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

    private int stepperValue = 0;

        private async void OnMinusTapped(object sender, EventArgs e)
        {
            if (stepperValue > 0)
                {
                    stepperValue--;
                    StepperWeightLabel.Text = stepperValue.ToString();
                    // แปลงค่าใน StepperWeightLabel เป็นตัวเลข
                    if (double.TryParse(StepperWeightLabel.Text, out double weight))
                    {
                        // คำนวณ Price rate paper 4 THB/kg.
                        double result = weight * 4;

                        // แสดงผลลัพธ์ใน Label
                        ResultLabel.Text = $"Price: {result}";
                    }
                }

        }
                

        private async void OnPlusTapped(object sender, EventArgs e)
        {
            stepperValue++;
            StepperWeightLabel.Text = stepperValue.ToString();

            // แปลงค่าใน StepperWeightLabel เป็นตัวเลข
            if (double.TryParse(StepperWeightLabel.Text, out double weight))
            {
                // คำนวณ Price rate paper 4 THB/kg.
                double result = weight * 4;

                // แสดงผลลัพธ์ใน Label
                 ResultLabel.Text = $"Price: {result}";
            }
        }
                
}