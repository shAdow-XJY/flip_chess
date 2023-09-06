import 'chess_piece.dart';

class ChessBoard {
  late List<List<ChessPiece?>> board; // 二维数组表示棋盘

  ChessBoard() {
    // 初始化棋盘并放置棋子
    board = List<List<ChessPiece?>>.generate(10, (row) {
      return List<ChessPiece?>.generate(9, (col) {
        if (row == 0 || row == 9) {
          // 初始化红色棋子
          if (row == 0) {
            return getInitialRedPiece(col, row);
          }
          // 初始化黑色棋子
          if (row == 9) {
            return getInitialBlackPiece(col, row);
          }
        }
        // 其他位置为空
        return null;
      });
    });
  }

  // 创建并返回初始红色棋子
  ChessPiece? getInitialRedPiece(int col, int row) {
    if (row == 0) {
      switch (col) {
        case 0:
        case 8:
          return ChessPiece(ChessPieceType.rook, ChessPieceColor.red, row, col);
        case 1:
        case 7:
          return ChessPiece(ChessPieceType.horse, ChessPieceColor.red, row, col);
        case 2:
        case 6:
          return ChessPiece(ChessPieceType.elephant, ChessPieceColor.red, row, col);
        case 3:
        case 5:
          return ChessPiece(ChessPieceType.advisor, ChessPieceColor.red, row, col);
        case 4:
          return ChessPiece(ChessPieceType.chief, ChessPieceColor.red, row, col);
        default:
          return null;
      }
    }
    return null;
  }

  // 创建并返回初始黑色棋子
  ChessPiece? getInitialBlackPiece(int col, int row) {
    if (row == 9) {
      switch (col) {
        case 0:
        case 8:
          return ChessPiece(ChessPieceType.rook, ChessPieceColor.black, row, col);
        case 1:
        case 7:
          return ChessPiece(ChessPieceType.horse, ChessPieceColor.black, row, col);
        case 2:
        case 6:
          return ChessPiece(ChessPieceType.elephant, ChessPieceColor.black, row, col);
        case 3:
        case 5:
          return ChessPiece(ChessPieceType.advisor, ChessPieceColor.black, row, col);
        case 4:
          return ChessPiece(ChessPieceType.chief, ChessPieceColor.black, row, col);
        default:
          return null;
      }
    }
    return null;
  }

// 添加其他游戏规则和方法
}
