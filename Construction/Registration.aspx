<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Construction.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                 <!-- Page Title -->
    <div class="page-title dark-background" style="background-image: url(assets/img/page-title-bg.jpg);">
      <div class="container position-relative">
        <h1>Registration</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.aspx">Home</a></li>
            <li class="current">Contact</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Contact Section -->
    <section id="contact" class="contact section">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">

          <div class="col-lg-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="200">
              <i class="bi bi-geo-alt"></i>
              <h3>Address</h3>
              <p>Rajkot,Gujrat,India.</p>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3 col-md-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="300">
              <i class="bi bi-telephone"></i>
              <h3>Call Us</h3>
              <p>+91 9924307071</p>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3 col-md-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="400">
              <i class="bi bi-envelope"></i>
              <h3>Email Us</h3>
              <p>tkacha@rku.ac.in</p>
            </div>
          </div><!-- End Info Item -->

        </div>

        <div class="row gy-4 mt-1">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d48389.78314118045!2d-74.006138!3d40.710059!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a22a3bda30d%3A0xb89d1fe6bc499443!2sDowntown%20Conference%20Center!5e0!3m2!1sen!2sus!4v1676961268712!5m2!1sen!2sus" frameborder="0" style="border:0; width: 100%; height: 400px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div><!-- End Google Maps -->

          <div class="col-lg-6">
            <form action="forms/contact.php" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="400">
              <div class="row gy-4">

                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Enter Name :"></asp:Label>
                 <%-- <input type="text" name="name" class="form-control" placeholder="Your Name" required="">--%>
                    <asp:TextBox ID="TextBox1" type="text" name="name" class="form-control" placeholder="Your Name" required="" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6 ">
                    <asp:Label ID="Label2" runat="server" Text="Enter Email :"></asp:Label>
                 <%-- <input type="email" class="form-control" name="email" placeholder="Your Email" required="">--%>
                    <asp:TextBox ID="TextBox2" type="email" class="form-control" name="email" placeholder="Your Email" required="" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-12">
                    <asp:Label ID="Label3" runat="server" Text="Subject :"></asp:Label>
                 <%-- <input type="text" class="form-control" name="subject" placeholder="Subject" required="">--%>
                    <asp:TextBox ID="TextBox3" type="text" class="form-control" name="subject" placeholder="Subject" required="" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-12">
                    <asp:Label ID="Label4" runat="server" Text="Massage :"></asp:Label>
                  <%--<textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>--%>
                    <textarea lass="form-control" name="message" rows="5" placeholder="Message" required="" id="TextArea1" cols="73" rows="10"></textarea>
                </div>

<%--                <div class="col-md-12 text-center">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>--%>

                <%--  <button type="submit">Registration</button>--%>
                   
                   <asp:Button ID="Button2" type="submit" runat="server" Text="Registration" Style="display: inline-block; background-color: #ffc107; color: #ffffff; font-size: 16px; font-weight: bold; padding: 12px 30px; border: none; border-radius: 30px; cursor: pointer; text-align: center; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);" OnClick="Button2_Click" />


                </div>

              </div>
            </form>
          </div><!-- End Contact Form -->

        </div>

      </div>

    </section><!-- /Contact Section -->

  </main>
            </asp:Content>

