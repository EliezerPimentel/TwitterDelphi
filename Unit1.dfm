object Form1: TForm1
  Left = 368
  Top = 154
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sample to access Twitter using Delphi'
  ClientHeight = 466
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 96
    Height = 14
    Caption = 'Usu'#225'rio / UserName'
  end
  object Label2: TLabel
    Left = 152
    Top = 8
    Width = 90
    Height = 14
    Caption = 'Senha / Password'
  end
  object lblCount: TLabel
    Left = 384
    Top = 24
    Width = 33
    Height = 22
    Caption = '140'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object UserName: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 22
    TabOrder = 0
  end
  object Password: TEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 22
    PasswordChar = '*'
    TabOrder = 1
  end
  object Msg: TMemo
    Left = 16
    Top = 56
    Width = 401
    Height = 49
    MaxLength = 140
    TabOrder = 2
    OnChange = MsgChange
  end
  object btnPost: TButton
    Left = 16
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Postar / Post'
    TabOrder = 3
    OnClick = btnPostClick
  end
  object memoResult: TMemo
    Left = 16
    Top = 208
    Width = 401
    Height = 241
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object radioUserPost: TRadioButton
    Left = 16
    Top = 184
    Width = 113
    Height = 17
    Caption = 'User Post'
    Checked = True
    TabOrder = 5
    TabStop = True
  end
  object radioFriendsPost: TRadioButton
    Left = 152
    Top = 184
    Width = 113
    Height = 17
    Caption = 'Friends Post'
    TabOrder = 6
  end
  object radioDirectMessage: TRadioButton
    Left = 296
    Top = 184
    Width = 113
    Height = 17
    Caption = 'Direct Message'
    TabOrder = 7
  end
  object btnRead: TButton
    Left = 16
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Ler / Read'
    TabOrder = 8
    OnClick = btnReadClick
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 283
    Top = 20
  end
  object XMLDoc: TXMLDocument
    Active = True
    XML.Strings = (
      '<?xml version="1.0" encoding="UTF-8"?>'
      '<statuses type="array">'
      '<status>'
      '  <created_at>Sat Jun 06 00:05:07 +0000 2009</created_at>'
      '  <id>2049554713</id>'
      
        '  <text>RT @martinfowler:Occasionally people like to use the com' +
        'parative values format of the agile manifesto.Thoughts on that: ' +
        'http://bit.ly/hskqf</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>66</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>62</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>786</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Sat Jun 06 00:00:25 +0000 2009</created_at>'
      '  <id>2049509944</id>'
      
        '  <text>QuickIndex 3, formMain with 2000 lines. If I sum the lin' +
        'es of all Units, I have more than 5000 lines. :(</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>66</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>62</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>785</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Fri Jun 05 22:34:38 +0000 2009</created_at>'
      '  <id>2048668508</id>'
      
        '  <text>Still working on QuickIndex 3, using Delphi. Was needed ' +
        'to refactor a lot of part of my code :(</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>63</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>784</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Fri Jun 05 22:18:28 +0000 2009</created_at>'
      '  <id>2048504591</id>'
      
        '  <text>Steve Jobs prepara seu retorno: http://bit.ly/19JB69</te' +
        'xt>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>63</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>783</statuses_count>'
      '    <notifications></notifications>'
      '    <following></following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Fri Jun 05 17:16:28 +0000 2009</created_at>'
      '  <id>2045126464</id>'
      
        '  <text>Less IFs, more power: http://www.antiifcampaign.com/</te' +
        'xt>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>61</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>782</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 22:47:46 +0000 2009</created_at>'
      '  <id>2035607985</id>'
      
        '  <text>@garotasemfio J&#225; tens uma pr&#233;via para gente ap' +
        'reciar? ;)</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id>2035564454</in_reply_to_status_id>'
      '  <in_reply_to_user_id>6665802</in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      
        '  <in_reply_to_screen_name>garotasemfio</in_reply_to_screen_name' +
        '>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>66</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>62</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>786</statuses_count>'
      '    <notifications></notifications>'
      '    <following></following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 20:31:44 +0000 2009</created_at>'
      '  <id>2034035665</id>'
      
        '  <text>RT @carlosbrando ActiveRecord na vis&#227;o de um DBA, p' +
        'or Coutinho http://bit.ly/GQj0f</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>67</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>61</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>780</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 14:50:45 +0000 2009</created_at>'
      '  <id>2030077681</id>'
      
        '  <text>Algu&#233;m conhece algum controle financeiro, tipo o MS' +
        ' Money, mas na WEB? J&#225; tentei alguns, mas ainda deixam a de' +
        'sejar, na minha opini&#227;o.</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>67</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>61</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>779</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 14:37:02 +0000 2009</created_at>'
      '  <id>2029927760</id>'
      
        '  <text>Porque a caixa preta, n&#227;o &#233; preta? Saiba como ' +
        'funciona: http://bit.ly/aT70G</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>67</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>61</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>778</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 14:25:57 +0000 2009</created_at>'
      '  <id>2029806871</id>'
      
        '  <text>RT @rubyinside_br Streamlined: Lindas interfaces instant' +
        '&#226;neas para Rails http://bit.ly/vnh2C</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>61</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>777</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 12:25:24 +0000 2009</created_at>'
      '  <id>2028693166</id>'
      '  <text>@CamilaLM ... bom trabalho e uma otima quinta ;)</text>'
      
        '  <source>&lt;a href="http://twitterhelp.blogspot.com/2008/05/tw' +
        'itter-via-mobile-web-mtwittercom.html"&gt;mobile web&lt;/a&gt;</' +
        'source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id>25433030</in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name>CamilaLM</in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>66</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>62</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>786</statuses_count>'
      '    <notifications></notifications>'
      '    <following></following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 12:21:48 +0000 2009</created_at>'
      '  <id>2028666894</id>'
      
        '  <text>AIESEC traz jovens estrangeiros para estagios no Brasil.' +
        ' Alguem conhece?</text>'
      
        '  <source>&lt;a href=&quot;http://twitterhelp.blogspot.com/2008/' +
        '05/twitter-via-mobile-web-mtwittercom.html&quot;&gt;mobile web&l' +
        't;/a&gt;</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>775</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 11:43:39 +0000 2009</created_at>'
      '  <id>2028406249</id>'
      
        '  <text>morning twitters. o frio continua... agora:cafe da manha' +
        ' com os caras da AIESEC</text>'
      
        '  <source>&lt;a href=&quot;http://twitterhelp.blogspot.com/2008/' +
        '05/twitter-via-mobile-web-mtwittercom.html&quot;&gt;mobile web&l' +
        't;/a&gt;</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>774</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 04:05:06 +0000 2009</created_at>'
      '  <id>2025538374</id>'
      '  <text>&amp;lt;/frio&amp;gt; &amp;lt;sono&amp;gt;</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>773</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 03:50:23 +0000 2009</created_at>'
      '  <id>2025395731</id>'
      
        '  <text>Bill Gates e Steve Jobs juntos, numa entrevista, coisa q' +
        'ue n&#227;o se v&#234; muito n&#227;o &#233;? http://bit.ly/tye0' +
        'd</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>66</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>772</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 01:51:23 +0000 2009</created_at>'
      '  <id>2024180667</id>'
      
        '  <text>Friooooo... se o termometro estiver certo, agora na rua ' +
        'em Franca estao 8 graus....</text>'
      
        '  <source>&lt;a href="http://twitterhelp.blogspot.com/2008/05/tw' +
        'itter-via-mobile-web-mtwittercom.html"&gt;mobile web&lt;/a&gt;</' +
        'source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>66</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>771</statuses_count>'
      '    <notifications></notifications>'
      '    <following></following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 01:04:14 +0000 2009</created_at>'
      '  <id>2023688334</id>'
      
        '  <text>Usu&#225;rios de open source ganham rede social Software' +
        ' Livre Brasil: http://migre.me/1O06</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>65</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>770</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>false</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Thu Jun 04 01:02:11 +0000 2009</created_at>'
      '  <id>2023667129</id>'
      
        '  <text>Localizar gatos, avisar q tem p&#227;o quente, regar pla' +
        'ntas... Conhe&#231;a 10 usos curiosos do twitter: http://migre.m' +
        'e/1NZS</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>63</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>769</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Wed Jun 03 02:36:55 +0000 2009</created_at>'
      '  <id>2011817215</id>'
      
        '  <text>RT @carlosbrando CearaOnRails - 01 Abertura e Palestra T' +
        'iago http://bit.ly/Us40X</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>62</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>768</statuses_count>'
      '    <notifications></notifications>'
      '    <following></following>'
      '  </user>'
      '</status>'
      '<status>'
      '  <created_at>Wed Jun 03 02:04:26 +0000 2009</created_at>'
      '  <id>2011471601</id>'
      '  <text>LiveMocha no ar novamente.</text>'
      '  <source>web</source>'
      '  <truncated>false</truncated>'
      '  <in_reply_to_status_id></in_reply_to_status_id>'
      '  <in_reply_to_user_id></in_reply_to_user_id>'
      '  <favorited>false</favorited>'
      '  <in_reply_to_screen_name></in_reply_to_screen_name>'
      '  <user>'
      '    <id>16418242</id>'
      '    <name>Eli&#233;zer Pimentel</name>'
      '    <screen_name>EliezerPimentel</screen_name>'
      '    <location>Franca, SP, Brazil</location>'
      '    <description></description>'
      
        '    <profile_image_url>http://s3.amazonaws.com/twitter_productio' +
        'n/profile_images/141258901/Caricatura_Eliezer_rosto_normal.jpg</' +
        'profile_image_url>'
      '    <url>http://alemdecodigos.blogspot.com</url>'
      '    <protected>false</protected>'
      '    <followers_count>62</followers_count>'
      '    <profile_background_color>0099B9</profile_background_color>'
      '    <profile_text_color>3C3940</profile_text_color>'
      '    <profile_link_color>0099B9</profile_link_color>'
      
        '    <profile_sidebar_fill_color>95E8EC</profile_sidebar_fill_col' +
        'or>'
      
        '    <profile_sidebar_border_color>5ED4DC</profile_sidebar_border' +
        '_color>'
      '    <friends_count>60</friends_count>'
      '    <created_at>Tue Sep 23 12:15:12 +0000 2008</created_at>'
      '    <favourites_count>0</favourites_count>'
      '    <utc_offset>-10800</utc_offset>'
      '    <time_zone>Brasilia</time_zone>'
      
        '    <profile_background_image_url>http://s3.amazonaws.com/twitte' +
        'r_production/profile_background_images/11804948/twitter_bkgd.png' +
        '</profile_background_image_url>'
      '    <profile_background_tile>false</profile_background_tile>'
      '    <statuses_count>767</statuses_count>'
      '    <notifications>false</notifications>'
      '    <following>0</following>'
      '  </user>'
      '</status>'
      '</statuses>')
    Left = 320
    Top = 20
    DOMVendorDesc = 'MSXML'
  end
end
