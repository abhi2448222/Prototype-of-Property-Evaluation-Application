using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Security.Cryptography;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace EncryptionDecryption
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IEncryptDecryptSrvc
    {
        public string encrypt(string inputText)
        {
            Console.WriteLine(inputText);
            /* Taken a mutable object which will be used to build the Result STring */
            StringBuilder sBuf = new StringBuilder();

            /* Logic for encoding the input Plain text to Cipher Text 
             * > It checks the ASCII value and increment the ASCII value and convert it back to char and append to 
             * > Cipher text if Value is out of range it trims that content 
             */
            foreach(char c in inputText)
            {
                char newChar = new char();
                /* Non Unicode characters are skipped */
                if (((int)c >=0 ) && ((int)c <= 31))
                {
                    continue;
                }
                /* Shifting the ASCII value */
                else if (((int)c >= 32) && ((int)c <= 125))
                {
                    newChar = (char)((int)c + 1);
                }
                /* Special handling for ~ */
                else if ((int)c >= 126)
                {
                    newChar = c;
                }
                else
                {
                    continue;
                }
                sBuf.Append(newChar);
            }
            // Cipher Text 
            return sBuf.ToString();
        }
        public string decrypt(string cipherText)
        {
            Console.WriteLine(cipherText);
            /* Taken a mutable object which will be used to build the Result STring */
            StringBuilder sBuf = new StringBuilder();
            /* Logic for decoding the input Cipher text to Plain Text 
             * > It checks the ASCII value and decrement the ASCII value and convert it back to char and append to 
             * > Cipher text if Value is out of range it trims that content 
             */
            foreach (char c in cipherText)
            {
                char newChar = new char();
                /* Non Unicode characters are skipped */
                if (((int)c >= 0) && ((int)c <= 31))
                {
                    continue;
                }
                /* Shifting the ASCII value */
                else if (((int)c >= 32) && ((int)c <= 126))
                {
                    newChar = (char)((int)c - 1);
                }
                else
                {
                    continue;
                }
                sBuf.Append(newChar);
            }
            // Plain Text 
            return sBuf.ToString();
        }

    }
}
