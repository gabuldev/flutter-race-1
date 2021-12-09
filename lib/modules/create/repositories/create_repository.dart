abstract class ICreateRepository {
  Future<bool> create(
      {required String name, required String price, required String date});
}
