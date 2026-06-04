using Group.ErrorСorrectionSystem;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;


namespace Group.Serves
{
    class ChatService : IChatServise
    {
        private IChatRepotisory _chatRepotisory;
        private IDisposable _subscription;
        private IUserRepotisory _userRepotisory;
        public ChatService(IChatRepotisory chatRepotisory,IUserRepotisory userRepotisory)
        {
            _chatRepotisory = chatRepotisory;
            _userRepotisory = userRepotisory;
            
        }
    

        public async  Task<Result> AddMessage(string message,string getgroupid)
        {
            if (message == null || message.Trim() == null )
                return Result.Fail("Сообщение нулевое");
            var username = await _userRepotisory.LoadedUserProfil(_userRepotisory.GetUserId());
            if (username.Data == null)
            {
                return Result.Fail("Ошибка загрузки юсера");
            }
            if (username.Data.Name == null)
                return Result.Fail("Имя нулевое");
            Message message1 = new Message()
            {
                Messag = message.Trim(),
                Name = username.Data.Name,
                Id = username.Data.Id
            };
         return  await _chatRepotisory.AddMessage(message1,getgroupid);
        }

        public async  Task<Result<List<Message>>> LoadedMessage(string getidgroup)
        {
            if (getidgroup == null)
                return Result<List<Message>>.Fail("Id пустое");
          var check =   await _chatRepotisory.LoadedMesage(getidgroup);
            return check;
          
        }

        public void Subscribe(ObservableCollection<Message> Messages, string getgroupid)
        {
            var existingMessageTexts = new HashSet<string>(
                Messages.Select(m => $"{m.Name}_{m.Messag}_{m.Time}")
            );

            _subscription = _chatRepotisory.GetMessagesObservable(getgroupid)
                .Subscribe(delta =>
                {
                    if (delta?.Object != null)
                    {
                        MainThread.BeginInvokeOnMainThread(() =>
                        {
                            // Проверяем, не существует ли уже такое сообщение
                            var key = $"{delta.Object.Name}_{delta.Object.Messag}_{delta.Object.Time}";
                            if (!existingMessageTexts.Contains(key) &&
                                !Messages.Any(m => m.Messag == delta.Object.Messag &&
                                                  m.Name == delta.Object.Name))
                            {
                                Messages.Add(delta.Object);
                                existingMessageTexts.Add(key);
                            }
                        });
                    }
                });
        }

        public void Unsubscribe()
        {
            _subscription?.Dispose();
        }
    }
}
