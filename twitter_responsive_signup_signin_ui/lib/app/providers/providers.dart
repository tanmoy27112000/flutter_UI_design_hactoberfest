
//Total Providers
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [...remoteProviders, ...localProviders];

//Independent Providers
List<SingleChildWidget> remoteProviders = [];

//Dependent Providers
List<SingleChildWidget> localProviders = [];
