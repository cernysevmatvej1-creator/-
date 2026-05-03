using System.Globalization;

namespace Group.Converters
{
    // Показывает элемент если коллекция не пустая (int > 0 → true)
    public class IntToBoolConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int count) return count > 0;
            return false;
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    // Показывает элемент если коллекция пустая (int == 0 → true)
    public class InverseIntToBoolConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int count) return count == 0;
            return true;
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    // Показывает элемент если строка не пустая и не null
    public class IsNotNullOrEmptyConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s) return !string.IsNullOrWhiteSpace(s);
            return value != null;
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    // Берёт первую букву строки для аватара
    public class FirstCharConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && s.Length > 0)
                return s[0].ToString().ToUpper();
            return "G";
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    // Цвет по статусу (bool/string → Color)
    public class StatusToColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool status)
                return status ? Color.FromArgb("#30D158") : Color.FromArgb("#FF453A");

            if (value is string statusStr)
                return statusStr.ToLower() switch
                {
                    "пойду" or "go" or "иду" or "true" => Color.FromArgb("#30D158"),
                    "не пойду" or "no" or "не иду" or "false" => Color.FromArgb("#FF453A"),
                    _ => Color.FromArgb("#636366")
                };

            return Color.FromArgb("#636366");
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    // Текст статуса (bool/string → "ПОЙДЁТ" / "НЕ ПОЙДЁТ")
    public class StatusToTextConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool status)
                return status ? "ПОЙДЁТ" : "НЕ ПОЙДЁТ";

            if (value is string statusStr)
                return statusStr.ToLower() switch
                {
                    "пойду" or "go" or "иду" or "true" => "ПОЙДЁТ",
                    "не пойду" or "no" or "не иду" or "false" => "НЕ ПОЙДЁТ",
                    "возможно" or "maybe" => "ВОЗМОЖНО",
                    _ => "НЕИЗВЕСТНО"
                };

            return "НЕИЗВЕСТНО";
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }
}