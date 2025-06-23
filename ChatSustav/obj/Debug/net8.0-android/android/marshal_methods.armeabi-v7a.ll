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

@assembly_image_cache = dso_local local_unnamed_addr global [348 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [690 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 265
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 299
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 216
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 141
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 340
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 214
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 98325684, ; 14: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 199
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 283
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 283
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 223
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 303
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 239
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 131
	i32 176714968, ; 25: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 192
	i32 182336117, ; 26: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 285
	i32 184328833, ; 27: System.ValueTuple.dll => 0xafca281 => 147
	i32 195452805, ; 28: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 337
	i32 199333315, ; 29: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 338
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 237
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221063263, ; 33: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 179
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 259
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 242
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 143
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 261
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 258
	i32 280992041, ; 43: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 309
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 68
	i32 300686228, ; 46: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 170
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 337
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 228
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 82
	i32 336156722, ; 50: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 322
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 260
	i32 348048101, ; 52: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 180
	i32 356389973, ; 53: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 321
	i32 360082299, ; 54: System.ServiceModel.Web => 0x15766b7b => 130
	i32 367780167, ; 55: System.IO.Pipes => 0x15ebe147 => 54
	i32 374914964, ; 56: System.Transactions.Local => 0x1658bf94 => 145
	i32 375677976, ; 57: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 379916513, ; 58: System.Threading.Thread.dll => 0x16a510e1 => 141
	i32 384051609, ; 59: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 183
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 142
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 344
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 161
	i32 417611542, ; 64: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 191
	i32 435591531, ; 65: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 333
	i32 441335492, ; 66: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 243
	i32 442565967, ; 67: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 68: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 256
	i32 451504562, ; 69: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456227837, ; 70: System.Web.HttpUtility.dll => 0x1b317bfd => 148
	i32 458494020, ; 71: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 188
	i32 459347974, ; 72: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 73: mscorlib => 0x1bc4415d => 162
	i32 469710990, ; 74: System.dll => 0x1bff388e => 160
	i32 476646585, ; 75: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 258
	i32 486930444, ; 76: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 271
	i32 490002678, ; 77: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 175
	i32 498788369, ; 78: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 79: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 320
	i32 503918385, ; 80: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 314
	i32 513247710, ; 81: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 208
	i32 526420162, ; 82: System.Transactions.dll => 0x1f6088c2 => 146
	i32 527452488, ; 83: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 303
	i32 530272170, ; 84: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 539058512, ; 85: Microsoft.Extensions.Logging => 0x20216150 => 203
	i32 540030774, ; 86: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 87: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 548916678, ; 89: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 193
	i32 549171840, ; 90: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 557405415, ; 91: Jsr305Binding => 0x213954e7 => 296
	i32 569601784, ; 92: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 294
	i32 577335427, ; 93: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 592146354, ; 94: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 328
	i32 601371474, ; 95: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 96: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 613668793, ; 97: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 627609679, ; 98: Xamarin.AndroidX.CustomView => 0x2568904f => 248
	i32 627931235, ; 99: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 326
	i32 639843206, ; 100: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 254
	i32 643868501, ; 101: System.Net => 0x2660a755 => 80
	i32 662205335, ; 102: System.Text.Encodings.Web.dll => 0x27787397 => 221
	i32 663517072, ; 103: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 290
	i32 666292255, ; 104: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 235
	i32 672442732, ; 105: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 106: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 107: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 308
	i32 690569205, ; 108: System.Xml.Linq.dll => 0x29293ff5 => 151
	i32 691348768, ; 109: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 305
	i32 693804605, ; 110: System.Windows => 0x295a9e3d => 150
	i32 699345723, ; 111: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700284507, ; 112: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 300
	i32 700358131, ; 113: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 114: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 323
	i32 709557578, ; 115: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 311
	i32 720511267, ; 116: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 304
	i32 722857257, ; 117: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 724146010, ; 118: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 172
	i32 735137430, ; 119: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 752232764, ; 120: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 121: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 225
	i32 759454413, ; 122: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 123: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 775507847, ; 124: System.IO.Compression => 0x2e394f87 => 45
	i32 777317022, ; 125: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 332
	i32 789151979, ; 126: Microsoft.Extensions.Options => 0x2f0980eb => 207
	i32 790371945, ; 127: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 249
	i32 804715423, ; 128: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 263
	i32 823281589, ; 130: System.Private.Uri.dll => 0x311247b5 => 85
	i32 830298997, ; 131: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 132: System.Xml.XPath.dll => 0x31a103c6 => 156
	i32 832711436, ; 133: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 190
	i32 834051424, ; 134: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 135: Xamarin.AndroidX.Print => 0x3246f6cd => 276
	i32 873119928, ; 136: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 137: System.Globalization.dll => 0x34505120 => 41
	i32 878954865, ; 138: System.Net.Http.Json => 0x3463c971 => 62
	i32 904024072, ; 139: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 140: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 926902833, ; 141: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 335
	i32 928116545, ; 142: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 299
	i32 952186615, ; 143: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 955402788, ; 144: Newtonsoft.Json => 0x38f24a24 => 216
	i32 956575887, ; 145: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 304
	i32 966729478, ; 146: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 297
	i32 967690846, ; 147: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 260
	i32 975236339, ; 148: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 149: System.Xml.XDocument => 0x3a2aaa1d => 154
	i32 986514023, ; 150: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 151: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 152: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 153: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 999729041, ; 154: ChatSustav.dll => 0x3b96a791 => 0
	i32 1001831731, ; 155: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 156: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 280
	i32 1019214401, ; 157: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 158: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 198
	i32 1029334545, ; 159: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 310
	i32 1031528504, ; 160: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 298
	i32 1035644815, ; 161: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 233
	i32 1036536393, ; 162: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 163: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1048992957, ; 164: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 199
	i32 1052210849, ; 165: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 267
	i32 1058641855, ; 166: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 180
	i32 1067306892, ; 167: GoogleGson => 0x3f9dcf8c => 169
	i32 1082857460, ; 168: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 169: Xamarin.Kotlin.StdLib => 0x409e66d8 => 301
	i32 1098259244, ; 170: System => 0x41761b2c => 160
	i32 1110309514, ; 171: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 202
	i32 1112354281, ; 172: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 170
	i32 1118262833, ; 173: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 323
	i32 1121599056, ; 174: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 266
	i32 1127624469, ; 175: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 205
	i32 1149092582, ; 176: Xamarin.AndroidX.Window => 0x447dc2e6 => 293
	i32 1160313973, ; 177: System.Net.ServerSentEvents.dll => 0x4528fc75 => 219
	i32 1168523401, ; 178: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 329
	i32 1170634674, ; 179: System.Web.dll => 0x45c677b2 => 149
	i32 1173126369, ; 180: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 201
	i32 1175144683, ; 181: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 289
	i32 1178241025, ; 182: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 274
	i32 1203215381, ; 183: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 327
	i32 1204270330, ; 184: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 235
	i32 1208641965, ; 185: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 186: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1220193633, ; 187: Microsoft.Net.Http.Headers => 0x48baad61 => 215
	i32 1233093933, ; 188: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 187
	i32 1234928153, ; 189: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 325
	i32 1236289705, ; 190: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 175
	i32 1243150071, ; 191: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 294
	i32 1253011324, ; 192: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 193: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 309
	i32 1264511973, ; 194: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 284
	i32 1267360935, ; 195: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 288
	i32 1267908789, ; 196: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 183
	i32 1273260888, ; 197: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 240
	i32 1275534314, ; 198: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 305
	i32 1278448581, ; 199: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 232
	i32 1293217323, ; 200: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 251
	i32 1309188875, ; 201: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1322716291, ; 202: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 293
	i32 1324164729, ; 203: System.Linq => 0x4eed2679 => 60
	i32 1335329327, ; 204: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1364015309, ; 205: System.IO => 0x514d38cd => 56
	i32 1373134921, ; 206: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 339
	i32 1376866003, ; 207: Xamarin.AndroidX.SavedState => 0x52114ed3 => 280
	i32 1379779777, ; 208: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1402170036, ; 209: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 210: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 244
	i32 1408764838, ; 211: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 212: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1414043276, ; 213: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 173
	i32 1422545099, ; 214: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1430672901, ; 215: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 307
	i32 1434145427, ; 216: System.Runtime.Handles => 0x557b5293 => 103
	i32 1435222561, ; 217: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 297
	i32 1439761251, ; 218: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1452070440, ; 219: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 220: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 221: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 222: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461004990, ; 223: es\Microsoft.Maui.Controls.resources => 0x57152abe => 313
	i32 1461234159, ; 224: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 225: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 226: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 227: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 234
	i32 1470490898, ; 228: Microsoft.Extensions.Primitives => 0x57a5e912 => 208
	i32 1479771757, ; 229: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 230: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1486966743, ; 231: Microsoft.AspNetCore.SignalR => 0x58a14fd7 => 185
	i32 1487239319, ; 232: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 233: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 281
	i32 1493001747, ; 234: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 317
	i32 1514721132, ; 235: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 312
	i32 1536373174, ; 236: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 237: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 135
	i32 1543355203, ; 238: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 239: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 240: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 332
	i32 1565862583, ; 241: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 242: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 137
	i32 1573704789, ; 243: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 244: System.Threading.Overlapped => 0x5e2d7514 => 136
	i32 1582372066, ; 245: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 250
	i32 1592978981, ; 246: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1597949149, ; 247: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 298
	i32 1601112923, ; 248: System.Xml.Serialization => 0x5f6f0b5b => 153
	i32 1603525486, ; 249: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 341
	i32 1604827217, ; 250: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1618516317, ; 251: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 252: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 270
	i32 1622358360, ; 253: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 254: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 292
	i32 1635184631, ; 255: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 254
	i32 1636350590, ; 256: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 247
	i32 1639515021, ; 257: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 258: System.Text.RegularExpressions => 0x61c036ca => 135
	i32 1641389582, ; 259: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 260: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 261: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 286
	i32 1658251792, ; 262: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 295
	i32 1670060433, ; 263: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 242
	i32 1675553242, ; 264: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 265: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1678508291, ; 266: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 267: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1691477237, ; 268: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 269: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1698840827, ; 270: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 302
	i32 1701541528, ; 271: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 272: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 263
	i32 1726116996, ; 273: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 274: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 275: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 238
	i32 1736233607, ; 276: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 330
	i32 1743415430, ; 277: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 308
	i32 1744735666, ; 278: System.Transactions.Local.dll => 0x67fe8db2 => 145
	i32 1746115085, ; 279: System.IO.Pipelines.dll => 0x68139a0d => 218
	i32 1746316138, ; 280: Mono.Android.Export => 0x6816ab6a => 165
	i32 1750313021, ; 281: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 282: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 283: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 284: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 285: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 285
	i32 1770582343, ; 286: Microsoft.Extensions.Logging.dll => 0x6988f147 => 203
	i32 1776026572, ; 287: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 288: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1780572499, ; 289: Mono.Android.Runtime.dll => 0x6a216153 => 166
	i32 1782862114, ; 290: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 324
	i32 1788241197, ; 291: Xamarin.AndroidX.Fragment => 0x6a96652d => 256
	i32 1793755602, ; 292: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 316
	i32 1796167890, ; 293: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 193
	i32 1808609942, ; 294: Xamarin.AndroidX.Loader => 0x6bcd3296 => 270
	i32 1813058853, ; 295: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 301
	i32 1813201214, ; 296: Xamarin.Google.Android.Material => 0x6c13413e => 295
	i32 1818569960, ; 297: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 275
	i32 1818787751, ; 298: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 299: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 182
	i32 1824175904, ; 300: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 301: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1827303595, ; 302: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 343
	i32 1828688058, ; 303: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 204
	i32 1842015223, ; 304: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 336
	i32 1847515442, ; 305: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 225
	i32 1853025655, ; 306: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 333
	i32 1858542181, ; 307: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870277092, ; 308: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1875935024, ; 309: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 315
	i32 1879696579, ; 310: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1885316902, ; 311: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 236
	i32 1885918049, ; 312: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 343
	i32 1888955245, ; 313: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 314: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 315: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 316: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1910275211, ; 317: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1928288591, ; 318: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 177
	i32 1932718519, ; 319: Microsoft.Bcl.TimeProvider => 0x7332f1b7 => 194
	i32 1939592360, ; 320: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1945717188, ; 321: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 187
	i32 1956758971, ; 322: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1961813231, ; 323: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 282
	i32 1967334205, ; 324: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 188
	i32 1968388702, ; 325: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 195
	i32 1978435800, ; 326: System.Net.ServerSentEvents => 0x75ec88d8 => 219
	i32 1983156543, ; 327: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 302
	i32 1985761444, ; 328: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 227
	i32 2003115576, ; 329: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 312
	i32 2011961780, ; 330: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 331: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 267
	i32 2025202353, ; 332: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 307
	i32 2031763787, ; 333: Xamarin.Android.Glide => 0x791a414b => 224
	i32 2045470958, ; 334: System.Private.Xml => 0x79eb68ee => 87
	i32 2055257422, ; 335: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 262
	i32 2060060697, ; 336: System.Windows.dll => 0x7aca0819 => 150
	i32 2066184531, ; 337: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 311
	i32 2070888862, ; 338: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2075706075, ; 339: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 177
	i32 2079903147, ; 340: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 341: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2127167465, ; 342: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 343: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 344: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 158
	i32 2146852085, ; 345: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 346: Microsoft.Maui => 0x80bd55ad => 212
	i32 2169148018, ; 347: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 319
	i32 2179096858, ; 348: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 178
	i32 2181898931, ; 349: Microsoft.Extensions.Options.dll => 0x820d22b3 => 207
	i32 2192057212, ; 350: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 204
	i32 2193016926, ; 351: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2201107256, ; 352: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 306
	i32 2201231467, ; 353: System.Net.Http => 0x8334206b => 63
	i32 2204417087, ; 354: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 206
	i32 2207618523, ; 355: it\Microsoft.Maui.Controls.resources => 0x839595db => 321
	i32 2217644978, ; 356: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 289
	i32 2222056684, ; 357: System.Threading.Tasks.Parallel => 0x8471e4ec => 139
	i32 2229158877, ; 358: Microsoft.Extensions.Features.dll => 0x84de43dd => 200
	i32 2242871324, ; 359: Microsoft.AspNetCore.Http.dll => 0x85af801c => 176
	i32 2244775296, ; 360: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 271
	i32 2252106437, ; 361: System.Xml.Serialization.dll => 0x863c6ac5 => 153
	i32 2256313426, ; 362: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 363: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 364: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 196
	i32 2267999099, ; 365: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 226
	i32 2270573516, ; 366: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 315
	i32 2279755925, ; 367: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 278
	i32 2293034957, ; 368: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2295906218, ; 369: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 370: System.Net.Mail => 0x88ffe49e => 65
	i32 2303942373, ; 371: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 325
	i32 2305521784, ; 372: System.Private.CoreLib.dll => 0x896b7878 => 168
	i32 2315684594, ; 373: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 230
	i32 2319144366, ; 374: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 186
	i32 2320631194, ; 375: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 139
	i32 2340441535, ; 376: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 377: System.ValueTuple => 0x8bbaa2cd => 147
	i32 2353062107, ; 378: System.Net.Primitives => 0x8c40e0db => 69
	i32 2368005991, ; 379: System.Xml.ReaderWriter.dll => 0x8d24e767 => 152
	i32 2371007202, ; 380: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 195
	i32 2378619854, ; 381: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 382: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2395872292, ; 383: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 320
	i32 2401565422, ; 384: System.Web.HttpUtility => 0x8f24faee => 148
	i32 2403452196, ; 385: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 253
	i32 2409983638, ; 386: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 342
	i32 2421380589, ; 387: System.Threading.Tasks.Dataflow => 0x905355ed => 137
	i32 2423080555, ; 388: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 240
	i32 2427813419, ; 389: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 317
	i32 2435356389, ; 390: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 391: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 392: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2458678730, ; 393: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 394: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465532216, ; 395: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 243
	i32 2471841756, ; 396: netstandard.dll => 0x93554fdc => 163
	i32 2475788418, ; 397: Java.Interop.dll => 0x93918882 => 164
	i32 2480646305, ; 398: Microsoft.Maui.Controls => 0x93dba8a1 => 210
	i32 2483903535, ; 399: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 400: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 401: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 402: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 403: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 265
	i32 2522472828, ; 404: Xamarin.Android.Glide.dll => 0x9659e17c => 224
	i32 2537015816, ; 405: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 171
	i32 2538310050, ; 406: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2550873716, ; 407: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 318
	i32 2562349572, ; 408: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 409: System.Text.Encodings.Web => 0x9930ee42 => 221
	i32 2581783588, ; 410: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 266
	i32 2581819634, ; 411: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 288
	i32 2585220780, ; 412: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 413: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 414: System.Threading.ThreadPool => 0x9a5a3337 => 142
	i32 2592341985, ; 415: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 201
	i32 2593268061, ; 416: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 184
	i32 2593496499, ; 417: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 327
	i32 2594125473, ; 418: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 174
	i32 2605712449, ; 419: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 306
	i32 2615233544, ; 420: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 257
	i32 2616218305, ; 421: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 205
	i32 2617129537, ; 422: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 423: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 424: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 247
	i32 2624644809, ; 425: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 252
	i32 2626831493, ; 426: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 322
	i32 2627185994, ; 427: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 428: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 429: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 261
	i32 2633959305, ; 430: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 181
	i32 2637500010, ; 431: Microsoft.Extensions.Features => 0x9d350e6a => 200
	i32 2642291320, ; 432: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 220
	i32 2663391936, ; 433: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 226
	i32 2663698177, ; 434: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 435: System.Xml.XDocument.dll => 0x9ecf752a => 154
	i32 2665622720, ; 436: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 437: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 438: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 439: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 440: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 286
	i32 2715334215, ; 441: System.Threading.Tasks.dll => 0xa1d8b647 => 140
	i32 2717744543, ; 442: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 443: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 444: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 445: Xamarin.AndroidX.Activity => 0xa2e0939b => 228
	i32 2735172069, ; 446: System.Threading.Channels => 0xa30769e5 => 223
	i32 2735631878, ; 447: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 171
	i32 2737747696, ; 448: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 234
	i32 2740948882, ; 449: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2748088231, ; 450: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2752995522, ; 451: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 328
	i32 2758225723, ; 452: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 211
	i32 2764765095, ; 453: Microsoft.Maui.dll => 0xa4caf7a7 => 212
	i32 2765824710, ; 454: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2770495804, ; 455: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 300
	i32 2778768386, ; 456: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 291
	i32 2779977773, ; 457: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 279
	i32 2785988530, ; 458: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 334
	i32 2788224221, ; 459: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 257
	i32 2801831435, ; 460: Microsoft.Maui.Graphics => 0xa7008e0b => 214
	i32 2803228030, ; 461: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 155
	i32 2806116107, ; 462: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 313
	i32 2810250172, ; 463: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 244
	i32 2819470561, ; 464: System.Xml.dll => 0xa80db4e1 => 159
	i32 2821205001, ; 465: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 466: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 279
	i32 2824502124, ; 467: System.Xml.XmlDocument => 0xa85a7b6c => 157
	i32 2831556043, ; 468: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 326
	i32 2838993487, ; 469: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 268
	i32 2849599387, ; 470: System.Threading.Overlapped.dll => 0xa9d96f9b => 136
	i32 2850549256, ; 471: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 182
	i32 2853208004, ; 472: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 291
	i32 2855708567, ; 473: Xamarin.AndroidX.Transition => 0xaa36a797 => 287
	i32 2861098320, ; 474: Mono.Android.Export.dll => 0xaa88e550 => 165
	i32 2861189240, ; 475: Microsoft.Maui.Essentials => 0xaa8a4878 => 213
	i32 2870099610, ; 476: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 229
	i32 2875164099, ; 477: Jsr305Binding.dll => 0xab5f85c3 => 296
	i32 2875220617, ; 478: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2875347124, ; 479: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 179
	i32 2884993177, ; 480: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 255
	i32 2887636118, ; 481: System.Net.dll => 0xac1dd496 => 80
	i32 2899753641, ; 482: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 483: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 484: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 485: mscorlib.dll => 0xad2a79b6 => 162
	i32 2909740682, ; 486: System.Private.CoreLib => 0xad6f1e8a => 168
	i32 2916838712, ; 487: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 292
	i32 2919462931, ; 488: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 489: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 231
	i32 2930166128, ; 490: Microsoft.AspNetCore.SignalR.dll => 0xaea6c970 => 185
	i32 2936416060, ; 491: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 492: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 493: System.Xml.XPath.XDocument => 0xaf624531 => 155
	i32 2959614098, ; 494: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 495: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2972252294, ; 496: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978368250, ; 497: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 174
	i32 2978675010, ; 498: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 251
	i32 2987532451, ; 499: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 282
	i32 2996646946, ; 500: Microsoft.AspNetCore.Http => 0xb29d3422 => 176
	i32 2996846495, ; 501: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 264
	i32 3016983068, ; 502: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 284
	i32 3023353419, ; 503: WindowsBase.dll => 0xb434b64b => 161
	i32 3024354802, ; 504: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 259
	i32 3036999524, ; 505: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 181
	i32 3038032645, ; 506: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 344
	i32 3056245963, ; 507: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 281
	i32 3057625584, ; 508: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 272
	i32 3059408633, ; 509: Mono.Android.Runtime => 0xb65adef9 => 166
	i32 3059793426, ; 510: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 511: System.Threading.Tasks => 0xb755818f => 140
	i32 3077302341, ; 512: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 319
	i32 3090735792, ; 513: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 514: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 515: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 516: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3113762169, ; 517: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 184
	i32 3121463068, ; 518: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3124832203, ; 519: System.Threading.Tasks.Extensions => 0xba4127cb => 138
	i32 3132293585, ; 520: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3147165239, ; 521: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 522: GoogleGson.dll => 0xbba64c02 => 169
	i32 3159123045, ; 523: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3160747431, ; 524: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3178803400, ; 525: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 273
	i32 3180757527, ; 526: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 191
	i32 3192346100, ; 527: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 528: System.Web => 0xbe592c0c => 149
	i32 3204380047, ; 529: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 530: System.Xml.XmlDocument.dll => 0xbf506931 => 157
	i32 3211777861, ; 531: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 250
	i32 3220365878, ; 532: System.Threading => 0xbff2e236 => 144
	i32 3226221578, ; 533: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3251039220, ; 534: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3258312781, ; 535: Xamarin.AndroidX.CardView => 0xc235e84d => 238
	i32 3265493905, ; 536: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 537: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 138
	i32 3269172271, ; 538: ChatSustav => 0xc2db9c2f => 0
	i32 3277815716, ; 539: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3279906254, ; 540: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 541: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 542: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3299363146, ; 543: System.Text.Encoding => 0xc4a8494a => 134
	i32 3300764913, ; 544: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 192
	i32 3303498502, ; 545: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 546: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 314
	i32 3316684772, ; 547: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 548: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 248
	i32 3317144872, ; 549: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 550: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 236
	i32 3345895724, ; 551: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 277
	i32 3346324047, ; 552: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 274
	i32 3357674450, ; 553: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 331
	i32 3358260929, ; 554: System.Text.Json => 0xc82afec1 => 222
	i32 3362336904, ; 555: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 229
	i32 3362522851, ; 556: Xamarin.AndroidX.Core => 0xc86c06e3 => 245
	i32 3366347497, ; 557: Java.Interop => 0xc8a662e9 => 164
	i32 3374999561, ; 558: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 278
	i32 3381016424, ; 559: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 310
	i32 3395150330, ; 560: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 561: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 562: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 249
	i32 3428513518, ; 563: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 197
	i32 3429136800, ; 564: System.Xml => 0xcc6479a0 => 159
	i32 3430777524, ; 565: netstandard => 0xcc7d82b4 => 163
	i32 3441283291, ; 566: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 252
	i32 3445260447, ; 567: System.Formats.Tar => 0xcd5a809f => 38
	i32 3452344032, ; 568: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 209
	i32 3463511458, ; 569: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 318
	i32 3466904072, ; 570: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 186
	i32 3471940407, ; 571: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 572: Mono.Android => 0xcf3163e6 => 167
	i32 3476505041, ; 573: Microsoft.AspNetCore.SignalR.Core => 0xcf3741d1 => 189
	i32 3479583265, ; 574: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 331
	i32 3484440000, ; 575: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 330
	i32 3485117614, ; 576: System.Text.Json.dll => 0xcfbaacae => 222
	i32 3486566296, ; 577: System.Transactions => 0xcfd0c798 => 146
	i32 3493954962, ; 578: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 241
	i32 3509114376, ; 579: System.Xml.Linq => 0xd128d608 => 151
	i32 3515174580, ; 580: System.Security.dll => 0xd1854eb4 => 129
	i32 3530912306, ; 581: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 582: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3560100363, ; 583: System.Threading.Timer => 0xd432d20b => 143
	i32 3570554715, ; 584: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3580758918, ; 585: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 338
	i32 3594787188, ; 586: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 220
	i32 3597029428, ; 587: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 227
	i32 3598340787, ; 588: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3608519521, ; 589: System.Linq.dll => 0xd715a361 => 60
	i32 3624195450, ; 590: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 591: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 276
	i32 3633644679, ; 592: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 231
	i32 3638274909, ; 593: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 594: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 262
	i32 3643446276, ; 595: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 335
	i32 3643854240, ; 596: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 273
	i32 3645089577, ; 597: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 598: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 196
	i32 3660523487, ; 599: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3672681054, ; 600: Mono.Android.dll => 0xdae8aa5e => 167
	i32 3676670898, ; 601: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 341
	i32 3679340867, ; 602: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 178
	i32 3682565725, ; 603: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 237
	i32 3684561358, ; 604: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 241
	i32 3691870036, ; 605: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 190
	i32 3697841164, ; 606: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 340
	i32 3700866549, ; 607: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3706696989, ; 608: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 246
	i32 3716563718, ; 609: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 610: Xamarin.AndroidX.Annotation => 0xdda814c6 => 230
	i32 3724971120, ; 611: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 272
	i32 3732100267, ; 612: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 613: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3748608112, ; 614: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 217
	i32 3751444290, ; 615: System.Xml.XPath => 0xdf9a7f42 => 156
	i32 3765508441, ; 616: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 206
	i32 3786282454, ; 617: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 239
	i32 3787005001, ; 618: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 173
	i32 3792276235, ; 619: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 620: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 209
	i32 3802395368, ; 621: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 622: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 623: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 624: System.Numerics.dll => 0xe4436460 => 82
	i32 3841636137, ; 625: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 198
	i32 3844307129, ; 626: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 627: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 628: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 629: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 630: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3885497537, ; 631: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 632: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 287
	i32 3888767677, ; 633: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 277
	i32 3889960447, ; 634: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 339
	i32 3896106733, ; 635: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 636: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 245
	i32 3901907137, ; 637: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 638: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 639: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 290
	i32 3928044579, ; 640: System.Xml.ReaderWriter => 0xea213423 => 152
	i32 3930554604, ; 641: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 642: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 275
	i32 3945713374, ; 643: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 644: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 645: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 233
	i32 3959773229, ; 646: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 264
	i32 3980434154, ; 647: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 334
	i32 3987592930, ; 648: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 316
	i32 4003436829, ; 649: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 650: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 232
	i32 4017318820, ; 651: Microsoft.Bcl.TimeProvider.dll => 0xef736ba4 => 194
	i32 4023392905, ; 652: System.IO.Pipelines => 0xefd01a89 => 218
	i32 4025784931, ; 653: System.Memory => 0xeff49a63 => 61
	i32 4044155772, ; 654: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 215
	i32 4046471985, ; 655: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 211
	i32 4054681211, ; 656: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 657: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4073602200, ; 658: System.Threading.dll => 0xf2ce3c98 => 144
	i32 4078967171, ; 659: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 202
	i32 4094352644, ; 660: Microsoft.Maui.Essentials.dll => 0xf40add04 => 213
	i32 4099507663, ; 661: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 662: System.Private.Uri => 0xf462c30d => 85
	i32 4101593132, ; 663: Xamarin.AndroidX.Emoji2 => 0xf479582c => 253
	i32 4102112229, ; 664: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 329
	i32 4125707920, ; 665: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 324
	i32 4126470640, ; 666: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 197
	i32 4127667938, ; 667: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 668: System.AppContext => 0xf6318da0 => 6
	i32 4141580284, ; 669: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 172
	i32 4147896353, ; 670: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4150914736, ; 671: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 336
	i32 4151237749, ; 672: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 673: System.Xml.XmlSerializer => 0xf7e95c85 => 158
	i32 4161255271, ; 674: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 675: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 676: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 677: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 269
	i32 4182880526, ; 678: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 342
	i32 4185676441, ; 679: System.Security => 0xf97c5a99 => 129
	i32 4196529839, ; 680: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 681: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 217
	i32 4256097574, ; 682: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 246
	i32 4258378803, ; 683: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 268
	i32 4260525087, ; 684: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 685: Microsoft.Maui.Controls.dll => 0xfea12dee => 210
	i32 4274976490, ; 686: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959, ; 687: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 269
	i32 4293859396, ; 688: Microsoft.AspNetCore.SignalR.Core.dll => 0xffef1844 => 189
	i32 4294763496 ; 689: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 255
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [690 x i32] [
	i32 67, ; 0
	i32 66, ; 1
	i32 107, ; 2
	i32 265, ; 3
	i32 299, ; 4
	i32 47, ; 5
	i32 216, ; 6
	i32 79, ; 7
	i32 141, ; 8
	i32 29, ; 9
	i32 340, ; 10
	i32 123, ; 11
	i32 214, ; 12
	i32 101, ; 13
	i32 199, ; 14
	i32 283, ; 15
	i32 106, ; 16
	i32 283, ; 17
	i32 223, ; 18
	i32 303, ; 19
	i32 76, ; 20
	i32 123, ; 21
	i32 13, ; 22
	i32 239, ; 23
	i32 131, ; 24
	i32 192, ; 25
	i32 285, ; 26
	i32 147, ; 27
	i32 337, ; 28
	i32 338, ; 29
	i32 18, ; 30
	i32 237, ; 31
	i32 26, ; 32
	i32 179, ; 33
	i32 259, ; 34
	i32 1, ; 35
	i32 58, ; 36
	i32 41, ; 37
	i32 90, ; 38
	i32 242, ; 39
	i32 143, ; 40
	i32 261, ; 41
	i32 258, ; 42
	i32 309, ; 43
	i32 53, ; 44
	i32 68, ; 45
	i32 170, ; 46
	i32 337, ; 47
	i32 228, ; 48
	i32 82, ; 49
	i32 322, ; 50
	i32 260, ; 51
	i32 180, ; 52
	i32 321, ; 53
	i32 130, ; 54
	i32 54, ; 55
	i32 145, ; 56
	i32 73, ; 57
	i32 141, ; 58
	i32 183, ; 59
	i32 61, ; 60
	i32 142, ; 61
	i32 344, ; 62
	i32 161, ; 63
	i32 191, ; 64
	i32 333, ; 65
	i32 243, ; 66
	i32 12, ; 67
	i32 256, ; 68
	i32 124, ; 69
	i32 148, ; 70
	i32 188, ; 71
	i32 112, ; 72
	i32 162, ; 73
	i32 160, ; 74
	i32 258, ; 75
	i32 271, ; 76
	i32 175, ; 77
	i32 83, ; 78
	i32 320, ; 79
	i32 314, ; 80
	i32 208, ; 81
	i32 146, ; 82
	i32 303, ; 83
	i32 59, ; 84
	i32 203, ; 85
	i32 50, ; 86
	i32 102, ; 87
	i32 113, ; 88
	i32 193, ; 89
	i32 39, ; 90
	i32 296, ; 91
	i32 294, ; 92
	i32 119, ; 93
	i32 328, ; 94
	i32 51, ; 95
	i32 43, ; 96
	i32 118, ; 97
	i32 248, ; 98
	i32 326, ; 99
	i32 254, ; 100
	i32 80, ; 101
	i32 221, ; 102
	i32 290, ; 103
	i32 235, ; 104
	i32 8, ; 105
	i32 72, ; 106
	i32 308, ; 107
	i32 151, ; 108
	i32 305, ; 109
	i32 150, ; 110
	i32 91, ; 111
	i32 300, ; 112
	i32 44, ; 113
	i32 323, ; 114
	i32 311, ; 115
	i32 304, ; 116
	i32 108, ; 117
	i32 172, ; 118
	i32 128, ; 119
	i32 25, ; 120
	i32 225, ; 121
	i32 71, ; 122
	i32 54, ; 123
	i32 45, ; 124
	i32 332, ; 125
	i32 207, ; 126
	i32 249, ; 127
	i32 22, ; 128
	i32 263, ; 129
	i32 85, ; 130
	i32 42, ; 131
	i32 156, ; 132
	i32 190, ; 133
	i32 70, ; 134
	i32 276, ; 135
	i32 3, ; 136
	i32 41, ; 137
	i32 62, ; 138
	i32 16, ; 139
	i32 52, ; 140
	i32 335, ; 141
	i32 299, ; 142
	i32 104, ; 143
	i32 216, ; 144
	i32 304, ; 145
	i32 297, ; 146
	i32 260, ; 147
	i32 33, ; 148
	i32 154, ; 149
	i32 84, ; 150
	i32 31, ; 151
	i32 12, ; 152
	i32 50, ; 153
	i32 0, ; 154
	i32 55, ; 155
	i32 280, ; 156
	i32 35, ; 157
	i32 198, ; 158
	i32 310, ; 159
	i32 298, ; 160
	i32 233, ; 161
	i32 34, ; 162
	i32 57, ; 163
	i32 199, ; 164
	i32 267, ; 165
	i32 180, ; 166
	i32 169, ; 167
	i32 17, ; 168
	i32 301, ; 169
	i32 160, ; 170
	i32 202, ; 171
	i32 170, ; 172
	i32 323, ; 173
	i32 266, ; 174
	i32 205, ; 175
	i32 293, ; 176
	i32 219, ; 177
	i32 329, ; 178
	i32 149, ; 179
	i32 201, ; 180
	i32 289, ; 181
	i32 274, ; 182
	i32 327, ; 183
	i32 235, ; 184
	i32 28, ; 185
	i32 51, ; 186
	i32 215, ; 187
	i32 187, ; 188
	i32 325, ; 189
	i32 175, ; 190
	i32 294, ; 191
	i32 5, ; 192
	i32 309, ; 193
	i32 284, ; 194
	i32 288, ; 195
	i32 183, ; 196
	i32 240, ; 197
	i32 305, ; 198
	i32 232, ; 199
	i32 251, ; 200
	i32 84, ; 201
	i32 293, ; 202
	i32 60, ; 203
	i32 111, ; 204
	i32 56, ; 205
	i32 339, ; 206
	i32 280, ; 207
	i32 98, ; 208
	i32 19, ; 209
	i32 244, ; 210
	i32 110, ; 211
	i32 100, ; 212
	i32 173, ; 213
	i32 101, ; 214
	i32 307, ; 215
	i32 103, ; 216
	i32 297, ; 217
	i32 70, ; 218
	i32 37, ; 219
	i32 31, ; 220
	i32 102, ; 221
	i32 72, ; 222
	i32 313, ; 223
	i32 9, ; 224
	i32 122, ; 225
	i32 45, ; 226
	i32 234, ; 227
	i32 208, ; 228
	i32 9, ; 229
	i32 42, ; 230
	i32 185, ; 231
	i32 4, ; 232
	i32 281, ; 233
	i32 317, ; 234
	i32 312, ; 235
	i32 30, ; 236
	i32 135, ; 237
	i32 91, ; 238
	i32 92, ; 239
	i32 332, ; 240
	i32 48, ; 241
	i32 137, ; 242
	i32 111, ; 243
	i32 136, ; 244
	i32 250, ; 245
	i32 114, ; 246
	i32 298, ; 247
	i32 153, ; 248
	i32 341, ; 249
	i32 75, ; 250
	i32 78, ; 251
	i32 270, ; 252
	i32 36, ; 253
	i32 292, ; 254
	i32 254, ; 255
	i32 247, ; 256
	i32 63, ; 257
	i32 135, ; 258
	i32 15, ; 259
	i32 115, ; 260
	i32 286, ; 261
	i32 295, ; 262
	i32 242, ; 263
	i32 47, ; 264
	i32 69, ; 265
	i32 79, ; 266
	i32 125, ; 267
	i32 93, ; 268
	i32 120, ; 269
	i32 302, ; 270
	i32 26, ; 271
	i32 263, ; 272
	i32 96, ; 273
	i32 27, ; 274
	i32 238, ; 275
	i32 330, ; 276
	i32 308, ; 277
	i32 145, ; 278
	i32 218, ; 279
	i32 165, ; 280
	i32 4, ; 281
	i32 97, ; 282
	i32 32, ; 283
	i32 92, ; 284
	i32 285, ; 285
	i32 203, ; 286
	i32 21, ; 287
	i32 40, ; 288
	i32 166, ; 289
	i32 324, ; 290
	i32 256, ; 291
	i32 316, ; 292
	i32 193, ; 293
	i32 270, ; 294
	i32 301, ; 295
	i32 295, ; 296
	i32 275, ; 297
	i32 2, ; 298
	i32 182, ; 299
	i32 133, ; 300
	i32 110, ; 301
	i32 343, ; 302
	i32 204, ; 303
	i32 336, ; 304
	i32 225, ; 305
	i32 333, ; 306
	i32 57, ; 307
	i32 94, ; 308
	i32 315, ; 309
	i32 38, ; 310
	i32 236, ; 311
	i32 343, ; 312
	i32 25, ; 313
	i32 93, ; 314
	i32 88, ; 315
	i32 98, ; 316
	i32 10, ; 317
	i32 177, ; 318
	i32 194, ; 319
	i32 86, ; 320
	i32 187, ; 321
	i32 99, ; 322
	i32 282, ; 323
	i32 188, ; 324
	i32 195, ; 325
	i32 219, ; 326
	i32 302, ; 327
	i32 227, ; 328
	i32 312, ; 329
	i32 7, ; 330
	i32 267, ; 331
	i32 307, ; 332
	i32 224, ; 333
	i32 87, ; 334
	i32 262, ; 335
	i32 150, ; 336
	i32 311, ; 337
	i32 32, ; 338
	i32 177, ; 339
	i32 115, ; 340
	i32 81, ; 341
	i32 20, ; 342
	i32 11, ; 343
	i32 158, ; 344
	i32 3, ; 345
	i32 212, ; 346
	i32 319, ; 347
	i32 178, ; 348
	i32 207, ; 349
	i32 204, ; 350
	i32 83, ; 351
	i32 306, ; 352
	i32 63, ; 353
	i32 206, ; 354
	i32 321, ; 355
	i32 289, ; 356
	i32 139, ; 357
	i32 200, ; 358
	i32 176, ; 359
	i32 271, ; 360
	i32 153, ; 361
	i32 40, ; 362
	i32 116, ; 363
	i32 196, ; 364
	i32 226, ; 365
	i32 315, ; 366
	i32 278, ; 367
	i32 130, ; 368
	i32 74, ; 369
	i32 65, ; 370
	i32 325, ; 371
	i32 168, ; 372
	i32 230, ; 373
	i32 186, ; 374
	i32 139, ; 375
	i32 105, ; 376
	i32 147, ; 377
	i32 69, ; 378
	i32 152, ; 379
	i32 195, ; 380
	i32 120, ; 381
	i32 126, ; 382
	i32 320, ; 383
	i32 148, ; 384
	i32 253, ; 385
	i32 342, ; 386
	i32 137, ; 387
	i32 240, ; 388
	i32 317, ; 389
	i32 20, ; 390
	i32 14, ; 391
	i32 134, ; 392
	i32 74, ; 393
	i32 58, ; 394
	i32 243, ; 395
	i32 163, ; 396
	i32 164, ; 397
	i32 210, ; 398
	i32 15, ; 399
	i32 73, ; 400
	i32 6, ; 401
	i32 23, ; 402
	i32 265, ; 403
	i32 224, ; 404
	i32 171, ; 405
	i32 90, ; 406
	i32 318, ; 407
	i32 1, ; 408
	i32 221, ; 409
	i32 266, ; 410
	i32 288, ; 411
	i32 133, ; 412
	i32 68, ; 413
	i32 142, ; 414
	i32 201, ; 415
	i32 184, ; 416
	i32 327, ; 417
	i32 174, ; 418
	i32 306, ; 419
	i32 257, ; 420
	i32 205, ; 421
	i32 87, ; 422
	i32 95, ; 423
	i32 247, ; 424
	i32 252, ; 425
	i32 322, ; 426
	i32 30, ; 427
	i32 44, ; 428
	i32 261, ; 429
	i32 181, ; 430
	i32 200, ; 431
	i32 220, ; 432
	i32 226, ; 433
	i32 108, ; 434
	i32 154, ; 435
	i32 34, ; 436
	i32 22, ; 437
	i32 113, ; 438
	i32 56, ; 439
	i32 286, ; 440
	i32 140, ; 441
	i32 117, ; 442
	i32 119, ; 443
	i32 109, ; 444
	i32 228, ; 445
	i32 223, ; 446
	i32 171, ; 447
	i32 234, ; 448
	i32 53, ; 449
	i32 104, ; 450
	i32 328, ; 451
	i32 211, ; 452
	i32 212, ; 453
	i32 132, ; 454
	i32 300, ; 455
	i32 291, ; 456
	i32 279, ; 457
	i32 334, ; 458
	i32 257, ; 459
	i32 214, ; 460
	i32 155, ; 461
	i32 313, ; 462
	i32 244, ; 463
	i32 159, ; 464
	i32 131, ; 465
	i32 279, ; 466
	i32 157, ; 467
	i32 326, ; 468
	i32 268, ; 469
	i32 136, ; 470
	i32 182, ; 471
	i32 291, ; 472
	i32 287, ; 473
	i32 165, ; 474
	i32 213, ; 475
	i32 229, ; 476
	i32 296, ; 477
	i32 39, ; 478
	i32 179, ; 479
	i32 255, ; 480
	i32 80, ; 481
	i32 55, ; 482
	i32 36, ; 483
	i32 96, ; 484
	i32 162, ; 485
	i32 168, ; 486
	i32 292, ; 487
	i32 81, ; 488
	i32 231, ; 489
	i32 185, ; 490
	i32 97, ; 491
	i32 29, ; 492
	i32 155, ; 493
	i32 18, ; 494
	i32 126, ; 495
	i32 118, ; 496
	i32 174, ; 497
	i32 251, ; 498
	i32 282, ; 499
	i32 176, ; 500
	i32 264, ; 501
	i32 284, ; 502
	i32 161, ; 503
	i32 259, ; 504
	i32 181, ; 505
	i32 344, ; 506
	i32 281, ; 507
	i32 272, ; 508
	i32 166, ; 509
	i32 16, ; 510
	i32 140, ; 511
	i32 319, ; 512
	i32 124, ; 513
	i32 117, ; 514
	i32 37, ; 515
	i32 114, ; 516
	i32 184, ; 517
	i32 46, ; 518
	i32 138, ; 519
	i32 116, ; 520
	i32 33, ; 521
	i32 169, ; 522
	i32 94, ; 523
	i32 52, ; 524
	i32 273, ; 525
	i32 191, ; 526
	i32 128, ; 527
	i32 149, ; 528
	i32 24, ; 529
	i32 157, ; 530
	i32 250, ; 531
	i32 144, ; 532
	i32 103, ; 533
	i32 88, ; 534
	i32 238, ; 535
	i32 59, ; 536
	i32 138, ; 537
	i32 0, ; 538
	i32 99, ; 539
	i32 5, ; 540
	i32 13, ; 541
	i32 121, ; 542
	i32 134, ; 543
	i32 192, ; 544
	i32 27, ; 545
	i32 314, ; 546
	i32 71, ; 547
	i32 248, ; 548
	i32 24, ; 549
	i32 236, ; 550
	i32 277, ; 551
	i32 274, ; 552
	i32 331, ; 553
	i32 222, ; 554
	i32 229, ; 555
	i32 245, ; 556
	i32 164, ; 557
	i32 278, ; 558
	i32 310, ; 559
	i32 100, ; 560
	i32 122, ; 561
	i32 249, ; 562
	i32 197, ; 563
	i32 159, ; 564
	i32 163, ; 565
	i32 252, ; 566
	i32 38, ; 567
	i32 209, ; 568
	i32 318, ; 569
	i32 186, ; 570
	i32 17, ; 571
	i32 167, ; 572
	i32 189, ; 573
	i32 331, ; 574
	i32 330, ; 575
	i32 222, ; 576
	i32 146, ; 577
	i32 241, ; 578
	i32 151, ; 579
	i32 129, ; 580
	i32 19, ; 581
	i32 64, ; 582
	i32 143, ; 583
	i32 46, ; 584
	i32 338, ; 585
	i32 220, ; 586
	i32 227, ; 587
	i32 78, ; 588
	i32 60, ; 589
	i32 105, ; 590
	i32 276, ; 591
	i32 231, ; 592
	i32 48, ; 593
	i32 262, ; 594
	i32 335, ; 595
	i32 273, ; 596
	i32 14, ; 597
	i32 196, ; 598
	i32 67, ; 599
	i32 167, ; 600
	i32 341, ; 601
	i32 178, ; 602
	i32 237, ; 603
	i32 241, ; 604
	i32 190, ; 605
	i32 340, ; 606
	i32 77, ; 607
	i32 246, ; 608
	i32 107, ; 609
	i32 230, ; 610
	i32 272, ; 611
	i32 66, ; 612
	i32 62, ; 613
	i32 217, ; 614
	i32 156, ; 615
	i32 206, ; 616
	i32 239, ; 617
	i32 173, ; 618
	i32 10, ; 619
	i32 209, ; 620
	i32 11, ; 621
	i32 77, ; 622
	i32 125, ; 623
	i32 82, ; 624
	i32 198, ; 625
	i32 65, ; 626
	i32 106, ; 627
	i32 64, ; 628
	i32 127, ; 629
	i32 121, ; 630
	i32 76, ; 631
	i32 287, ; 632
	i32 277, ; 633
	i32 339, ; 634
	i32 8, ; 635
	i32 245, ; 636
	i32 2, ; 637
	i32 43, ; 638
	i32 290, ; 639
	i32 152, ; 640
	i32 127, ; 641
	i32 275, ; 642
	i32 23, ; 643
	i32 132, ; 644
	i32 233, ; 645
	i32 264, ; 646
	i32 334, ; 647
	i32 316, ; 648
	i32 28, ; 649
	i32 232, ; 650
	i32 194, ; 651
	i32 218, ; 652
	i32 61, ; 653
	i32 215, ; 654
	i32 211, ; 655
	i32 89, ; 656
	i32 86, ; 657
	i32 144, ; 658
	i32 202, ; 659
	i32 213, ; 660
	i32 35, ; 661
	i32 85, ; 662
	i32 253, ; 663
	i32 329, ; 664
	i32 324, ; 665
	i32 197, ; 666
	i32 49, ; 667
	i32 6, ; 668
	i32 172, ; 669
	i32 89, ; 670
	i32 336, ; 671
	i32 21, ; 672
	i32 158, ; 673
	i32 95, ; 674
	i32 49, ; 675
	i32 112, ; 676
	i32 269, ; 677
	i32 342, ; 678
	i32 129, ; 679
	i32 75, ; 680
	i32 217, ; 681
	i32 246, ; 682
	i32 268, ; 683
	i32 7, ; 684
	i32 210, ; 685
	i32 109, ; 686
	i32 269, ; 687
	i32 189, ; 688
	i32 255 ; 689
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

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
