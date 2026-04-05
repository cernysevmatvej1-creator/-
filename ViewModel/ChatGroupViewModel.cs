using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group.InterfaceServies;
using System;
using System.Collections.Generic;
using System.Text;
using TRAIN;
using System.Collections.ObjectModel;
using Group.Models;
using Microsoft.Maui.Animations;
using System.Linq;

namespace Group.ViewModel
{
    public partial class ChatGroupViewModel : ObservableObject, IQueryAttributable
    {
        private readonly IChatServise _chatservise;

        [ObservableProperty]
        private ObservableCollection<Message> _messages;

        [ObservableProperty]
        private string _messags;

        [ObservableProperty]
        private string _groupId;

        public ChatGroupViewModel(IChatServise chatservise)
        {
            _chatservise = chatservise;
            _messages = new ObservableCollection<Message>();
        }

        public void StartListening()
        {
            _chatservise.Subscribe(Messages, GroupId);
        }

      
        public void StopListening()
        {
            _chatservise.Unsubscribe();
        }

        public async Task LoadedMesages()
        {
            var lismessages = await _chatservise.LoadedMessage(GroupId);
            if (lismessages?.Data != null)
            {
                Messages.Clear();
                foreach (var message in lismessages.Data)
                {
                    Messages.Add(message);
                }
            }
        }

        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            if (query.ContainsKey("groupId"))
            {
                GroupId = query["groupId"].ToString();
            }
        }

        [RelayCommand]
        private async Task AddMessage()
        {
            if (string.IsNullOrWhiteSpace(Messags))
                return;

            var messageText = Messags;
            var result = await _chatservise.AddMessage(messageText, GroupId);

            if (result.Success == true)
            {
                Messags = string.Empty; 

              
               
            }
            else
            {
                await DialogHelper.ShowAlert("Ошибка", result.Message ?? "Не удалось отправить сообщение");
            }
        }

        [RelayCommand]
        private async Task CopyMessage(Message message)
        {
            if (message != null && !string.IsNullOrWhiteSpace(message.Messag))
            {
                await Clipboard.Default.SetTextAsync(message.Messag);
                await DialogHelper.ShowAlert("Успех", "Сообщение скопировано");
            }
        }

        [RelayCommand]
        private async Task DeleteMessage(Message message)
        {
            if (message == null) return;

            var result = await Application.Current.MainPage.DisplayAlert(
                "Удаление",
                "Вы уверены, что хотите удалить это сообщение?",
                "Да",
                "Нет");

            if (result)
            {
                // Здесь добавьте вызов вашего сервиса для удаления
                // var deleteResult = await _chatservise.DeleteMessage(message, GroupId);
                // if (deleteResult?.Da == true)
                // {
                //     Messages.Remove(message);
                // }

                Messages.Remove(message);
                await DialogHelper.ShowAlert("Успех", "Сообщение удалено");
            }
        }

        [RelayCommand]
        private async Task ReplyMessage(Message message)
        {
            if (message != null)
            {
                
                Messags = $"Ответ на: {message.Messag}\n";
                
                await Task.CompletedTask;
            }
        }

        [RelayCommand]
        private async Task ForwardMessage(Message message)
        {
            if (message != null)
            {
           
                await DialogHelper.ShowAlert("Пересылка", $"Переслать: {message.Messag}");
            }
        }
    }
}