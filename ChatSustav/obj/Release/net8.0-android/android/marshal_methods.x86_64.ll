; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [173 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [346 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 69
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 172
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 73
	i64 165455458108447059, ; 3: Microsoft.AspNetCore.Http.Connections.dll => 0x24bd0dcceb41953 => 43
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 131
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 88
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 105
	i64 535107122908063503, ; 7: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 67
	i64 545109961164950392, ; 8: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 750875890346172408, ; 9: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 163
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 121
	i64 849051935479314978, ; 11: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 93
	i64 1081082515714103219, ; 13: System.Net.ServerSentEvents => 0xf00c6d1fa0657b3 => 79
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 109
	i64 1121665720830085036, ; 15: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 16: System.Drawing.dll => 0x119be62002c19ebb => 126
	i64 1344705586910940754, ; 17: ChatSustav => 0x12a95a9b534f4e52 => 112
	i64 1369545283391376210, ; 18: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 101
	i64 1476839205573959279, ; 19: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 137
	i64 1486715745332614827, ; 20: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 70
	i64 1513467482682125403, ; 21: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 171
	i64 1537168428375924959, ; 22: System.Threading.Thread.dll => 0x15551e8a954ae0df => 163
	i64 1556147632182429976, ; 23: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 86
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 98
	i64 1653644849046973826, ; 26: System.Net.WebSockets.WebSocketProtocol => 0x16f2ed3a94196d82 => 80
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 76
	i64 1743969030606105336, ; 28: System.Memory.dll => 0x1833d297e88f2af8 => 133
	i64 1767386781656293639, ; 29: System.Private.Uri.dll => 0x188704e9f5582107 => 146
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 85
	i64 1835311033149317475, ; 31: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 32: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 105
	i64 1875417405349196092, ; 33: System.Drawing.Primitives => 0x1a06d2319b6c713c => 125
	i64 1881198190668717030, ; 34: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 35: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 71
	i64 1959996714666907089, ; 36: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1972385128188460614, ; 37: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 158
	i64 1981742497975770890, ; 38: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 97
	i64 1983698669889758782, ; 39: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 40: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2040001226662520565, ; 41: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 162
	i64 2102659300918482391, ; 42: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 125
	i64 2133195048986300728, ; 43: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 76
	i64 2262844636196693701, ; 44: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 93
	i64 2287834202362508563, ; 45: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 115
	i64 2302323944321350744, ; 46: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 47: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 96
	i64 2335503487726329082, ; 48: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 81
	i64 2470498323731680442, ; 49: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 89
	i64 2497223385847772520, ; 50: System.Runtime => 0x22a7eb7046413568 => 156
	i64 2547086958574651984, ; 51: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 84
	i64 2602673633151553063, ; 52: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2632269733008246987, ; 53: System.Net.NameResolution => 0x2487b36034f808cb => 135
	i64 2656907746661064104, ; 54: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 61
	i64 2662981627730767622, ; 55: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2706075432581334785, ; 56: System.Net.WebSockets => 0x258de944be6c0701 => 143
	i64 2895129759130297543, ; 57: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 109
	i64 3021884968805928991, ; 59: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 37
	i64 3266690593535380875, ; 60: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 36
	i64 3289520064315143713, ; 61: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 95
	i64 3311221304742556517, ; 62: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 144
	i64 3325875462027654285, ; 63: System.Runtime.Numerics => 0x2e27e21c8958b48d => 153
	i64 3328853167529574890, ; 64: System.Net.Sockets.dll => 0x2e327651a008c1ea => 140
	i64 3344514922410554693, ; 65: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 111
	i64 3396143930648122816, ; 66: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 64
	i64 3429672777697402584, ; 67: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 73
	i64 3494946837667399002, ; 68: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 59
	i64 3522470458906976663, ; 69: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 106
	i64 3551103847008531295, ; 70: System.Private.CoreLib.dll => 0x31480e226177735f => 169
	i64 3567343442040498961, ; 71: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 72: System.Runtime.dll => 0x319037675df7e556 => 156
	i64 3638003163729360188, ; 73: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 60
	i64 3647754201059316852, ; 74: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 166
	i64 3655542548057982301, ; 75: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 59
	i64 3716579019761409177, ; 76: netstandard.dll => 0x3393f0ed5c8c5c99 => 168
	i64 3727469159507183293, ; 77: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 104
	i64 3783726507060260521, ; 78: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 53
	i64 3789512566578254774, ; 79: System.Net.ServerSentEvents.dll => 0x34970d9a02c693b6 => 79
	i64 3869221888984012293, ; 80: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 65
	i64 3890352374528606784, ; 81: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 71
	i64 3933965368022646939, ; 82: System.Net.Requests => 0x369840a8bfadc09b => 138
	i64 3966267475168208030, ; 83: System.Memory => 0x370b03412596249e => 133
	i64 4009997192427317104, ; 84: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 155
	i64 4073500526318903918, ; 85: System.Private.Xml.dll => 0x3887fb25779ae26e => 148
	i64 4120493066591692148, ; 86: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 87: System.ComponentModel => 0x39a7562737acb67e => 121
	i64 4168469861834746866, ; 88: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 157
	i64 4187479170553454871, ; 89: System.Linq.Expressions => 0x3a1cea1e912fa117 => 131
	i64 4205801962323029395, ; 90: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 120
	i64 4225924121207573736, ; 91: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 35
	i64 4243591448627561453, ; 92: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 46
	i64 4250192876909962317, ; 93: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 39
	i64 4282138915307457788, ; 94: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 150
	i64 4356591372459378815, ; 95: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4373617458794931033, ; 96: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 130
	i64 4533124835995628778, ; 97: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 150
	i64 4679594760078841447, ; 98: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 99: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 84
	i64 4795410492532947900, ; 100: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 106
	i64 4809057822547766521, ; 101: System.Drawing => 0x42bd349c3145ecf9 => 126
	i64 4814660307502931973, ; 102: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 135
	i64 4832426131961301651, ; 103: Microsoft.AspNetCore.WebSockets => 0x431039f6b6de4a93 => 56
	i64 4853321196694829351, ; 104: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 152
	i64 5103417709280584325, ; 105: System.Collections.Specialized => 0x46d2fb5e161b6285 => 117
	i64 5112836352847824253, ; 106: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 57
	i64 5177565741364132164, ; 107: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 41
	i64 5182934613077526976, ; 108: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 117
	i64 5290786973231294105, ; 109: System.Runtime.Loader => 0x496ca6b869b72699 => 152
	i64 5471532531798518949, ; 110: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 111: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 112: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 128
	i64 5573260873512690141, ; 113: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 159
	i64 5593115988096097561, ; 114: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 48
	i64 5650097808083101034, ; 115: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 158
	i64 5692067934154308417, ; 116: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 108
	i64 5979151488806146654, ; 117: System.Formats.Asn1 => 0x52fa3699a489d25e => 127
	i64 6014447449592687183, ; 118: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 45
	i64 6034224070161570862, ; 119: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 51
	i64 6068057819846744445, ; 120: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6100239589957982951, ; 121: Microsoft.AspNetCore.SignalR.Core => 0x54a867962c385ae7 => 54
	i64 6200764641006662125, ; 122: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 123: System.Text.Json.dll => 0x565a67a0ffe264a7 => 82
	i64 6284145129771520194, ; 124: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 149
	i64 6357457916754632952, ; 125: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 96
	i64 6478287442656530074, ; 127: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 128: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 92
	i64 6560151584539558821, ; 129: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 68
	i64 6743165466166707109, ; 130: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 131: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6783125919820072783, ; 132: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 38
	i64 6786606130239981554, ; 133: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 124
	i64 6876862101832370452, ; 134: System.Xml.Linq => 0x5f6f85a57d108914 => 165
	i64 6892424314611037586, ; 135: Microsoft.AspNetCore.Http.Connections => 0x5fa6cf6581a7f592 => 43
	i64 6894844156784520562, ; 136: System.Numerics.Vectors => 0x5faf683aead1ad72 => 144
	i64 6911788284027924527, ; 137: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 40
	i64 7017588408768804231, ; 138: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 55
	i64 7083547580668757502, ; 139: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 147
	i64 7220009545223068405, ; 140: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 141: System.Linq => 0x64e71ccf51a90a5a => 132
	i64 7331765743953618630, ; 142: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 41
	i64 7377312882064240630, ; 143: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 120
	i64 7488575175965059935, ; 144: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 165
	i64 7489048572193775167, ; 145: System.ObjectModel => 0x67ee71ff6b419e3f => 145
	i64 7654504624184590948, ; 146: System.Net.Http => 0x6a3a4366801b8264 => 134
	i64 7708790323521193081, ; 147: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 148: System.Private.CoreLib => 0x6b0ff375198b9c17 => 169
	i64 7735176074855944702, ; 149: Microsoft.CSharp => 0x6b58dda848e391fe => 113
	i64 7735352534559001595, ; 150: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 110
	i64 7824823231109474690, ; 151: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 37
	i64 7836164640616011524, ; 152: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 86
	i64 8064050204834738623, ; 153: System.Collections.dll => 0x6fe942efa61731bf => 118
	i64 8083354569033831015, ; 154: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 95
	i64 8087206902342787202, ; 155: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 77
	i64 8167236081217502503, ; 156: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 170
	i64 8185542183669246576, ; 157: System.Collections => 0x7198e33f4794aa70 => 118
	i64 8243855692487634729, ; 158: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 55
	i64 8246048515196606205, ; 159: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 74
	i64 8368701292315763008, ; 160: System.Security.Cryptography => 0x7423997c6fd56140 => 159
	i64 8400357532724379117, ; 161: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 103
	i64 8563666267364444763, ; 162: System.Private.Uri => 0x76d841191140ca5b => 146
	i64 8611142787134128904, ; 163: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 40
	i64 8614108721271900878, ; 164: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 165: Java.Interop => 0x77b654e585b55834 => 170
	i64 8638972117149407195, ; 166: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 113
	i64 8639588376636138208, ; 167: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 102
	i64 8645284293310146700, ; 168: Microsoft.AspNetCore.SignalR.Core.dll => 0x77fa38429503e88c => 54
	i64 8677882282824630478, ; 169: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 170: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 77
	i64 9045785047181495996, ; 171: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9078292251399104661, ; 172: Microsoft.AspNetCore.SignalR.dll => 0x7dfc92b42bd32895 => 50
	i64 9171527886295067560, ; 173: ChatSustav.dll => 0x7f47d0050e34eba8 => 112
	i64 9312692141327339315, ; 174: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 108
	i64 9324707631942237306, ; 175: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 85
	i64 9413000421947348542, ; 176: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 39
	i64 9659729154652888475, ; 177: System.Text.RegularExpressions => 0x860e407c9991dd9b => 161
	i64 9678050649315576968, ; 178: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 89
	i64 9702891218465930390, ; 179: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 116
	i64 9808709177481450983, ; 180: Mono.Android.dll => 0x881f890734e555e7 => 172
	i64 9938556199016768930, ; 181: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 48
	i64 9956195530459977388, ; 182: Microsoft.Maui => 0x8a2b8315b36616ac => 72
	i64 9991543690424095600, ; 183: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 184: System.Net.Http.dll => 0x8b50e941206af13b => 134
	i64 10051358222726253779, ; 185: System.Private.Xml => 0x8b7d990c97ccccd3 => 148
	i64 10078727084704864206, ; 186: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 142
	i64 10092835686693276772, ; 187: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 70
	i64 10106207375072889257, ; 188: Microsoft.AspNetCore.SignalR => 0x8c40761009a709a9 => 50
	i64 10143853363526200146, ; 189: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10226498071391929720, ; 190: Microsoft.Extensions.Features => 0x8debd1d049888578 => 63
	i64 10229024438826829339, ; 191: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 92
	i64 10243523786148452761, ; 192: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 42
	i64 10364469296367737616, ; 193: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 149
	i64 10390244938473477758, ; 194: System.Net.WebSockets.WebSocketProtocol.dll => 0x903190b8bf03167e => 80
	i64 10406448008575299332, ; 195: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 111
	i64 10430153318873392755, ; 196: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 90
	i64 10458986597687352396, ; 197: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 49
	i64 10506226065143327199, ; 198: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10785150219063592792, ; 199: System.Net.Primitives => 0x95ac8cfb68830758 => 137
	i64 11002576679268595294, ; 200: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 66
	i64 11009005086950030778, ; 201: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 72
	i64 11050168729868392624, ; 202: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 47
	i64 11103970607964515343, ; 203: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 204: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 107
	i64 11220793807500858938, ; 205: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 206: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 68
	i64 11340910727871153756, ; 207: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 91
	i64 11485890710487134646, ; 208: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 151
	i64 11513602507638267977, ; 209: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 78
	i64 11518296021396496455, ; 210: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 211: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 107
	i64 11530571088791430846, ; 212: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 65
	i64 11597940890313164233, ; 213: netstandard => 0xa0f429ca8d1805c9 => 168
	i64 11705530742807338875, ; 214: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 12102847907131387746, ; 215: System.Buffers => 0xa7f5f40c43256f62 => 114
	i64 12145679461940342714, ; 216: System.Text.Json => 0xa88e1f1ebcb62fba => 82
	i64 12201331334810686224, ; 217: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 155
	i64 12313367145828839434, ; 218: System.IO.Pipelines => 0xaae1de2e1c17f00a => 78
	i64 12441092376399691269, ; 219: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 35
	i64 12451044538927396471, ; 220: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 94
	i64 12466513435562512481, ; 221: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 99
	i64 12475113361194491050, ; 222: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 223: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 124
	i64 12538491095302438457, ; 224: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 87
	i64 12550732019250633519, ; 225: System.IO.Compression => 0xae2d28465e8e1b2f => 129
	i64 12681088699309157496, ; 226: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 227: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 88
	i64 12708922737231849740, ; 228: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 160
	i64 12823819093633476069, ; 229: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 230: System.IO.Pipes => 0xb21ff0d5d6c0740f => 130
	i64 12843321153144804894, ; 231: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 69
	i64 12859557719246324186, ; 232: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 141
	i64 13068258254871114833, ; 233: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 154
	i64 13221551921002590604, ; 234: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 235: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13295219713260136977, ; 236: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 44
	i64 13308002692117796025, ; 237: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 49
	i64 13343850469010654401, ; 238: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 171
	i64 13381594904270902445, ; 239: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13404984788036896679, ; 240: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 42
	i64 13428779960367410341, ; 241: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 52
	i64 13465488254036897740, ; 242: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 110
	i64 13467053111158216594, ; 243: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 244: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 245: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13550417756503177631, ; 246: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 64
	i64 13572454107664307259, ; 247: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 104
	i64 13717397318615465333, ; 248: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 119
	i64 13755568601956062840, ; 249: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 250: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 251: System.Console.dll => 0xc0a5f3cade5c6774 => 122
	i64 13921917134693230900, ; 252: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 57
	i64 13959074834287824816, ; 253: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 94
	i64 14100563506285742564, ; 254: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 255: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 87
	i64 14125464355221830302, ; 256: System.Threading.dll => 0xc407bafdbc707a9e => 164
	i64 14254574811015963973, ; 257: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 160
	i64 14461014870687870182, ; 258: System.Net.Requests.dll => 0xc8afd8683afdece6 => 138
	i64 14464374589798375073, ; 259: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 260: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 261: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 81
	i64 14604329626201521481, ; 262: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 51
	i64 14622043554576106986, ; 263: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 154
	i64 14669215534098758659, ; 264: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 61
	i64 14705122255218365489, ; 265: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 266: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14809184851036126845, ; 267: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 52
	i64 14832630590065248058, ; 268: System.Security.Claims => 0xcdd816ef5d6e873a => 157
	i64 14852515768018889994, ; 269: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 91
	i64 14892012299694389861, ; 270: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 271: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 272: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 62
	i64 14984936317414011727, ; 273: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 141
	i64 14987728460634540364, ; 274: System.IO.Compression.dll => 0xcfff1ba06622494c => 129
	i64 15015154896917945444, ; 275: System.Net.Security.dll => 0xd0608bd33642dc64 => 139
	i64 15076659072870671916, ; 276: System.ObjectModel.dll => 0xd13b0d8c1620662c => 145
	i64 15111608613780139878, ; 277: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 278: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 128
	i64 15133485256822086103, ; 279: System.Linq.dll => 0xd204f0a9127dd9d7 => 132
	i64 15227001540531775957, ; 280: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 60
	i64 15370334346939861994, ; 281: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 90
	i64 15391712275433856905, ; 282: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 62
	i64 15446039513167199741, ; 283: Microsoft.Bcl.TimeProvider.dll => 0xd65b5b19c0fa7dfd => 58
	i64 15527772828719725935, ; 284: System.Console => 0xd77dbb1e38cd3d6f => 122
	i64 15536481058354060254, ; 285: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 286: System.Net.Sockets => 0xd7e790fe7a6dc536 => 140
	i64 15565247197164990907, ; 287: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 46
	i64 15582737692548360875, ; 288: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 98
	i64 15592226634512578529, ; 289: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 36
	i64 15609085926864131306, ; 290: System.dll => 0xd89e9cf3334914ea => 167
	i64 15661133872274321916, ; 291: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 166
	i64 15664356999916475676, ; 292: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 293: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 294: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 295: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 83
	i64 15852824340364052161, ; 296: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 47
	i64 15963349826457351533, ; 297: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 162
	i64 15982072519490392252, ; 298: Microsoft.AspNetCore.WebSockets.dll => 0xddcbba47a2c1d0bc => 56
	i64 16018552496348375205, ; 299: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 136
	i64 16046481083542319511, ; 300: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 67
	i64 16154507427712707110, ; 301: System => 0xe03056ea4e39aa26 => 167
	i64 16156430004425724367, ; 302: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 44
	i64 16219561732052121626, ; 303: System.Net.Security => 0xe1177575db7c781a => 139
	i64 16288847719894691167, ; 304: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 305: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 66
	i64 16343918515847859304, ; 306: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 63
	i64 16454459195343277943, ; 307: System.Net.NetworkInformation => 0xe459fb756d988f77 => 136
	i64 16605226748660468415, ; 308: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 53
	i64 16649148416072044166, ; 309: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 74
	i64 16677317093839702854, ; 310: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 103
	i64 16856067890322379635, ; 311: System.Data.Common.dll => 0xe9ecc87060889373 => 123
	i64 16890310621557459193, ; 312: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 161
	i64 16942731696432749159, ; 313: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 314: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 101
	i64 17008137082415910100, ; 315: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 116
	i64 17008757876794951740, ; 316: Microsoft.Bcl.TimeProvider => 0xec0b3f2c34fd883c => 58
	i64 17031351772568316411, ; 317: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 100
	i64 17062143951396181894, ; 318: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 119
	i64 17089008752050867324, ; 319: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17118171214553292978, ; 320: System.Threading.Channels => 0xed8ff6060fc420b2 => 83
	i64 17126545051278881272, ; 321: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 75
	i64 17230721278011714856, ; 322: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 147
	i64 17260702271250283638, ; 323: System.Data.Common => 0xef8a5543bba6bc76 => 123
	i64 17338386382517543202, ; 324: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 142
	i64 17342750010158924305, ; 325: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 326: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17509662556995089465, ; 327: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 143
	i64 17514990004910432069, ; 328: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17571845317586269034, ; 329: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 38
	i64 17623389608345532001, ; 330: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17636563193350668017, ; 331: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 45
	i64 17702523067201099846, ; 332: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 333: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 99
	i64 17710060891934109755, ; 334: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 97
	i64 17712670374920797664, ; 335: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 151
	i64 17777860260071588075, ; 336: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 153
	i64 17838668724098252521, ; 337: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 114
	i64 17911643751311784505, ; 338: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 75
	i64 18025913125965088385, ; 339: System.Threading => 0xfa28e87b91334681 => 164
	i64 18099568558057551825, ; 340: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 341: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 100
	i64 18146411883821974900, ; 342: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 127
	i64 18245806341561545090, ; 343: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 115
	i64 18305135509493619199, ; 344: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 102
	i64 18324163916253801303 ; 345: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [346 x i32] [
	i32 69, ; 0
	i32 172, ; 1
	i32 73, ; 2
	i32 43, ; 3
	i32 131, ; 4
	i32 88, ; 5
	i32 105, ; 6
	i32 67, ; 7
	i32 7, ; 8
	i32 163, ; 9
	i32 121, ; 10
	i32 10, ; 11
	i32 93, ; 12
	i32 79, ; 13
	i32 109, ; 14
	i32 18, ; 15
	i32 126, ; 16
	i32 112, ; 17
	i32 101, ; 18
	i32 137, ; 19
	i32 70, ; 20
	i32 171, ; 21
	i32 163, ; 22
	i32 16, ; 23
	i32 86, ; 24
	i32 98, ; 25
	i32 80, ; 26
	i32 76, ; 27
	i32 133, ; 28
	i32 146, ; 29
	i32 85, ; 30
	i32 6, ; 31
	i32 105, ; 32
	i32 125, ; 33
	i32 28, ; 34
	i32 71, ; 35
	i32 28, ; 36
	i32 158, ; 37
	i32 97, ; 38
	i32 2, ; 39
	i32 20, ; 40
	i32 162, ; 41
	i32 125, ; 42
	i32 76, ; 43
	i32 93, ; 44
	i32 115, ; 45
	i32 24, ; 46
	i32 96, ; 47
	i32 81, ; 48
	i32 89, ; 49
	i32 156, ; 50
	i32 84, ; 51
	i32 27, ; 52
	i32 135, ; 53
	i32 61, ; 54
	i32 2, ; 55
	i32 143, ; 56
	i32 7, ; 57
	i32 109, ; 58
	i32 37, ; 59
	i32 36, ; 60
	i32 95, ; 61
	i32 144, ; 62
	i32 153, ; 63
	i32 140, ; 64
	i32 111, ; 65
	i32 64, ; 66
	i32 73, ; 67
	i32 59, ; 68
	i32 106, ; 69
	i32 169, ; 70
	i32 22, ; 71
	i32 156, ; 72
	i32 60, ; 73
	i32 166, ; 74
	i32 59, ; 75
	i32 168, ; 76
	i32 104, ; 77
	i32 53, ; 78
	i32 79, ; 79
	i32 65, ; 80
	i32 71, ; 81
	i32 138, ; 82
	i32 133, ; 83
	i32 155, ; 84
	i32 148, ; 85
	i32 33, ; 86
	i32 121, ; 87
	i32 157, ; 88
	i32 131, ; 89
	i32 120, ; 90
	i32 35, ; 91
	i32 46, ; 92
	i32 39, ; 93
	i32 150, ; 94
	i32 30, ; 95
	i32 130, ; 96
	i32 150, ; 97
	i32 0, ; 98
	i32 84, ; 99
	i32 106, ; 100
	i32 126, ; 101
	i32 135, ; 102
	i32 56, ; 103
	i32 152, ; 104
	i32 117, ; 105
	i32 57, ; 106
	i32 41, ; 107
	i32 117, ; 108
	i32 152, ; 109
	i32 26, ; 110
	i32 29, ; 111
	i32 128, ; 112
	i32 159, ; 113
	i32 48, ; 114
	i32 158, ; 115
	i32 108, ; 116
	i32 127, ; 117
	i32 45, ; 118
	i32 51, ; 119
	i32 23, ; 120
	i32 54, ; 121
	i32 23, ; 122
	i32 82, ; 123
	i32 149, ; 124
	i32 34, ; 125
	i32 96, ; 126
	i32 11, ; 127
	i32 92, ; 128
	i32 68, ; 129
	i32 19, ; 130
	i32 22, ; 131
	i32 38, ; 132
	i32 124, ; 133
	i32 165, ; 134
	i32 43, ; 135
	i32 144, ; 136
	i32 40, ; 137
	i32 55, ; 138
	i32 147, ; 139
	i32 26, ; 140
	i32 132, ; 141
	i32 41, ; 142
	i32 120, ; 143
	i32 165, ; 144
	i32 145, ; 145
	i32 134, ; 146
	i32 17, ; 147
	i32 169, ; 148
	i32 113, ; 149
	i32 110, ; 150
	i32 37, ; 151
	i32 86, ; 152
	i32 118, ; 153
	i32 95, ; 154
	i32 77, ; 155
	i32 170, ; 156
	i32 118, ; 157
	i32 55, ; 158
	i32 74, ; 159
	i32 159, ; 160
	i32 103, ; 161
	i32 146, ; 162
	i32 40, ; 163
	i32 21, ; 164
	i32 170, ; 165
	i32 113, ; 166
	i32 102, ; 167
	i32 54, ; 168
	i32 21, ; 169
	i32 77, ; 170
	i32 31, ; 171
	i32 50, ; 172
	i32 112, ; 173
	i32 108, ; 174
	i32 85, ; 175
	i32 39, ; 176
	i32 161, ; 177
	i32 89, ; 178
	i32 116, ; 179
	i32 172, ; 180
	i32 48, ; 181
	i32 72, ; 182
	i32 6, ; 183
	i32 134, ; 184
	i32 148, ; 185
	i32 142, ; 186
	i32 70, ; 187
	i32 50, ; 188
	i32 3, ; 189
	i32 63, ; 190
	i32 92, ; 191
	i32 42, ; 192
	i32 149, ; 193
	i32 80, ; 194
	i32 111, ; 195
	i32 90, ; 196
	i32 49, ; 197
	i32 1, ; 198
	i32 137, ; 199
	i32 66, ; 200
	i32 72, ; 201
	i32 47, ; 202
	i32 12, ; 203
	i32 107, ; 204
	i32 15, ; 205
	i32 68, ; 206
	i32 91, ; 207
	i32 151, ; 208
	i32 78, ; 209
	i32 13, ; 210
	i32 107, ; 211
	i32 65, ; 212
	i32 168, ; 213
	i32 9, ; 214
	i32 114, ; 215
	i32 82, ; 216
	i32 155, ; 217
	i32 78, ; 218
	i32 35, ; 219
	i32 94, ; 220
	i32 99, ; 221
	i32 34, ; 222
	i32 124, ; 223
	i32 87, ; 224
	i32 129, ; 225
	i32 14, ; 226
	i32 88, ; 227
	i32 160, ; 228
	i32 27, ; 229
	i32 130, ; 230
	i32 69, ; 231
	i32 141, ; 232
	i32 154, ; 233
	i32 1, ; 234
	i32 15, ; 235
	i32 44, ; 236
	i32 49, ; 237
	i32 171, ; 238
	i32 9, ; 239
	i32 42, ; 240
	i32 52, ; 241
	i32 110, ; 242
	i32 29, ; 243
	i32 30, ; 244
	i32 13, ; 245
	i32 64, ; 246
	i32 104, ; 247
	i32 119, ; 248
	i32 8, ; 249
	i32 11, ; 250
	i32 122, ; 251
	i32 57, ; 252
	i32 94, ; 253
	i32 3, ; 254
	i32 87, ; 255
	i32 164, ; 256
	i32 160, ; 257
	i32 138, ; 258
	i32 24, ; 259
	i32 5, ; 260
	i32 81, ; 261
	i32 51, ; 262
	i32 154, ; 263
	i32 61, ; 264
	i32 16, ; 265
	i32 32, ; 266
	i32 52, ; 267
	i32 157, ; 268
	i32 91, ; 269
	i32 33, ; 270
	i32 0, ; 271
	i32 62, ; 272
	i32 141, ; 273
	i32 129, ; 274
	i32 139, ; 275
	i32 145, ; 276
	i32 17, ; 277
	i32 128, ; 278
	i32 132, ; 279
	i32 60, ; 280
	i32 90, ; 281
	i32 62, ; 282
	i32 58, ; 283
	i32 122, ; 284
	i32 4, ; 285
	i32 140, ; 286
	i32 46, ; 287
	i32 98, ; 288
	i32 36, ; 289
	i32 167, ; 290
	i32 166, ; 291
	i32 4, ; 292
	i32 12, ; 293
	i32 5, ; 294
	i32 83, ; 295
	i32 47, ; 296
	i32 162, ; 297
	i32 56, ; 298
	i32 136, ; 299
	i32 67, ; 300
	i32 167, ; 301
	i32 44, ; 302
	i32 139, ; 303
	i32 18, ; 304
	i32 66, ; 305
	i32 63, ; 306
	i32 136, ; 307
	i32 53, ; 308
	i32 74, ; 309
	i32 103, ; 310
	i32 123, ; 311
	i32 161, ; 312
	i32 25, ; 313
	i32 101, ; 314
	i32 116, ; 315
	i32 58, ; 316
	i32 100, ; 317
	i32 119, ; 318
	i32 32, ; 319
	i32 83, ; 320
	i32 75, ; 321
	i32 147, ; 322
	i32 123, ; 323
	i32 142, ; 324
	i32 10, ; 325
	i32 25, ; 326
	i32 143, ; 327
	i32 8, ; 328
	i32 38, ; 329
	i32 20, ; 330
	i32 45, ; 331
	i32 31, ; 332
	i32 99, ; 333
	i32 97, ; 334
	i32 151, ; 335
	i32 153, ; 336
	i32 114, ; 337
	i32 75, ; 338
	i32 164, ; 339
	i32 19, ; 340
	i32 100, ; 341
	i32 127, ; 342
	i32 115, ; 343
	i32 102, ; 344
	i32 14 ; 345
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
