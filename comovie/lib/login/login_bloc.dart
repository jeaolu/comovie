// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'login_event.dart';
// part 'login_state.dart';
// part 'login_bloc.freezed.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc() : super(LoginState.initial()) {
//     // Handle email input
//     on<_EnterEmail>((event, emit) {
//       emit(state.copyWith(email: event.email));
//     });
    
//     // Handle password input
//     on<_EnterPassword>((event, emit) {
//       emit(state.copyWith(password: event.password));
//     });
    
//     // Toggle password visibility (e.g., show/hide password)
//     on<_ToggleSwitchButton>((event, emit) {
//       emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
//     });
    
//     // Mark a loading state when needed
//     on<_Loading>((event, emit) {
//       emit(state.copyWith(isLoading: true));
//     });
    
//     // Attempt a login after user input
//     on<_OnLogin>((event, emit) async {
//       // Start login by showing loading indicator and clearing error
//       emit(state.copyWith(isLoading: true, errorMessage: null));
      
//       // Simulate an API call with delay
//       await Future.delayed(const Duration(seconds: 1));
      
//       // Validate credentials (simple mock validation)
//       if (state.email == 'admin@example.com' && state.password == 'password') {
//         emit(state.copyWith(isLoading: false, loginSuccess: true));
//       } else {
//         emit(state.copyWith(
//           isLoading: false,
//           loginSuccess: false,
//           errorMessage: 'Invalid email or password',
//         ));
//       }
//     });
//   }
// }

