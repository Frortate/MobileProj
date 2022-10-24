using CookBlog.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace CookBlog.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}