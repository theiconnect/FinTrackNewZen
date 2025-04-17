namespace FinTrackNewZen.Web.Models
{
    public class UserViewModel
    {
        public string EmailOrPhone { get; set; }
        public string Password { get; set; }
        public string OTP { get; set; }
        public string NewPassword { get; set; }
        public string ConfirmPassword { get; set; }
    }
}
