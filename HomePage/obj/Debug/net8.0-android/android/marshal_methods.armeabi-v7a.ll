; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [332 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [658 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 252
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 286
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 206
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 327
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 205
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 270
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 270
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 290
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 226
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 272
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 324
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 325
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 224
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 246
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 229
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 248
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 245
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 296
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 42: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 324
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 215
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 309
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 247
	i32 356389973, ; 48: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 308
	i32 360082299, ; 49: System.ServiceModel.Web => 0x15766b7b => 131
	i32 364956269, ; 50: Grpc.Net.Common => 0x15c0ca6d => 189
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 371306672, ; 52: Grpc.Core.Api.dll => 0x1621b0b0 => 187
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 391886110, ; 57: Grpc.Net.Client.dll => 0x175bb51e => 188
	i32 392610295, ; 58: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 59: _Microsoft.Android.Resource.Designer => 0x17969339 => 328
	i32 403441872, ; 60: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 61: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 320
	i32 441335492, ; 62: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 230
	i32 442565967, ; 63: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 64: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 243
	i32 451504562, ; 65: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 245
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 258
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 307
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 301
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 199
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 290
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 195
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 83: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 190
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 283
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 281
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 315
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 235
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 313
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 241
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 646990296, ; 96: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 181
	i32 662205335, ; 97: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 98: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 277
	i32 666292255, ; 99: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 222
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 102: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 295
	i32 690569205, ; 103: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 104: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 292
	i32 693804605, ; 105: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 106: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 107: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 287
	i32 700358131, ; 108: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 109: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 310
	i32 709557578, ; 110: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 298
	i32 720511267, ; 111: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 291
	i32 722857257, ; 112: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 113: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 741650476, ; 114: HomePage => 0x2c34b02c => 0
	i32 752232764, ; 115: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 116: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 212
	i32 759454413, ; 117: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 118: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 119: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 120: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 319
	i32 789151979, ; 121: Microsoft.Extensions.Options => 0x2f0980eb => 198
	i32 790371945, ; 122: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 236
	i32 804715423, ; 123: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 250
	i32 823281589, ; 125: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 263
	i32 873119928, ; 130: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 131: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 132: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 135: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 322
	i32 928116545, ; 136: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 286
	i32 952186615, ; 137: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 138: Newtonsoft.Json => 0x38f24a24 => 206
	i32 956575887, ; 139: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 291
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 284
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 247
	i32 975236339, ; 142: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 143: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 144: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 145: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 146: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 147: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 148: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 149: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 267
	i32 1019214401, ; 150: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 151: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 194
	i32 1029334545, ; 152: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 297
	i32 1031528504, ; 153: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 285
	i32 1035644815, ; 154: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 220
	i32 1036536393, ; 155: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 156: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1049751285, ; 157: Google.Api.CommonProtos.dll => 0x3e91eef5 => 174
	i32 1052210849, ; 158: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 254
	i32 1067306892, ; 159: GoogleGson => 0x3f9dcf8c => 185
	i32 1082857460, ; 160: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 161: Xamarin.Kotlin.StdLib => 0x409e66d8 => 288
	i32 1098259244, ; 162: System => 0x41761b2c => 164
	i32 1118262833, ; 163: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 310
	i32 1121599056, ; 164: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 253
	i32 1127624469, ; 165: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 197
	i32 1145085672, ; 166: System.Linq.Async.dll => 0x44409ee8 => 209
	i32 1149092582, ; 167: Xamarin.AndroidX.Window => 0x447dc2e6 => 280
	i32 1168523401, ; 168: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 316
	i32 1170634674, ; 169: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 170: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 276
	i32 1178241025, ; 171: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 261
	i32 1203173028, ; 172: Grpc.Net.Client => 0x47b6f6a4 => 188
	i32 1203215381, ; 173: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 314
	i32 1204270330, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 222
	i32 1208641965, ; 175: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 176: CommunityToolkit.Mvvm => 0x4868cc7b => 173
	i32 1219128291, ; 177: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 178: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 312
	i32 1243150071, ; 179: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 281
	i32 1253011324, ; 180: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 181: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 296
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 271
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 275
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 227
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 292
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 219
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 238
	i32 1309188875, ; 188: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 189: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 280
	i32 1324164729, ; 190: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 191: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 192: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 193: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 326
	i32 1376866003, ; 194: Xamarin.AndroidX.SavedState => 0x52114ed3 => 267
	i32 1379779777, ; 195: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 196: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 197: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 231
	i32 1408764838, ; 198: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 199: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 200: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 201: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 294
	i32 1434145427, ; 202: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 203: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 284
	i32 1437713837, ; 204: Grpc.Auth => 0x55b1c5ad => 186
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 207: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 210: es\Microsoft.Maui.Controls.resources => 0x57152abe => 300
	i32 1461234159, ; 211: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 212: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 213: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 214: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 221
	i32 1470490898, ; 215: Microsoft.Extensions.Primitives => 0x57a5e912 => 199
	i32 1479771757, ; 216: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 217: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 218: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 219: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 268
	i32 1493001747, ; 220: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 304
	i32 1514721132, ; 221: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 299
	i32 1536373174, ; 222: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 223: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 224: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 225: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 226: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 319
	i32 1565862583, ; 227: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 228: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 229: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 230: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 231: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 237
	i32 1592978981, ; 232: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 233: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 285
	i32 1601112923, ; 234: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 235: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 236: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 237: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 257
	i32 1622358360, ; 238: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 239: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 279
	i32 1635184631, ; 240: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 241
	i32 1636350590, ; 241: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 234
	i32 1639515021, ; 242: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 243: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 244: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 245: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 246: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 273
	i32 1658251792, ; 247: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 282
	i32 1670060433, ; 248: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 229
	i32 1675553242, ; 249: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 250: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 251: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 252: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 253: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 254: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 255: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 289
	i32 1701541528, ; 256: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 250
	i32 1726116996, ; 258: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 259: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 260: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 225
	i32 1736233607, ; 261: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 317
	i32 1743415430, ; 262: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 295
	i32 1744735666, ; 263: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 264: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 265: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 266: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 267: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 268: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 269: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 272
	i32 1770582343, ; 270: Microsoft.Extensions.Logging.dll => 0x6988f147 => 195
	i32 1776026572, ; 271: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 272: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 273: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782161461, ; 274: Grpc.Core.Api => 0x6a39a035 => 187
	i32 1782862114, ; 275: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 311
	i32 1788241197, ; 276: Xamarin.AndroidX.Fragment => 0x6a96652d => 243
	i32 1793755602, ; 277: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 303
	i32 1796167890, ; 278: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 190
	i32 1808609942, ; 279: Xamarin.AndroidX.Loader => 0x6bcd3296 => 257
	i32 1813058853, ; 280: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 288
	i32 1813201214, ; 281: Xamarin.Google.Android.Material => 0x6c13413e => 282
	i32 1818569960, ; 282: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 262
	i32 1818787751, ; 283: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 284: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 285: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 286: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 196
	i32 1842015223, ; 287: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 323
	i32 1847515442, ; 288: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 212
	i32 1853025655, ; 289: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 320
	i32 1858542181, ; 290: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 291: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 292: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 302
	i32 1879696579, ; 293: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 294: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 223
	i32 1888955245, ; 295: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 296: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 297: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900519031, ; 298: Grpc.Auth.dll => 0x71479e77 => 186
	i32 1900610850, ; 299: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 300: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1927897671, ; 301: System.CodeDom.dll => 0x72e96247 => 208
	i32 1939592360, ; 302: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 303: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 304: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 269
	i32 1968388702, ; 305: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 191
	i32 1983156543, ; 306: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 289
	i32 1985761444, ; 307: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 214
	i32 2003115576, ; 308: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 299
	i32 2011961780, ; 309: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 310: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 254
	i32 2025202353, ; 311: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 294
	i32 2031763787, ; 312: Xamarin.Android.Glide => 0x791a414b => 211
	i32 2045470958, ; 313: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 314: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 249
	i32 2060060697, ; 315: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 316: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 298
	i32 2070888862, ; 317: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 318: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 319: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 320: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 321: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 322: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 323: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 324: Microsoft.Maui => 0x80bd55ad => 203
	i32 2169148018, ; 325: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 306
	i32 2178612968, ; 326: System.CodeDom => 0x81dafee8 => 208
	i32 2181898931, ; 327: Microsoft.Extensions.Options.dll => 0x820d22b3 => 198
	i32 2192057212, ; 328: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 196
	i32 2193016926, ; 329: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 330: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 293
	i32 2201231467, ; 331: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 332: it\Microsoft.Maui.Controls.resources => 0x839595db => 308
	i32 2217644978, ; 333: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 276
	i32 2222056684, ; 334: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 335: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 258
	i32 2252106437, ; 336: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 337: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 338: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 339: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 192
	i32 2267999099, ; 340: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 213
	i32 2270573516, ; 341: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 302
	i32 2279755925, ; 342: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 265
	i32 2293034957, ; 343: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 344: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 345: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 346: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 312
	i32 2305521784, ; 347: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 348: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 217
	i32 2320631194, ; 349: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 350: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 351: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 352: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 353: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 354: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 191
	i32 2378619854, ; 355: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 356: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 357: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 307
	i32 2397347608, ; 358: Google.LongRunning.dll => 0x8ee49f18 => 183
	i32 2401565422, ; 359: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 360: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 240
	i32 2421380589, ; 361: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 362: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 227
	i32 2427813419, ; 363: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 304
	i32 2435356389, ; 364: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 365: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2441199521, ; 366: Google.Cloud.Firestore => 0x9181bfa1 => 180
	i32 2454642406, ; 367: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 368: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 369: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 370: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 230
	i32 2471841756, ; 371: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 372: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 373: Microsoft.Maui.Controls => 0x93dba8a1 => 201
	i32 2483903535, ; 374: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 375: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486847491, ; 376: Google.Api.Gax => 0x943a4803 => 175
	i32 2490993605, ; 377: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 378: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 379: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 252
	i32 2522472828, ; 380: Xamarin.Android.Glide.dll => 0x9659e17c => 211
	i32 2538310050, ; 381: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 382: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 305
	i32 2562349572, ; 383: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 384: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 385: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 253
	i32 2581819634, ; 386: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 275
	i32 2585220780, ; 387: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 388: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 389: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 390: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 314
	i32 2605712449, ; 391: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 293
	i32 2615233544, ; 392: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 244
	i32 2616218305, ; 393: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 197
	i32 2617129537, ; 394: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 395: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 396: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 234
	i32 2624644809, ; 397: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 239
	i32 2626831493, ; 398: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 309
	i32 2627185994, ; 399: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 400: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 401: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 248
	i32 2635732976, ; 402: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 180
	i32 2663391936, ; 403: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 213
	i32 2663698177, ; 404: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 405: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 406: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 407: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 408: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 409: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 410: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 273
	i32 2715334215, ; 411: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 412: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 413: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 414: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 415: Xamarin.AndroidX.Activity => 0xa2e0939b => 215
	i32 2735172069, ; 416: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 417: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 221
	i32 2740948882, ; 418: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2744327253, ; 419: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 176
	i32 2748088231, ; 420: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 421: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 315
	i32 2757554483, ; 422: Google.Api.Gax.Grpc => 0xa45cf133 => 176
	i32 2758225723, ; 423: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 202
	i32 2764765095, ; 424: Microsoft.Maui.dll => 0xa4caf7a7 => 203
	i32 2765824710, ; 425: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2768457651, ; 426: PropertyChanged => 0xa5034fb3 => 207
	i32 2770495804, ; 427: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 287
	i32 2778768386, ; 428: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 278
	i32 2779977773, ; 429: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 266
	i32 2785988530, ; 430: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 321
	i32 2788224221, ; 431: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 244
	i32 2801831435, ; 432: Microsoft.Maui.Graphics => 0xa7008e0b => 205
	i32 2803228030, ; 433: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 434: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 300
	i32 2810250172, ; 435: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 231
	i32 2818335264, ; 436: System.Linq.Async => 0xa7fc6220 => 209
	i32 2819470561, ; 437: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 438: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 439: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 266
	i32 2824502124, ; 440: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 441: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 313
	i32 2838993487, ; 442: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 255
	i32 2839679515, ; 443: Google.LongRunning => 0xa942121b => 183
	i32 2849599387, ; 444: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 445: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 278
	i32 2855708567, ; 446: Xamarin.AndroidX.Transition => 0xaa36a797 => 274
	i32 2861098320, ; 447: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 448: Microsoft.Maui.Essentials => 0xaa8a4878 => 204
	i32 2870099610, ; 449: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 216
	i32 2875164099, ; 450: Jsr305Binding.dll => 0xab5f85c3 => 283
	i32 2875220617, ; 451: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 452: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 242
	i32 2887636118, ; 453: System.Net.dll => 0xac1dd496 => 81
	i32 2893550578, ; 454: Google.Apis.Core => 0xac7813f2 => 179
	i32 2898407901, ; 455: System.Management => 0xacc231dd => 210
	i32 2899753641, ; 456: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 457: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 458: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 459: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 460: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2912646636, ; 461: Google.Api.CommonProtos => 0xad9b75ec => 174
	i32 2916838712, ; 462: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 279
	i32 2919462931, ; 463: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 464: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 218
	i32 2936416060, ; 465: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 466: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 467: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 468: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 469: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 470: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 471: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 238
	i32 2987532451, ; 472: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 269
	i32 2990604888, ; 473: Google.Apis => 0xb2410258 => 177
	i32 2996846495, ; 474: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 251
	i32 3016983068, ; 475: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 271
	i32 3023353419, ; 476: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 477: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 246
	i32 3038032645, ; 478: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 328
	i32 3056245963, ; 479: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 268
	i32 3057625584, ; 480: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 259
	i32 3059408633, ; 481: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 482: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 483: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 484: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 306
	i32 3090735792, ; 485: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 486: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 487: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3106263381, ; 488: Grpc.Net.Common.dll => 0xb925d155 => 189
	i32 3111772706, ; 489: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 490: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 491: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 492: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 493: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 494: GoogleGson.dll => 0xbba64c02 => 185
	i32 3159123045, ; 495: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 496: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 497: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 260
	i32 3192346100, ; 498: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 499: System.Web => 0xbe592c0c => 153
	i32 3203277885, ; 500: Google.Api.Gax.dll => 0xbeee243d => 175
	i32 3204380047, ; 501: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 502: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 503: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 237
	i32 3220365878, ; 504: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 505: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 506: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 507: Xamarin.AndroidX.CardView => 0xc235e84d => 225
	i32 3265493905, ; 508: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 509: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 510: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 511: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 512: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 513: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 514: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 515: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 516: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 301
	i32 3316684772, ; 517: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 518: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 235
	i32 3317144872, ; 519: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 520: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 223
	i32 3345895724, ; 521: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 264
	i32 3346324047, ; 522: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 261
	i32 3357674450, ; 523: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 318
	i32 3358260929, ; 524: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 525: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 216
	i32 3362522851, ; 526: Xamarin.AndroidX.Core => 0xc86c06e3 => 232
	i32 3366347497, ; 527: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 528: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 265
	i32 3381016424, ; 529: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 297
	i32 3395150330, ; 530: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 531: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 532: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 236
	i32 3428513518, ; 533: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 193
	i32 3429136800, ; 534: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 535: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 536: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 239
	i32 3445260447, ; 537: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 538: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 200
	i32 3453592554, ; 539: Google.Apis.Core.dll => 0xcdd9a3ea => 179
	i32 3463511458, ; 540: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 305
	i32 3471940407, ; 541: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 542: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 543: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 318
	i32 3484440000, ; 544: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 317
	i32 3485117614, ; 545: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 546: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 547: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 228
	i32 3499097210, ; 548: Google.Protobuf.dll => 0xd08ffc7a => 184
	i32 3509114376, ; 549: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 550: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 551: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 552: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 553: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 554: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 555: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 325
	i32 3597029428, ; 556: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 214
	i32 3598063517, ; 557: Google.Cloud.Firestore.V1 => 0xd676179d => 181
	i32 3598340787, ; 558: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 559: System.Linq.dll => 0xd715a361 => 61
	i32 3612435020, ; 560: System.Management.dll => 0xd751624c => 210
	i32 3624195450, ; 561: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 562: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 263
	i32 3633644679, ; 563: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 218
	i32 3638274909, ; 564: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 565: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 249
	i32 3643446276, ; 566: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 322
	i32 3643854240, ; 567: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 260
	i32 3645089577, ; 568: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3645630983, ; 569: Google.Protobuf => 0xd94bea07 => 184
	i32 3657292374, ; 570: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 192
	i32 3660523487, ; 571: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 572: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 573: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 224
	i32 3684561358, ; 574: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 228
	i32 3697841164, ; 575: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 327
	i32 3700866549, ; 576: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 577: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 233
	i32 3716563718, ; 578: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 579: Xamarin.AndroidX.Annotation => 0xdda814c6 => 217
	i32 3719669413, ; 580: HomePage.dll => 0xddb5a6a5 => 0
	i32 3724971120, ; 581: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 259
	i32 3732100267, ; 582: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 583: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 584: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 585: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3757995660, ; 586: Google.Cloud.Location.dll => 0xdffe768c => 182
	i32 3786282454, ; 587: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 226
	i32 3792276235, ; 588: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3793997468, ; 589: Google.Apis.Auth.dll => 0xe223ce9c => 178
	i32 3800979733, ; 590: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 200
	i32 3802395368, ; 591: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 592: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 593: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 594: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 595: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 194
	i32 3844307129, ; 596: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 597: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 598: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 599: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 600: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 601: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 602: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 274
	i32 3888767677, ; 603: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 264
	i32 3889960447, ; 604: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 326
	i32 3896106733, ; 605: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 606: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 232
	i32 3901907137, ; 607: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 608: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 609: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 277
	i32 3928044579, ; 610: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 611: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 612: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 262
	i32 3945713374, ; 613: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 614: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 615: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 220
	i32 3959773229, ; 616: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 251
	i32 3980434154, ; 617: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 321
	i32 3987592930, ; 618: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 303
	i32 4003436829, ; 619: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 620: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 219
	i32 4025784931, ; 621: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 622: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 202
	i32 4054681211, ; 623: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4056144661, ; 624: Google.Cloud.Location => 0xf1c3db15 => 182
	i32 4059682726, ; 625: Google.Apis.dll => 0xf1f9d7a6 => 177
	i32 4068434129, ; 626: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 627: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4082882467, ; 628: Google.Apis.Auth => 0xf35bd7a3 => 178
	i32 4094352644, ; 629: Microsoft.Maui.Essentials.dll => 0xf40add04 => 204
	i32 4099507663, ; 630: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 631: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 632: Xamarin.AndroidX.Emoji2 => 0xf479582c => 240
	i32 4102112229, ; 633: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 316
	i32 4125707920, ; 634: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 311
	i32 4126470640, ; 635: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 193
	i32 4127667938, ; 636: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 637: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 638: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 639: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 323
	i32 4151237749, ; 640: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 641: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 642: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 643: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 644: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 645: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 256
	i32 4184000013, ; 646: PropertyChanged.dll => 0xf962c60d => 207
	i32 4185676441, ; 647: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 648: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 649: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 650: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 233
	i32 4258378803, ; 651: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 255
	i32 4260525087, ; 652: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 653: Microsoft.Maui.Controls.dll => 0xfea12dee => 201
	i32 4274623895, ; 654: CommunityToolkit.Mvvm.dll => 0xfec99597 => 173
	i32 4274976490, ; 655: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 656: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 256
	i32 4294763496 ; 657: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 242
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [658 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 252, ; 3
	i32 286, ; 4
	i32 48, ; 5
	i32 206, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 30, ; 9
	i32 327, ; 10
	i32 124, ; 11
	i32 205, ; 12
	i32 102, ; 13
	i32 270, ; 14
	i32 107, ; 15
	i32 270, ; 16
	i32 139, ; 17
	i32 290, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 226, ; 22
	i32 132, ; 23
	i32 272, ; 24
	i32 151, ; 25
	i32 324, ; 26
	i32 325, ; 27
	i32 18, ; 28
	i32 224, ; 29
	i32 26, ; 30
	i32 246, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 229, ; 36
	i32 147, ; 37
	i32 248, ; 38
	i32 245, ; 39
	i32 296, ; 40
	i32 54, ; 41
	i32 69, ; 42
	i32 324, ; 43
	i32 215, ; 44
	i32 83, ; 45
	i32 309, ; 46
	i32 247, ; 47
	i32 308, ; 48
	i32 131, ; 49
	i32 189, ; 50
	i32 55, ; 51
	i32 187, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 188, ; 57
	i32 146, ; 58
	i32 328, ; 59
	i32 165, ; 60
	i32 320, ; 61
	i32 230, ; 62
	i32 12, ; 63
	i32 243, ; 64
	i32 125, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 245, ; 70
	i32 258, ; 71
	i32 84, ; 72
	i32 307, ; 73
	i32 301, ; 74
	i32 199, ; 75
	i32 150, ; 76
	i32 290, ; 77
	i32 60, ; 78
	i32 195, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 190, ; 83
	i32 40, ; 84
	i32 283, ; 85
	i32 281, ; 86
	i32 120, ; 87
	i32 315, ; 88
	i32 52, ; 89
	i32 44, ; 90
	i32 119, ; 91
	i32 235, ; 92
	i32 313, ; 93
	i32 241, ; 94
	i32 81, ; 95
	i32 181, ; 96
	i32 136, ; 97
	i32 277, ; 98
	i32 222, ; 99
	i32 8, ; 100
	i32 73, ; 101
	i32 295, ; 102
	i32 155, ; 103
	i32 292, ; 104
	i32 154, ; 105
	i32 92, ; 106
	i32 287, ; 107
	i32 45, ; 108
	i32 310, ; 109
	i32 298, ; 110
	i32 291, ; 111
	i32 109, ; 112
	i32 129, ; 113
	i32 0, ; 114
	i32 25, ; 115
	i32 212, ; 116
	i32 72, ; 117
	i32 55, ; 118
	i32 46, ; 119
	i32 319, ; 120
	i32 198, ; 121
	i32 236, ; 122
	i32 22, ; 123
	i32 250, ; 124
	i32 86, ; 125
	i32 43, ; 126
	i32 160, ; 127
	i32 71, ; 128
	i32 263, ; 129
	i32 3, ; 130
	i32 42, ; 131
	i32 63, ; 132
	i32 16, ; 133
	i32 53, ; 134
	i32 322, ; 135
	i32 286, ; 136
	i32 105, ; 137
	i32 206, ; 138
	i32 291, ; 139
	i32 284, ; 140
	i32 247, ; 141
	i32 34, ; 142
	i32 158, ; 143
	i32 85, ; 144
	i32 32, ; 145
	i32 12, ; 146
	i32 51, ; 147
	i32 56, ; 148
	i32 267, ; 149
	i32 36, ; 150
	i32 194, ; 151
	i32 297, ; 152
	i32 285, ; 153
	i32 220, ; 154
	i32 35, ; 155
	i32 58, ; 156
	i32 174, ; 157
	i32 254, ; 158
	i32 185, ; 159
	i32 17, ; 160
	i32 288, ; 161
	i32 164, ; 162
	i32 310, ; 163
	i32 253, ; 164
	i32 197, ; 165
	i32 209, ; 166
	i32 280, ; 167
	i32 316, ; 168
	i32 153, ; 169
	i32 276, ; 170
	i32 261, ; 171
	i32 188, ; 172
	i32 314, ; 173
	i32 222, ; 174
	i32 29, ; 175
	i32 173, ; 176
	i32 52, ; 177
	i32 312, ; 178
	i32 281, ; 179
	i32 5, ; 180
	i32 296, ; 181
	i32 271, ; 182
	i32 275, ; 183
	i32 227, ; 184
	i32 292, ; 185
	i32 219, ; 186
	i32 238, ; 187
	i32 85, ; 188
	i32 280, ; 189
	i32 61, ; 190
	i32 112, ; 191
	i32 57, ; 192
	i32 326, ; 193
	i32 267, ; 194
	i32 99, ; 195
	i32 19, ; 196
	i32 231, ; 197
	i32 111, ; 198
	i32 101, ; 199
	i32 102, ; 200
	i32 294, ; 201
	i32 104, ; 202
	i32 284, ; 203
	i32 186, ; 204
	i32 71, ; 205
	i32 38, ; 206
	i32 32, ; 207
	i32 103, ; 208
	i32 73, ; 209
	i32 300, ; 210
	i32 9, ; 211
	i32 123, ; 212
	i32 46, ; 213
	i32 221, ; 214
	i32 199, ; 215
	i32 9, ; 216
	i32 43, ; 217
	i32 4, ; 218
	i32 268, ; 219
	i32 304, ; 220
	i32 299, ; 221
	i32 31, ; 222
	i32 138, ; 223
	i32 92, ; 224
	i32 93, ; 225
	i32 319, ; 226
	i32 49, ; 227
	i32 141, ; 228
	i32 112, ; 229
	i32 140, ; 230
	i32 237, ; 231
	i32 115, ; 232
	i32 285, ; 233
	i32 157, ; 234
	i32 76, ; 235
	i32 79, ; 236
	i32 257, ; 237
	i32 37, ; 238
	i32 279, ; 239
	i32 241, ; 240
	i32 234, ; 241
	i32 64, ; 242
	i32 138, ; 243
	i32 15, ; 244
	i32 116, ; 245
	i32 273, ; 246
	i32 282, ; 247
	i32 229, ; 248
	i32 48, ; 249
	i32 70, ; 250
	i32 80, ; 251
	i32 126, ; 252
	i32 94, ; 253
	i32 121, ; 254
	i32 289, ; 255
	i32 26, ; 256
	i32 250, ; 257
	i32 97, ; 258
	i32 28, ; 259
	i32 225, ; 260
	i32 317, ; 261
	i32 295, ; 262
	i32 149, ; 263
	i32 169, ; 264
	i32 4, ; 265
	i32 98, ; 266
	i32 33, ; 267
	i32 93, ; 268
	i32 272, ; 269
	i32 195, ; 270
	i32 21, ; 271
	i32 41, ; 272
	i32 170, ; 273
	i32 187, ; 274
	i32 311, ; 275
	i32 243, ; 276
	i32 303, ; 277
	i32 190, ; 278
	i32 257, ; 279
	i32 288, ; 280
	i32 282, ; 281
	i32 262, ; 282
	i32 2, ; 283
	i32 134, ; 284
	i32 111, ; 285
	i32 196, ; 286
	i32 323, ; 287
	i32 212, ; 288
	i32 320, ; 289
	i32 58, ; 290
	i32 95, ; 291
	i32 302, ; 292
	i32 39, ; 293
	i32 223, ; 294
	i32 25, ; 295
	i32 94, ; 296
	i32 89, ; 297
	i32 186, ; 298
	i32 99, ; 299
	i32 10, ; 300
	i32 208, ; 301
	i32 87, ; 302
	i32 100, ; 303
	i32 269, ; 304
	i32 191, ; 305
	i32 289, ; 306
	i32 214, ; 307
	i32 299, ; 308
	i32 7, ; 309
	i32 254, ; 310
	i32 294, ; 311
	i32 211, ; 312
	i32 88, ; 313
	i32 249, ; 314
	i32 154, ; 315
	i32 298, ; 316
	i32 33, ; 317
	i32 116, ; 318
	i32 82, ; 319
	i32 20, ; 320
	i32 11, ; 321
	i32 162, ; 322
	i32 3, ; 323
	i32 203, ; 324
	i32 306, ; 325
	i32 208, ; 326
	i32 198, ; 327
	i32 196, ; 328
	i32 84, ; 329
	i32 293, ; 330
	i32 64, ; 331
	i32 308, ; 332
	i32 276, ; 333
	i32 143, ; 334
	i32 258, ; 335
	i32 157, ; 336
	i32 41, ; 337
	i32 117, ; 338
	i32 192, ; 339
	i32 213, ; 340
	i32 302, ; 341
	i32 265, ; 342
	i32 131, ; 343
	i32 75, ; 344
	i32 66, ; 345
	i32 312, ; 346
	i32 172, ; 347
	i32 217, ; 348
	i32 143, ; 349
	i32 106, ; 350
	i32 151, ; 351
	i32 70, ; 352
	i32 156, ; 353
	i32 191, ; 354
	i32 121, ; 355
	i32 127, ; 356
	i32 307, ; 357
	i32 183, ; 358
	i32 152, ; 359
	i32 240, ; 360
	i32 141, ; 361
	i32 227, ; 362
	i32 304, ; 363
	i32 20, ; 364
	i32 14, ; 365
	i32 180, ; 366
	i32 135, ; 367
	i32 75, ; 368
	i32 59, ; 369
	i32 230, ; 370
	i32 167, ; 371
	i32 168, ; 372
	i32 201, ; 373
	i32 15, ; 374
	i32 74, ; 375
	i32 175, ; 376
	i32 6, ; 377
	i32 23, ; 378
	i32 252, ; 379
	i32 211, ; 380
	i32 91, ; 381
	i32 305, ; 382
	i32 1, ; 383
	i32 136, ; 384
	i32 253, ; 385
	i32 275, ; 386
	i32 134, ; 387
	i32 69, ; 388
	i32 146, ; 389
	i32 314, ; 390
	i32 293, ; 391
	i32 244, ; 392
	i32 197, ; 393
	i32 88, ; 394
	i32 96, ; 395
	i32 234, ; 396
	i32 239, ; 397
	i32 309, ; 398
	i32 31, ; 399
	i32 45, ; 400
	i32 248, ; 401
	i32 180, ; 402
	i32 213, ; 403
	i32 109, ; 404
	i32 158, ; 405
	i32 35, ; 406
	i32 22, ; 407
	i32 114, ; 408
	i32 57, ; 409
	i32 273, ; 410
	i32 144, ; 411
	i32 118, ; 412
	i32 120, ; 413
	i32 110, ; 414
	i32 215, ; 415
	i32 139, ; 416
	i32 221, ; 417
	i32 54, ; 418
	i32 176, ; 419
	i32 105, ; 420
	i32 315, ; 421
	i32 176, ; 422
	i32 202, ; 423
	i32 203, ; 424
	i32 133, ; 425
	i32 207, ; 426
	i32 287, ; 427
	i32 278, ; 428
	i32 266, ; 429
	i32 321, ; 430
	i32 244, ; 431
	i32 205, ; 432
	i32 159, ; 433
	i32 300, ; 434
	i32 231, ; 435
	i32 209, ; 436
	i32 163, ; 437
	i32 132, ; 438
	i32 266, ; 439
	i32 161, ; 440
	i32 313, ; 441
	i32 255, ; 442
	i32 183, ; 443
	i32 140, ; 444
	i32 278, ; 445
	i32 274, ; 446
	i32 169, ; 447
	i32 204, ; 448
	i32 216, ; 449
	i32 283, ; 450
	i32 40, ; 451
	i32 242, ; 452
	i32 81, ; 453
	i32 179, ; 454
	i32 210, ; 455
	i32 56, ; 456
	i32 37, ; 457
	i32 97, ; 458
	i32 166, ; 459
	i32 172, ; 460
	i32 174, ; 461
	i32 279, ; 462
	i32 82, ; 463
	i32 218, ; 464
	i32 98, ; 465
	i32 30, ; 466
	i32 159, ; 467
	i32 18, ; 468
	i32 127, ; 469
	i32 119, ; 470
	i32 238, ; 471
	i32 269, ; 472
	i32 177, ; 473
	i32 251, ; 474
	i32 271, ; 475
	i32 165, ; 476
	i32 246, ; 477
	i32 328, ; 478
	i32 268, ; 479
	i32 259, ; 480
	i32 170, ; 481
	i32 16, ; 482
	i32 144, ; 483
	i32 306, ; 484
	i32 125, ; 485
	i32 118, ; 486
	i32 38, ; 487
	i32 189, ; 488
	i32 115, ; 489
	i32 47, ; 490
	i32 142, ; 491
	i32 117, ; 492
	i32 34, ; 493
	i32 185, ; 494
	i32 95, ; 495
	i32 53, ; 496
	i32 260, ; 497
	i32 129, ; 498
	i32 153, ; 499
	i32 175, ; 500
	i32 24, ; 501
	i32 161, ; 502
	i32 237, ; 503
	i32 148, ; 504
	i32 104, ; 505
	i32 89, ; 506
	i32 225, ; 507
	i32 60, ; 508
	i32 142, ; 509
	i32 100, ; 510
	i32 5, ; 511
	i32 13, ; 512
	i32 122, ; 513
	i32 135, ; 514
	i32 28, ; 515
	i32 301, ; 516
	i32 72, ; 517
	i32 235, ; 518
	i32 24, ; 519
	i32 223, ; 520
	i32 264, ; 521
	i32 261, ; 522
	i32 318, ; 523
	i32 137, ; 524
	i32 216, ; 525
	i32 232, ; 526
	i32 168, ; 527
	i32 265, ; 528
	i32 297, ; 529
	i32 101, ; 530
	i32 123, ; 531
	i32 236, ; 532
	i32 193, ; 533
	i32 163, ; 534
	i32 167, ; 535
	i32 239, ; 536
	i32 39, ; 537
	i32 200, ; 538
	i32 179, ; 539
	i32 305, ; 540
	i32 17, ; 541
	i32 171, ; 542
	i32 318, ; 543
	i32 317, ; 544
	i32 137, ; 545
	i32 150, ; 546
	i32 228, ; 547
	i32 184, ; 548
	i32 155, ; 549
	i32 130, ; 550
	i32 19, ; 551
	i32 65, ; 552
	i32 147, ; 553
	i32 47, ; 554
	i32 325, ; 555
	i32 214, ; 556
	i32 181, ; 557
	i32 79, ; 558
	i32 61, ; 559
	i32 210, ; 560
	i32 106, ; 561
	i32 263, ; 562
	i32 218, ; 563
	i32 49, ; 564
	i32 249, ; 565
	i32 322, ; 566
	i32 260, ; 567
	i32 14, ; 568
	i32 184, ; 569
	i32 192, ; 570
	i32 68, ; 571
	i32 171, ; 572
	i32 224, ; 573
	i32 228, ; 574
	i32 327, ; 575
	i32 78, ; 576
	i32 233, ; 577
	i32 108, ; 578
	i32 217, ; 579
	i32 0, ; 580
	i32 259, ; 581
	i32 67, ; 582
	i32 63, ; 583
	i32 27, ; 584
	i32 160, ; 585
	i32 182, ; 586
	i32 226, ; 587
	i32 10, ; 588
	i32 178, ; 589
	i32 200, ; 590
	i32 11, ; 591
	i32 78, ; 592
	i32 126, ; 593
	i32 83, ; 594
	i32 194, ; 595
	i32 66, ; 596
	i32 107, ; 597
	i32 65, ; 598
	i32 128, ; 599
	i32 122, ; 600
	i32 77, ; 601
	i32 274, ; 602
	i32 264, ; 603
	i32 326, ; 604
	i32 8, ; 605
	i32 232, ; 606
	i32 2, ; 607
	i32 44, ; 608
	i32 277, ; 609
	i32 156, ; 610
	i32 128, ; 611
	i32 262, ; 612
	i32 23, ; 613
	i32 133, ; 614
	i32 220, ; 615
	i32 251, ; 616
	i32 321, ; 617
	i32 303, ; 618
	i32 29, ; 619
	i32 219, ; 620
	i32 62, ; 621
	i32 202, ; 622
	i32 90, ; 623
	i32 182, ; 624
	i32 177, ; 625
	i32 87, ; 626
	i32 148, ; 627
	i32 178, ; 628
	i32 204, ; 629
	i32 36, ; 630
	i32 86, ; 631
	i32 240, ; 632
	i32 316, ; 633
	i32 311, ; 634
	i32 193, ; 635
	i32 50, ; 636
	i32 6, ; 637
	i32 90, ; 638
	i32 323, ; 639
	i32 21, ; 640
	i32 162, ; 641
	i32 96, ; 642
	i32 50, ; 643
	i32 113, ; 644
	i32 256, ; 645
	i32 207, ; 646
	i32 130, ; 647
	i32 76, ; 648
	i32 27, ; 649
	i32 233, ; 650
	i32 255, ; 651
	i32 7, ; 652
	i32 201, ; 653
	i32 173, ; 654
	i32 110, ; 655
	i32 256, ; 656
	i32 242 ; 657
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 45bb7f365f1587a7786d5bbbf0daec075d5aabea"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
