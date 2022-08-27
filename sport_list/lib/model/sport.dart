class Sport{
  final String _sportName;
  final String _sportInfo;
  final String _sportSmallImage;
  final String _sportLargImage;

  get sportName => this._sportName;
  get sportInfo => this._sportInfo;
  get sportSmallImage => this._sportSmallImage;
  get sportLargeImage => this._sportLargImage;

  Sport(this._sportName, this._sportInfo, this._sportSmallImage, this._sportLargImage);

  @override
  String toString(){
    return '$_sportName - $_sportLargImage';
  }
}