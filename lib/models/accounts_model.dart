class AccountModel {
  final String accountname;
  final String accountlogo;
  final String playlistcount;

  AccountModel({this.accountname, this.accountlogo, this.playlistcount});
}


List<AccountModel> dummyData = [
  new AccountModel(
    accountname: 'Michael Hu',
    accountlogo: "assets/images/Spotify_Icon_RGB_Green",
    playlistcount: "4"
  ),
];
