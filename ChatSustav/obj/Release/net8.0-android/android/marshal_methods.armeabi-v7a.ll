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

@assembly_image_cache = dso_local local_unnamed_addr global [173 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [346 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 136
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 135
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 76
	i32 39485524, ; 3: System.Net.WebSockets.dll => 0x25a8054 => 143
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 163
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 74
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 151
	i32 122350210, ; 8: System.Threading.Channels.dll => 0x74aea82 => 83
	i32 142721839, ; 9: System.Net.WebHeaderCollection => 0x881c32f => 141
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 88
	i32 176714968, ; 11: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 57
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 106
	i32 195452805, ; 13: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 14: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 15: System.ComponentModel => 0xc38ff48 => 121
	i32 221063263, ; 16: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 44
	i32 230752869, ; 17: Microsoft.CSharp.dll => 0xdc10265 => 113
	i32 280992041, ; 18: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 300686228, ; 19: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 35
	i32 317674968, ; 20: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 84
	i32 336156722, ; 22: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 95
	i32 348048101, ; 24: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 45
	i32 356389973, ; 25: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 26: System.IO.Pipes => 0x15ebe147 => 130
	i32 379916513, ; 27: System.Threading.Thread.dll => 0x16a510e1 => 163
	i32 384051609, ; 28: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 48
	i32 385762202, ; 29: System.Memory.dll => 0x16fe439a => 133
	i32 395744057, ; 30: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 417611542, ; 31: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 56
	i32 435591531, ; 32: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 33: System.Collections => 0x1a61054f => 118
	i32 450948140, ; 34: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 94
	i32 458494020, ; 35: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 53
	i32 459347974, ; 36: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 155
	i32 469710990, ; 37: System.dll => 0x1bff388e => 167
	i32 490002678, ; 38: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 40
	i32 498788369, ; 39: System.ObjectModel => 0x1dbae811 => 145
	i32 500358224, ; 40: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 41: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 42: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 69
	i32 539058512, ; 43: Microsoft.Extensions.Logging => 0x20216150 => 65
	i32 592146354, ; 44: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 613668793, ; 45: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 158
	i32 627609679, ; 46: Xamarin.AndroidX.CustomView => 0x2568904f => 92
	i32 627931235, ; 47: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 48: System.Text.Encodings.Web.dll => 0x27787397 => 81
	i32 672442732, ; 49: System.Collections.Concurrent => 0x2814a96c => 115
	i32 683518922, ; 50: System.Net.Security => 0x28bdabca => 139
	i32 688181140, ; 51: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 52: System.Xml.Linq.dll => 0x29293ff5 => 165
	i32 699345723, ; 53: System.Reflection.Emit => 0x29af2b3b => 150
	i32 706645707, ; 54: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 55: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 56: System.Runtime.Loader.dll => 0x2b15ed29 => 152
	i32 724146010, ; 57: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 37
	i32 759454413, ; 58: System.Net.Requests => 0x2d445acd => 138
	i32 762598435, ; 59: System.IO.Pipes.dll => 0x2d745423 => 130
	i32 775507847, ; 60: System.IO.Compression => 0x2e394f87 => 129
	i32 777317022, ; 61: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 62: Microsoft.Extensions.Options => 0x2f0980eb => 68
	i32 804715423, ; 63: System.Data.Common => 0x2ff6fb9f => 123
	i32 823281589, ; 64: System.Private.Uri.dll => 0x311247b5 => 146
	i32 830298997, ; 65: System.IO.Compression.Brotli => 0x317d5b75 => 128
	i32 832711436, ; 66: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 55
	i32 904024072, ; 67: System.ComponentModel.Primitives.dll => 0x35e25008 => 119
	i32 926902833, ; 68: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 69: Newtonsoft.Json => 0x38f24a24 => 76
	i32 967690846, ; 70: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 95
	i32 992768348, ; 71: System.Collections.dll => 0x3b2c715c => 118
	i32 999729041, ; 72: ChatSustav.dll => 0x3b96a791 => 112
	i32 1012816738, ; 73: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 105
	i32 1019214401, ; 74: System.Drawing => 0x3cbffa41 => 126
	i32 1028951442, ; 75: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 62
	i32 1029334545, ; 76: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 77: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 85
	i32 1036536393, ; 78: System.Drawing.Primitives.dll => 0x3dc84a49 => 125
	i32 1044663988, ; 79: System.Linq.Expressions.dll => 0x3e444eb4 => 131
	i32 1052210849, ; 80: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 97
	i32 1058641855, ; 81: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 45
	i32 1082857460, ; 82: System.ComponentModel.TypeConverter => 0x408b17f4 => 120
	i32 1084122840, ; 83: Xamarin.Kotlin.StdLib => 0x409e66d8 => 110
	i32 1098259244, ; 84: System => 0x41761b2c => 167
	i32 1112354281, ; 85: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 35
	i32 1118262833, ; 86: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1160313973, ; 87: System.Net.ServerSentEvents.dll => 0x4528fc75 => 79
	i32 1168523401, ; 88: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 89: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 64
	i32 1178241025, ; 90: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 102
	i32 1203215381, ; 91: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1220193633, ; 92: Microsoft.Net.Http.Headers => 0x48baad61 => 75
	i32 1233093933, ; 93: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 52
	i32 1234928153, ; 94: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1236289705, ; 95: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 40
	i32 1260983243, ; 96: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1267908789, ; 97: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 48
	i32 1293217323, ; 98: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 93
	i32 1324164729, ; 99: System.Linq => 0x4eed2679 => 132
	i32 1373134921, ; 100: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 101: Xamarin.AndroidX.SavedState => 0x52114ed3 => 105
	i32 1406073936, ; 102: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 89
	i32 1408764838, ; 103: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 154
	i32 1414043276, ; 104: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 38
	i32 1430672901, ; 105: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 106: System.Formats.Asn1.dll => 0x568cd628 => 127
	i32 1458022317, ; 107: System.Net.Security.dll => 0x56e7a7ad => 139
	i32 1461004990, ; 108: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 109: System.IO.Compression.dll => 0x57261233 => 129
	i32 1469204771, ; 110: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 86
	i32 1470490898, ; 111: Microsoft.Extensions.Primitives => 0x57a5e912 => 69
	i32 1480492111, ; 112: System.IO.Compression.Brotli.dll => 0x583e844f => 128
	i32 1486966743, ; 113: Microsoft.AspNetCore.SignalR => 0x58a14fd7 => 50
	i32 1493001747, ; 114: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 115: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 116: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 161
	i32 1543355203, ; 117: System.Reflection.Emit.dll => 0x5bfdbb43 => 150
	i32 1551623176, ; 118: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1618516317, ; 119: System.Net.WebSockets.Client.dll => 0x6078995d => 142
	i32 1622152042, ; 120: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 99
	i32 1624863272, ; 121: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 108
	i32 1636350590, ; 122: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 91
	i32 1639515021, ; 123: System.Net.Http.dll => 0x61b9038d => 134
	i32 1639986890, ; 124: System.Text.RegularExpressions => 0x61c036ca => 161
	i32 1657153582, ; 125: System.Runtime => 0x62c6282e => 156
	i32 1658251792, ; 126: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 109
	i32 1677501392, ; 127: System.Net.Primitives.dll => 0x63fca3d0 => 137
	i32 1678508291, ; 128: System.Net.WebSockets => 0x640c0103 => 143
	i32 1679769178, ; 129: System.Security.Cryptography => 0x641f3e5a => 159
	i32 1729485958, ; 130: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 87
	i32 1736233607, ; 131: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 132: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1746115085, ; 133: System.IO.Pipelines.dll => 0x68139a0d => 78
	i32 1763938596, ; 134: System.Diagnostics.TraceSource.dll => 0x69239124 => 124
	i32 1766324549, ; 135: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 106
	i32 1770582343, ; 136: Microsoft.Extensions.Logging.dll => 0x6988f147 => 65
	i32 1780572499, ; 137: Mono.Android.Runtime.dll => 0x6a216153 => 171
	i32 1782862114, ; 138: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 139: Xamarin.AndroidX.Fragment => 0x6a96652d => 94
	i32 1793755602, ; 140: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 141: Xamarin.AndroidX.Loader => 0x6bcd3296 => 99
	i32 1813058853, ; 142: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 110
	i32 1813201214, ; 143: Xamarin.Google.Android.Material => 0x6c13413e => 109
	i32 1818569960, ; 144: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 103
	i32 1819327070, ; 145: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 47
	i32 1824175904, ; 146: System.Text.Encoding.Extensions => 0x6cbab720 => 160
	i32 1824722060, ; 147: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 154
	i32 1828688058, ; 148: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 66
	i32 1842015223, ; 149: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 150: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 151: System.Linq.Expressions => 0x6ec71a65 => 131
	i32 1875935024, ; 152: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 153: System.Collections.NonGeneric.dll => 0x71dc7c8b => 116
	i32 1928288591, ; 154: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 42
	i32 1932718519, ; 155: Microsoft.Bcl.TimeProvider => 0x7332f1b7 => 58
	i32 1939592360, ; 156: System.Private.Xml.Linq => 0x739bd4a8 => 147
	i32 1945717188, ; 157: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 52
	i32 1967334205, ; 158: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 53
	i32 1968388702, ; 159: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 59
	i32 1978435800, ; 160: System.Net.ServerSentEvents => 0x75ec88d8 => 79
	i32 2003115576, ; 161: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2011961780, ; 162: System.Buffers.dll => 0x77ec19b4 => 114
	i32 2019465201, ; 163: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 97
	i32 2025202353, ; 164: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 165: System.Private.Xml => 0x79eb68ee => 148
	i32 2055257422, ; 166: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 96
	i32 2066184531, ; 167: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 168: System.Diagnostics.TraceSource => 0x7b6f419e => 124
	i32 2075706075, ; 169: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 42
	i32 2079903147, ; 170: System.Runtime.dll => 0x7bf8cdab => 156
	i32 2090596640, ; 171: System.Numerics.Vectors => 0x7c9bf920 => 144
	i32 2127167465, ; 172: System.Console => 0x7ec9ffe9 => 122
	i32 2142473426, ; 173: System.Collections.Specialized => 0x7fb38cd2 => 117
	i32 2159891885, ; 174: Microsoft.Maui => 0x80bd55ad => 72
	i32 2169148018, ; 175: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2179096858, ; 176: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 43
	i32 2181898931, ; 177: Microsoft.Extensions.Options.dll => 0x820d22b3 => 68
	i32 2192057212, ; 178: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 66
	i32 2193016926, ; 179: System.ObjectModel.dll => 0x82b6c85e => 145
	i32 2201107256, ; 180: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 111
	i32 2201231467, ; 181: System.Net.Http => 0x8334206b => 134
	i32 2204417087, ; 182: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 67
	i32 2207618523, ; 183: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2229158877, ; 184: Microsoft.Extensions.Features.dll => 0x84de43dd => 63
	i32 2242871324, ; 185: Microsoft.AspNetCore.Http.dll => 0x85af801c => 41
	i32 2266799131, ; 186: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 60
	i32 2270573516, ; 187: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 188: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 104
	i32 2295906218, ; 189: System.Net.Sockets => 0x88d8bfaa => 140
	i32 2303942373, ; 190: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 191: System.Private.CoreLib.dll => 0x896b7878 => 169
	i32 2319144366, ; 192: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 51
	i32 2353062107, ; 193: System.Net.Primitives => 0x8c40e0db => 137
	i32 2368005991, ; 194: System.Xml.ReaderWriter.dll => 0x8d24e767 => 166
	i32 2371007202, ; 195: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 59
	i32 2395872292, ; 196: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 197: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 198: System.Console.dll => 0x912896e5 => 122
	i32 2458678730, ; 199: System.Net.Sockets.dll => 0x928c75ca => 140
	i32 2471841756, ; 200: netstandard.dll => 0x93554fdc => 168
	i32 2475788418, ; 201: Java.Interop.dll => 0x93918882 => 170
	i32 2480646305, ; 202: Microsoft.Maui.Controls => 0x93dba8a1 => 70
	i32 2537015816, ; 203: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 36
	i32 2550873716, ; 204: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 205: Microsoft.CSharp => 0x98ba5a04 => 113
	i32 2570120770, ; 206: System.Text.Encodings.Web => 0x9930ee42 => 81
	i32 2585220780, ; 207: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 160
	i32 2592341985, ; 208: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 64
	i32 2593268061, ; 209: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 49
	i32 2593496499, ; 210: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2594125473, ; 211: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 39
	i32 2605712449, ; 212: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 111
	i32 2617129537, ; 213: System.Private.Xml.dll => 0x9bfe3a41 => 148
	i32 2620871830, ; 214: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 91
	i32 2626831493, ; 215: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2633959305, ; 216: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 46
	i32 2637500010, ; 217: Microsoft.Extensions.Features => 0x9d350e6a => 63
	i32 2642291320, ; 218: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 80
	i32 2663698177, ; 219: System.Runtime.Loader => 0x9ec4cf01 => 152
	i32 2665622720, ; 220: System.Drawing.Primitives => 0x9ee22cc0 => 125
	i32 2676780864, ; 221: System.Data.Common.dll => 0x9f8c6f40 => 123
	i32 2717744543, ; 222: System.Security.Claims => 0xa1fd7d9f => 157
	i32 2724373263, ; 223: System.Runtime.Numerics.dll => 0xa262a30f => 153
	i32 2732626843, ; 224: Xamarin.AndroidX.Activity => 0xa2e0939b => 84
	i32 2735172069, ; 225: System.Threading.Channels => 0xa30769e5 => 83
	i32 2735631878, ; 226: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 36
	i32 2737747696, ; 227: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 86
	i32 2752995522, ; 228: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 229: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 71
	i32 2764765095, ; 230: Microsoft.Maui.dll => 0xa4caf7a7 => 72
	i32 2778768386, ; 231: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2785988530, ; 232: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 233: Microsoft.Maui.Graphics => 0xa7008e0b => 74
	i32 2806116107, ; 234: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 235: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 89
	i32 2831556043, ; 236: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2850549256, ; 237: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 47
	i32 2853208004, ; 238: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2861189240, ; 239: Microsoft.Maui.Essentials => 0xaa8a4878 => 73
	i32 2875347124, ; 240: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 44
	i32 2909740682, ; 241: System.Private.CoreLib => 0xad6f1e8a => 169
	i32 2916838712, ; 242: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 108
	i32 2919462931, ; 243: System.Numerics.Vectors.dll => 0xae037813 => 144
	i32 2930166128, ; 244: Microsoft.AspNetCore.SignalR.dll => 0xaea6c970 => 50
	i32 2959614098, ; 245: System.ComponentModel.dll => 0xb0682092 => 121
	i32 2972252294, ; 246: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 158
	i32 2978368250, ; 247: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 39
	i32 2978675010, ; 248: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 93
	i32 2996646946, ; 249: Microsoft.AspNetCore.Http => 0xb29d3422 => 41
	i32 3036999524, ; 250: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 46
	i32 3038032645, ; 251: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 252: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 100
	i32 3059408633, ; 253: Mono.Android.Runtime => 0xb65adef9 => 171
	i32 3059793426, ; 254: System.ComponentModel.Primitives => 0xb660be12 => 119
	i32 3077302341, ; 255: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3099732863, ; 256: System.Security.Claims.dll => 0xb8c22b7f => 157
	i32 3103600923, ; 257: System.Formats.Asn1 => 0xb8fd311b => 127
	i32 3113762169, ; 258: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 49
	i32 3124832203, ; 259: System.Threading.Tasks.Extensions => 0xba4127cb => 162
	i32 3178803400, ; 260: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 101
	i32 3180757527, ; 261: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 56
	i32 3220365878, ; 262: System.Threading => 0xbff2e236 => 164
	i32 3258312781, ; 263: Xamarin.AndroidX.CardView => 0xc235e84d => 87
	i32 3265893370, ; 264: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 162
	i32 3269172271, ; 265: ChatSustav => 0xc2db9c2f => 112
	i32 3300764913, ; 266: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 57
	i32 3305363605, ; 267: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 268: System.Net.Requests.dll => 0xc5b097e4 => 138
	i32 3317135071, ; 269: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 92
	i32 3346324047, ; 270: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 102
	i32 3357674450, ; 271: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 272: System.Text.Json => 0xc82afec1 => 82
	i32 3362522851, ; 273: Xamarin.AndroidX.Core => 0xc86c06e3 => 90
	i32 3366347497, ; 274: Java.Interop => 0xc8a662e9 => 170
	i32 3374999561, ; 275: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 104
	i32 3381016424, ; 276: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 277: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 61
	i32 3430777524, ; 278: netstandard => 0xcc7d82b4 => 168
	i32 3463511458, ; 279: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3466904072, ; 280: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 51
	i32 3471940407, ; 281: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 120
	i32 3476120550, ; 282: Mono.Android => 0xcf3163e6 => 172
	i32 3476505041, ; 283: Microsoft.AspNetCore.SignalR.Core => 0xcf3741d1 => 54
	i32 3479583265, ; 284: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 285: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 286: System.Text.Json.dll => 0xcfbaacae => 82
	i32 3509114376, ; 287: System.Xml.Linq => 0xd128d608 => 165
	i32 3580758918, ; 288: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3594787188, ; 289: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 80
	i32 3598340787, ; 290: System.Net.WebSockets.Client => 0xd67a52b3 => 142
	i32 3608519521, ; 291: System.Linq.dll => 0xd715a361 => 132
	i32 3641597786, ; 292: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 96
	i32 3643446276, ; 293: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 294: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 101
	i32 3657292374, ; 295: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 60
	i32 3660523487, ; 296: System.Net.NetworkInformation => 0xda2f27df => 136
	i32 3672681054, ; 297: Mono.Android.dll => 0xdae8aa5e => 172
	i32 3679340867, ; 298: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 43
	i32 3691870036, ; 299: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 55
	i32 3697841164, ; 300: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 301: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 100
	i32 3732100267, ; 302: System.Net.NameResolution => 0xde7354ab => 135
	i32 3748608112, ; 303: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 77
	i32 3765508441, ; 304: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 67
	i32 3786282454, ; 305: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 88
	i32 3787005001, ; 306: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 38
	i32 3792276235, ; 307: System.Collections.NonGeneric => 0xe2098b0b => 116
	i32 3802395368, ; 308: System.Collections.Specialized.dll => 0xe2a3f2e8 => 117
	i32 3823082795, ; 309: System.Security.Cryptography.dll => 0xe3df9d2b => 159
	i32 3841636137, ; 310: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 62
	i32 3849253459, ; 311: System.Runtime.InteropServices.dll => 0xe56ef253 => 151
	i32 3885497537, ; 312: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 141
	i32 3889960447, ; 313: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 314: System.Collections.Concurrent.dll => 0xe839deed => 115
	i32 3896760992, ; 315: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 90
	i32 3928044579, ; 316: System.Xml.ReaderWriter => 0xea213423 => 166
	i32 3931092270, ; 317: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 103
	i32 3955647286, ; 318: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 85
	i32 3980434154, ; 319: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 320: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4017318820, ; 321: Microsoft.Bcl.TimeProvider.dll => 0xef736ba4 => 58
	i32 4023392905, ; 322: System.IO.Pipelines => 0xefd01a89 => 78
	i32 4025784931, ; 323: System.Memory => 0xeff49a63 => 133
	i32 4044155772, ; 324: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 75
	i32 4046471985, ; 325: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 71
	i32 4054681211, ; 326: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 149
	i32 4068434129, ; 327: System.Private.Xml.Linq.dll => 0xf27f60d1 => 147
	i32 4073602200, ; 328: System.Threading.dll => 0xf2ce3c98 => 164
	i32 4094352644, ; 329: Microsoft.Maui.Essentials.dll => 0xf40add04 => 73
	i32 4099507663, ; 330: System.Drawing.dll => 0xf45985cf => 126
	i32 4100113165, ; 331: System.Private.Uri => 0xf462c30d => 146
	i32 4102112229, ; 332: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 333: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 334: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 61
	i32 4141580284, ; 335: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 37
	i32 4147896353, ; 336: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 149
	i32 4150914736, ; 337: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 338: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 155
	i32 4182413190, ; 339: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 98
	i32 4213026141, ; 340: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 77
	i32 4260525087, ; 341: System.Buffers => 0xfdf2741f => 114
	i32 4271975918, ; 342: Microsoft.Maui.Controls.dll => 0xfea12dee => 70
	i32 4274976490, ; 343: System.Runtime.Numerics => 0xfecef6ea => 153
	i32 4292120959, ; 344: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 98
	i32 4293859396 ; 345: Microsoft.AspNetCore.SignalR.Core.dll => 0xffef1844 => 54
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [346 x i32] [
	i32 136, ; 0
	i32 135, ; 1
	i32 76, ; 2
	i32 143, ; 3
	i32 163, ; 4
	i32 33, ; 5
	i32 74, ; 6
	i32 151, ; 7
	i32 83, ; 8
	i32 141, ; 9
	i32 88, ; 10
	i32 57, ; 11
	i32 106, ; 12
	i32 30, ; 13
	i32 31, ; 14
	i32 121, ; 15
	i32 44, ; 16
	i32 113, ; 17
	i32 2, ; 18
	i32 35, ; 19
	i32 30, ; 20
	i32 84, ; 21
	i32 15, ; 22
	i32 95, ; 23
	i32 45, ; 24
	i32 14, ; 25
	i32 130, ; 26
	i32 163, ; 27
	i32 48, ; 28
	i32 133, ; 29
	i32 34, ; 30
	i32 56, ; 31
	i32 26, ; 32
	i32 118, ; 33
	i32 94, ; 34
	i32 53, ; 35
	i32 155, ; 36
	i32 167, ; 37
	i32 40, ; 38
	i32 145, ; 39
	i32 13, ; 40
	i32 7, ; 41
	i32 69, ; 42
	i32 65, ; 43
	i32 21, ; 44
	i32 158, ; 45
	i32 92, ; 46
	i32 19, ; 47
	i32 81, ; 48
	i32 115, ; 49
	i32 139, ; 50
	i32 1, ; 51
	i32 165, ; 52
	i32 150, ; 53
	i32 16, ; 54
	i32 4, ; 55
	i32 152, ; 56
	i32 37, ; 57
	i32 138, ; 58
	i32 130, ; 59
	i32 129, ; 60
	i32 25, ; 61
	i32 68, ; 62
	i32 123, ; 63
	i32 146, ; 64
	i32 128, ; 65
	i32 55, ; 66
	i32 119, ; 67
	i32 28, ; 68
	i32 76, ; 69
	i32 95, ; 70
	i32 118, ; 71
	i32 112, ; 72
	i32 105, ; 73
	i32 126, ; 74
	i32 62, ; 75
	i32 3, ; 76
	i32 85, ; 77
	i32 125, ; 78
	i32 131, ; 79
	i32 97, ; 80
	i32 45, ; 81
	i32 120, ; 82
	i32 110, ; 83
	i32 167, ; 84
	i32 35, ; 85
	i32 16, ; 86
	i32 79, ; 87
	i32 22, ; 88
	i32 64, ; 89
	i32 102, ; 90
	i32 20, ; 91
	i32 75, ; 92
	i32 52, ; 93
	i32 18, ; 94
	i32 40, ; 95
	i32 2, ; 96
	i32 48, ; 97
	i32 93, ; 98
	i32 132, ; 99
	i32 32, ; 100
	i32 105, ; 101
	i32 89, ; 102
	i32 154, ; 103
	i32 38, ; 104
	i32 0, ; 105
	i32 127, ; 106
	i32 139, ; 107
	i32 6, ; 108
	i32 129, ; 109
	i32 86, ; 110
	i32 69, ; 111
	i32 128, ; 112
	i32 50, ; 113
	i32 10, ; 114
	i32 5, ; 115
	i32 161, ; 116
	i32 150, ; 117
	i32 25, ; 118
	i32 142, ; 119
	i32 99, ; 120
	i32 108, ; 121
	i32 91, ; 122
	i32 134, ; 123
	i32 161, ; 124
	i32 156, ; 125
	i32 109, ; 126
	i32 137, ; 127
	i32 143, ; 128
	i32 159, ; 129
	i32 87, ; 130
	i32 23, ; 131
	i32 1, ; 132
	i32 78, ; 133
	i32 124, ; 134
	i32 106, ; 135
	i32 65, ; 136
	i32 171, ; 137
	i32 17, ; 138
	i32 94, ; 139
	i32 9, ; 140
	i32 99, ; 141
	i32 110, ; 142
	i32 109, ; 143
	i32 103, ; 144
	i32 47, ; 145
	i32 160, ; 146
	i32 154, ; 147
	i32 66, ; 148
	i32 29, ; 149
	i32 26, ; 150
	i32 131, ; 151
	i32 8, ; 152
	i32 116, ; 153
	i32 42, ; 154
	i32 58, ; 155
	i32 147, ; 156
	i32 52, ; 157
	i32 53, ; 158
	i32 59, ; 159
	i32 79, ; 160
	i32 5, ; 161
	i32 114, ; 162
	i32 97, ; 163
	i32 0, ; 164
	i32 148, ; 165
	i32 96, ; 166
	i32 4, ; 167
	i32 124, ; 168
	i32 42, ; 169
	i32 156, ; 170
	i32 144, ; 171
	i32 122, ; 172
	i32 117, ; 173
	i32 72, ; 174
	i32 12, ; 175
	i32 43, ; 176
	i32 68, ; 177
	i32 66, ; 178
	i32 145, ; 179
	i32 111, ; 180
	i32 134, ; 181
	i32 67, ; 182
	i32 14, ; 183
	i32 63, ; 184
	i32 41, ; 185
	i32 60, ; 186
	i32 8, ; 187
	i32 104, ; 188
	i32 140, ; 189
	i32 18, ; 190
	i32 169, ; 191
	i32 51, ; 192
	i32 137, ; 193
	i32 166, ; 194
	i32 59, ; 195
	i32 13, ; 196
	i32 10, ; 197
	i32 122, ; 198
	i32 140, ; 199
	i32 168, ; 200
	i32 170, ; 201
	i32 70, ; 202
	i32 36, ; 203
	i32 11, ; 204
	i32 113, ; 205
	i32 81, ; 206
	i32 160, ; 207
	i32 64, ; 208
	i32 49, ; 209
	i32 20, ; 210
	i32 39, ; 211
	i32 111, ; 212
	i32 148, ; 213
	i32 91, ; 214
	i32 15, ; 215
	i32 46, ; 216
	i32 63, ; 217
	i32 80, ; 218
	i32 152, ; 219
	i32 125, ; 220
	i32 123, ; 221
	i32 157, ; 222
	i32 153, ; 223
	i32 84, ; 224
	i32 83, ; 225
	i32 36, ; 226
	i32 86, ; 227
	i32 21, ; 228
	i32 71, ; 229
	i32 72, ; 230
	i32 107, ; 231
	i32 27, ; 232
	i32 74, ; 233
	i32 6, ; 234
	i32 89, ; 235
	i32 19, ; 236
	i32 47, ; 237
	i32 107, ; 238
	i32 73, ; 239
	i32 44, ; 240
	i32 169, ; 241
	i32 108, ; 242
	i32 144, ; 243
	i32 50, ; 244
	i32 121, ; 245
	i32 158, ; 246
	i32 39, ; 247
	i32 93, ; 248
	i32 41, ; 249
	i32 46, ; 250
	i32 34, ; 251
	i32 100, ; 252
	i32 171, ; 253
	i32 119, ; 254
	i32 12, ; 255
	i32 157, ; 256
	i32 127, ; 257
	i32 49, ; 258
	i32 162, ; 259
	i32 101, ; 260
	i32 56, ; 261
	i32 164, ; 262
	i32 87, ; 263
	i32 162, ; 264
	i32 112, ; 265
	i32 57, ; 266
	i32 7, ; 267
	i32 138, ; 268
	i32 92, ; 269
	i32 102, ; 270
	i32 24, ; 271
	i32 82, ; 272
	i32 90, ; 273
	i32 170, ; 274
	i32 104, ; 275
	i32 3, ; 276
	i32 61, ; 277
	i32 168, ; 278
	i32 11, ; 279
	i32 51, ; 280
	i32 120, ; 281
	i32 172, ; 282
	i32 54, ; 283
	i32 24, ; 284
	i32 23, ; 285
	i32 82, ; 286
	i32 165, ; 287
	i32 31, ; 288
	i32 80, ; 289
	i32 142, ; 290
	i32 132, ; 291
	i32 96, ; 292
	i32 28, ; 293
	i32 101, ; 294
	i32 60, ; 295
	i32 136, ; 296
	i32 172, ; 297
	i32 43, ; 298
	i32 55, ; 299
	i32 33, ; 300
	i32 100, ; 301
	i32 135, ; 302
	i32 77, ; 303
	i32 67, ; 304
	i32 88, ; 305
	i32 38, ; 306
	i32 116, ; 307
	i32 117, ; 308
	i32 159, ; 309
	i32 62, ; 310
	i32 151, ; 311
	i32 141, ; 312
	i32 32, ; 313
	i32 115, ; 314
	i32 90, ; 315
	i32 166, ; 316
	i32 103, ; 317
	i32 85, ; 318
	i32 27, ; 319
	i32 9, ; 320
	i32 58, ; 321
	i32 78, ; 322
	i32 133, ; 323
	i32 75, ; 324
	i32 71, ; 325
	i32 149, ; 326
	i32 147, ; 327
	i32 164, ; 328
	i32 73, ; 329
	i32 126, ; 330
	i32 146, ; 331
	i32 22, ; 332
	i32 17, ; 333
	i32 61, ; 334
	i32 37, ; 335
	i32 149, ; 336
	i32 29, ; 337
	i32 155, ; 338
	i32 98, ; 339
	i32 77, ; 340
	i32 114, ; 341
	i32 70, ; 342
	i32 153, ; 343
	i32 98, ; 344
	i32 54 ; 345
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
