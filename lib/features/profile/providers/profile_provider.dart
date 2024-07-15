import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sulala_driver_app/core/enums/exception_enums/server_exception_enum.dart';
import 'package:sulala_driver_app/core/injection/injection.dart';
import 'package:sulala_driver_app/features/auth/model/user.dart';
import 'package:sulala_driver_app/features/profile/data/repositories/profile_repository.dart';

part 'profile_provider.g.dart';

@riverpod
class Order extends _$Order {
  @override
  FutureOr<User?> build() async {
    await fetchDriverProfile();
    return state.value;
  }

  FutureOr<void> fetchDriverProfile() async {
    state = const AsyncValue.loading();

    final failedOrCart = await getIt<ProfileRepository>().getDriverProfile();

    failedOrCart.fold(
      (l) {
        l.maybeWhen(
          null,
          serverFailure: (ex, message) {
            state = AsyncValue.error(message ?? ex.message, StackTrace.current);
          },
          orElse: () {
            state =
                AsyncValue.error("Something went wrong".tr, StackTrace.current);
          },
        );
      },
      (r) {
        state = AsyncValue.data(r.data);
      },
    );
  }
}

  // FutureOr<bool> cancelOrder(
  //   int orderId,
  // ) async {
  //   state = const AsyncValue.loading();

  //   final failedOrCart = await getIt<OrderRepository>()
  //       .cancelOrder(orderId, {"status": OrderStatus.CANCELLED.name});
  //   bool status = failedOrCart.isRight;
  //   await ref.read(orderProvider.notifier).fetchOrders();
  //   return status;
  // }

  // FutureOr<bool> reOrder(
  //   int orderId,
  // ) async {
  //   state = const AsyncValue.loading();

  //   final failedOrCart =
  //       await getIt<OrderRepository>().reOrder(orderId, {"order_id": orderId});
  //   bool status = failedOrCart.isRight;
  //   await ref.read(orderProvider.notifier).fetchOrders();
  //   return status;
  // }

  // FutureOr<void> deletePackage(String cartId) async {
  //   state = const AsyncValue.loading();

  //   final failedOrCart = await getIt<CartRepository>().deletePackage(cartId);

  //   failedOrCart.fold(
  //     (l) {
  //       l.maybeWhen(
  //         null,
  //         serverFailure: (ex, message) {
  //           state = AsyncValue.error(message ?? ex.message, StackTrace.current);
  //         },
  //         orElse: () {
  //           state =
  //               AsyncValue.error("Something went wrong".tr, StackTrace.current);
  //         },
  //       );
  //     },
  //     (r) {
  //       // state = AsyncValue.data(r);
  //       ref.read(packageProvider.notifier).fetchPackage();
  //     },
  //   );
  // }
// }
