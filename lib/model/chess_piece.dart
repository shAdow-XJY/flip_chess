enum ChessPieceType {
  chief,  // 帥/将 - Chief
  advisor,    // 仕/士 - Advisor
  elephant,  // 相/象 - Elephant
  horse,     // 傌/馬 - Horse
  rook,     // 俥/車 - Rook
  cannon,    // 炮/砲 - Cannon
  pawn,   // 兵/卒 - Pawn
}

enum ChessPieceColor {
  red,
  black,
}

class ChessPiece {
  ChessPieceType type; // 棋子名称
  ChessPieceColor color; // 棋子颜色
  int row; // 棋子所在行
  int col; // 棋子所在列

  ChessPiece(this.type, this.color, this.row, this.col);

  // 添加移动规则方法，用于检查棋子是否可以移动到目标位置
  bool canMove(int targetRow, int targetCol) {
    // 实现移动规则的逻辑
    return true;
  }
}
