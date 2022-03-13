using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.App_Scripts
{
    public class CustomPasswordHash : IPasswordHasher
    {
        public string HashPassword(string password)
        {
            return Encrypt.GetMD5Hash(password);
        }

        public Microsoft.AspNet.Identity.PasswordVerificationResult VerifyHashedPassword(string hashedPassword, string providedPassword)
        {
            if (hashedPassword == HashPassword(providedPassword))
                return PasswordVerificationResult.Success;
            else
                return PasswordVerificationResult.Failed;
        }
    }
}