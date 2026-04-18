using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

namespace Group.Models
{
    public  class Metting
    {


        
        public string NameAvtorMetting { get; set; }
        public List<(User, bool)> Users { get; set; } = new List<(User,bool)>();
        public  string Mesto { get; set; }
        public string Time {  get; set; }
        public string Key { get; set; }


    }
    // Converters/BoolToStatusConverter.cs

            public class BoolToStatusConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return (bool)value ? "ИДЁТ ✅" : "НЕ ИДЁТ ❌";
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }

        public class BoolToColorConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return (bool)value ? Color.FromHex("#4CAF50") : Color.FromHex("#F44336");
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }
    }


