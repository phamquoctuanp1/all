#include "wol.h"

Control::Control()
{

}

void Control::turn_on(QString macaddress)
{
    try
       {
           int c{0};
           unsigned port{60000};
           bool quiet{false};
           unsigned long bcast{0xFFFFFFFF};



           // Parse any remaining arguments (not options).
           if (optind == 1) {
               send_wol(macaddress.toStdString(), port, bcast);

               if (!quiet) {
                   std::cout << "Packet sent to " << std::hex << std::uppercase << htonl(bcast) << '-' << macaddress.toStdString()
                       << " on port " << std::dec << port << '\n';
               }
           } else {


           }
       }
       catch(const std::exception& e) {
           std::cerr << e.what() << '\n';

       }

}
