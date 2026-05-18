; ModuleID = 'compressed_assemblies.arm64-v8a.ll'
source_filename = "compressed_assemblies.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i1, ; bool loaded
	i32 ; uint32_t buffer_offset
}

@compressed_assembly_count = dso_local local_unnamed_addr constant i32 328, align 4

@compressed_assembly_descriptors = dso_local local_unnamed_addr global [328 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 286208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 0; uint32_t buffer_offset
	}, ; 0: Group
	%struct.CompressedAssemblyDescriptor {
		i32 120616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 286208; uint32_t buffer_offset
	}, ; 1: CommunityToolkit.Mvvm
	%struct.CompressedAssemblyDescriptor {
		i32 91648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 406824; uint32_t buffer_offset
	}, ; 2: Firebase
	%struct.CompressedAssemblyDescriptor {
		i32 174128, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 498472; uint32_t buffer_offset
	}, ; 3: GoogleGson
	%struct.CompressedAssemblyDescriptor {
		i32 488960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 672600; uint32_t buffer_offset
	}, ; 4: LiteDB
	%struct.CompressedAssemblyDescriptor {
		i32 45320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1161560; uint32_t buffer_offset
	}, ; 5: Microsoft.Extensions.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 28984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1206880; uint32_t buffer_offset
	}, ; 6: Microsoft.Extensions.Configuration.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 96008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1235864; uint32_t buffer_offset
	}, ; 7: Microsoft.Extensions.DependencyInjection
	%struct.CompressedAssemblyDescriptor {
		i32 66312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1331872; uint32_t buffer_offset
	}, ; 8: Microsoft.Extensions.DependencyInjection.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 31504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1398184; uint32_t buffer_offset
	}, ; 9: Microsoft.Extensions.Diagnostics.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 23864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1429688; uint32_t buffer_offset
	}, ; 10: Microsoft.Extensions.FileProviders.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 54536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1453552; uint32_t buffer_offset
	}, ; 11: Microsoft.Extensions.Hosting.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 52016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1508088; uint32_t buffer_offset
	}, ; 12: Microsoft.Extensions.Logging
	%struct.CompressedAssemblyDescriptor {
		i32 67344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1560104; uint32_t buffer_offset
	}, ; 13: Microsoft.Extensions.Logging.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 20240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1627448; uint32_t buffer_offset
	}, ; 14: Microsoft.Extensions.Logging.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 65848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1647688; uint32_t buffer_offset
	}, ; 15: Microsoft.Extensions.Options
	%struct.CompressedAssemblyDescriptor {
		i32 45328, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1713536; uint32_t buffer_offset
	}, ; 16: Microsoft.Extensions.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 1928504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1758864; uint32_t buffer_offset
	}, ; 17: Microsoft.Maui.Controls
	%struct.CompressedAssemblyDescriptor {
		i32 135432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3687368; uint32_t buffer_offset
	}, ; 18: Microsoft.Maui.Controls.Xaml
	%struct.CompressedAssemblyDescriptor {
		i32 862208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3822800; uint32_t buffer_offset
	}, ; 19: Microsoft.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 280848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4685008; uint32_t buffer_offset
	}, ; 20: Microsoft.Maui.Essentials
	%struct.CompressedAssemblyDescriptor {
		i32 208696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4965856; uint32_t buffer_offset
	}, ; 21: Microsoft.Maui.Graphics
	%struct.CompressedAssemblyDescriptor {
		i32 712464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5174552; uint32_t buffer_offset
	}, ; 22: Newtonsoft.Json
	%struct.CompressedAssemblyDescriptor {
		i32 1344080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5887016; uint32_t buffer_offset
	}, ; 23: System.Reactive
	%struct.CompressedAssemblyDescriptor {
		i32 1175552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7231096; uint32_t buffer_offset
	}, ; 24: Xamarin.Android.Glide
	%struct.CompressedAssemblyDescriptor {
		i32 15944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8406648; uint32_t buffer_offset
	}, ; 25: Xamarin.Android.Glide.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 25632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8422592; uint32_t buffer_offset
	}, ; 26: Xamarin.Android.Glide.DiskLruCache
	%struct.CompressedAssemblyDescriptor {
		i32 63032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8448224; uint32_t buffer_offset
	}, ; 27: Xamarin.Android.Glide.GifDecoder
	%struct.CompressedAssemblyDescriptor {
		i32 186880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8511256; uint32_t buffer_offset
	}, ; 28: Xamarin.AndroidX.Activity
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8698136; uint32_t buffer_offset
	}, ; 29: Xamarin.AndroidX.Activity.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 15912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8714064; uint32_t buffer_offset
	}, ; 30: Xamarin.AndroidX.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 38432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8729976; uint32_t buffer_offset
	}, ; 31: Xamarin.AndroidX.Annotation.Experimental
	%struct.CompressedAssemblyDescriptor {
		i32 215608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8768408; uint32_t buffer_offset
	}, ; 32: Xamarin.AndroidX.Annotation.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 1293312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8984016; uint32_t buffer_offset
	}, ; 33: Xamarin.AndroidX.AppCompat
	%struct.CompressedAssemblyDescriptor {
		i32 93184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10277328; uint32_t buffer_offset
	}, ; 34: Xamarin.AndroidX.AppCompat.AppCompatResources
	%struct.CompressedAssemblyDescriptor {
		i32 38984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10370512; uint32_t buffer_offset
	}, ; 35: Xamarin.AndroidX.Arch.Core.Common
	%struct.CompressedAssemblyDescriptor {
		i32 28192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10409496; uint32_t buffer_offset
	}, ; 36: Xamarin.AndroidX.Arch.Core.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 399360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10437688; uint32_t buffer_offset
	}, ; 37: Xamarin.AndroidX.Browser
	%struct.CompressedAssemblyDescriptor {
		i32 35400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10837048; uint32_t buffer_offset
	}, ; 38: Xamarin.AndroidX.CardView
	%struct.CompressedAssemblyDescriptor {
		i32 15944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10872448; uint32_t buffer_offset
	}, ; 39: Xamarin.AndroidX.Collection
	%struct.CompressedAssemblyDescriptor {
		i32 628768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10888392; uint32_t buffer_offset
	}, ; 40: Xamarin.AndroidX.Collection.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11517160; uint32_t buffer_offset
	}, ; 41: Xamarin.AndroidX.Collection.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 36424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11533064; uint32_t buffer_offset
	}, ; 42: Xamarin.AndroidX.Concurrent.Futures
	%struct.CompressedAssemblyDescriptor {
		i32 741888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11569488; uint32_t buffer_offset
	}, ; 43: Xamarin.AndroidX.ConstraintLayout
	%struct.CompressedAssemblyDescriptor {
		i32 1466936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12311376; uint32_t buffer_offset
	}, ; 44: Xamarin.AndroidX.ConstraintLayout.Core
	%struct.CompressedAssemblyDescriptor {
		i32 102400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13778312; uint32_t buffer_offset
	}, ; 45: Xamarin.AndroidX.CoordinatorLayout
	%struct.CompressedAssemblyDescriptor {
		i32 2224640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13880712; uint32_t buffer_offset
	}, ; 46: Xamarin.AndroidX.Core
	%struct.CompressedAssemblyDescriptor {
		i32 216608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16105352; uint32_t buffer_offset
	}, ; 47: Xamarin.AndroidX.Core.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 20016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16321960; uint32_t buffer_offset
	}, ; 48: Xamarin.AndroidX.Core.ViewTree
	%struct.CompressedAssemblyDescriptor {
		i32 64040, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16341976; uint32_t buffer_offset
	}, ; 49: Xamarin.AndroidX.CursorAdapter
	%struct.CompressedAssemblyDescriptor {
		i32 74776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16406016; uint32_t buffer_offset
	}, ; 50: Xamarin.AndroidX.CustomView
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16480792; uint32_t buffer_offset
	}, ; 51: Xamarin.AndroidX.CustomView.PoolingContainer
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16496152; uint32_t buffer_offset
	}, ; 52: Xamarin.AndroidX.DrawerLayout
	%struct.CompressedAssemblyDescriptor {
		i32 62976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16554008; uint32_t buffer_offset
	}, ; 53: Xamarin.AndroidX.DynamicAnimation
	%struct.CompressedAssemblyDescriptor {
		i32 288816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16616984; uint32_t buffer_offset
	}, ; 54: Xamarin.AndroidX.Emoji2
	%struct.CompressedAssemblyDescriptor {
		i32 26144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16905800; uint32_t buffer_offset
	}, ; 55: Xamarin.AndroidX.Emoji2.ViewsHelper
	%struct.CompressedAssemblyDescriptor {
		i32 73288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16931944; uint32_t buffer_offset
	}, ; 56: Xamarin.AndroidX.ExifInterface
	%struct.CompressedAssemblyDescriptor {
		i32 375808, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17005232; uint32_t buffer_offset
	}, ; 57: Xamarin.AndroidX.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 27192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17381040; uint32_t buffer_offset
	}, ; 58: Xamarin.AndroidX.Fragment.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 26152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17408232; uint32_t buffer_offset
	}, ; 59: Xamarin.AndroidX.Interpolator
	%struct.CompressedAssemblyDescriptor {
		i32 16952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17434384; uint32_t buffer_offset
	}, ; 60: Xamarin.AndroidX.Lifecycle.Common
	%struct.CompressedAssemblyDescriptor {
		i32 71200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17451336; uint32_t buffer_offset
	}, ; 61: Xamarin.AndroidX.Lifecycle.Common.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 39464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17522536; uint32_t buffer_offset
	}, ; 62: Xamarin.AndroidX.Lifecycle.LiveData
	%struct.CompressedAssemblyDescriptor {
		i32 36936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17562000; uint32_t buffer_offset
	}, ; 63: Xamarin.AndroidX.Lifecycle.LiveData.Core
	%struct.CompressedAssemblyDescriptor {
		i32 16440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17598936; uint32_t buffer_offset
	}, ; 64: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 22584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17615376; uint32_t buffer_offset
	}, ; 65: Xamarin.AndroidX.Lifecycle.Process
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17637960; uint32_t buffer_offset
	}, ; 66: Xamarin.AndroidX.Lifecycle.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17653376; uint32_t buffer_offset
	}, ; 67: Xamarin.AndroidX.Lifecycle.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17697408; uint32_t buffer_offset
	}, ; 68: Xamarin.AndroidX.Lifecycle.Runtime.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 16456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17713312; uint32_t buffer_offset
	}, ; 69: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17729768; uint32_t buffer_offset
	}, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel
	%struct.CompressedAssemblyDescriptor {
		i32 88632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17746696; uint32_t buffer_offset
	}, ; 71: Xamarin.AndroidX.Lifecycle.ViewModel.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17835328; uint32_t buffer_offset
	}, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17851768; uint32_t buffer_offset
	}, ; 73: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
	%struct.CompressedAssemblyDescriptor {
		i32 48200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17867696; uint32_t buffer_offset
	}, ; 74: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 61440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17915896; uint32_t buffer_offset
	}, ; 75: Xamarin.AndroidX.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17977336; uint32_t buffer_offset
	}, ; 76: Xamarin.AndroidX.Navigation.Common
	%struct.CompressedAssemblyDescriptor {
		i32 233016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17993240; uint32_t buffer_offset
	}, ; 77: Xamarin.AndroidX.Navigation.Common.Android
	%struct.CompressedAssemblyDescriptor {
		i32 60960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18226256; uint32_t buffer_offset
	}, ; 78: Xamarin.AndroidX.Navigation.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18287216; uint32_t buffer_offset
	}, ; 79: Xamarin.AndroidX.Navigation.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 114688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18303144; uint32_t buffer_offset
	}, ; 80: Xamarin.AndroidX.Navigation.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 46592, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18417832; uint32_t buffer_offset
	}, ; 81: Xamarin.AndroidX.Navigation.UI
	%struct.CompressedAssemblyDescriptor {
		i32 52784, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18464424; uint32_t buffer_offset
	}, ; 82: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
	%struct.CompressedAssemblyDescriptor {
		i32 660992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18517208; uint32_t buffer_offset
	}, ; 83: Xamarin.AndroidX.RecyclerView
	%struct.CompressedAssemblyDescriptor {
		i32 30792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19178200; uint32_t buffer_offset
	}, ; 84: Xamarin.AndroidX.ResourceInspection.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 15912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19208992; uint32_t buffer_offset
	}, ; 85: Xamarin.AndroidX.SavedState
	%struct.CompressedAssemblyDescriptor {
		i32 91688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19224904; uint32_t buffer_offset
	}, ; 86: Xamarin.AndroidX.SavedState.SavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19316592; uint32_t buffer_offset
	}, ; 87: Xamarin.AndroidX.SavedState.SavedState.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 46648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19333008; uint32_t buffer_offset
	}, ; 88: Xamarin.AndroidX.Security.SecurityCrypto
	%struct.CompressedAssemblyDescriptor {
		i32 39936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19379656; uint32_t buffer_offset
	}, ; 89: Xamarin.AndroidX.SlidingPaneLayout
	%struct.CompressedAssemblyDescriptor {
		i32 31304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19419592; uint32_t buffer_offset
	}, ; 90: Xamarin.AndroidX.Startup.StartupRuntime
	%struct.CompressedAssemblyDescriptor {
		i32 67584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19450896; uint32_t buffer_offset
	}, ; 91: Xamarin.AndroidX.SwipeRefreshLayout
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19518480; uint32_t buffer_offset
	}, ; 92: Xamarin.AndroidX.Tracing.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 24104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19533872; uint32_t buffer_offset
	}, ; 93: Xamarin.AndroidX.Tracing.Tracing.Android
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19557976; uint32_t buffer_offset
	}, ; 94: Xamarin.AndroidX.Transition
	%struct.CompressedAssemblyDescriptor {
		i32 36384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19733080; uint32_t buffer_offset
	}, ; 95: Xamarin.AndroidX.VectorDrawable
	%struct.CompressedAssemblyDescriptor {
		i32 49184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19769464; uint32_t buffer_offset
	}, ; 96: Xamarin.AndroidX.VectorDrawable.Animated
	%struct.CompressedAssemblyDescriptor {
		i32 122936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19818648; uint32_t buffer_offset
	}, ; 97: Xamarin.AndroidX.VersionedParcelable
	%struct.CompressedAssemblyDescriptor {
		i32 86016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19941584; uint32_t buffer_offset
	}, ; 98: Xamarin.AndroidX.ViewPager
	%struct.CompressedAssemblyDescriptor {
		i32 64512, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20027600; uint32_t buffer_offset
	}, ; 99: Xamarin.AndroidX.ViewPager2
	%struct.CompressedAssemblyDescriptor {
		i32 271904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20092112; uint32_t buffer_offset
	}, ; 100: Xamarin.AndroidX.Window
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20364016; uint32_t buffer_offset
	}, ; 101: Xamarin.AndroidX.Window.WindowCore
	%struct.CompressedAssemblyDescriptor {
		i32 35360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20379920; uint32_t buffer_offset
	}, ; 102: Xamarin.AndroidX.Window.WindowCore.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 2773504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20415280; uint32_t buffer_offset
	}, ; 103: Xamarin.Google.Android.Material
	%struct.CompressedAssemblyDescriptor {
		i32 102432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 23188784; uint32_t buffer_offset
	}, ; 104: Jsr305Binding
	%struct.CompressedAssemblyDescriptor {
		i32 5886976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 23291216; uint32_t buffer_offset
	}, ; 105: Xamarin.Google.Crypto.Tink.Android
	%struct.CompressedAssemblyDescriptor {
		i32 101944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29178192; uint32_t buffer_offset
	}, ; 106: Xamarin.Google.ErrorProne.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 27192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29280136; uint32_t buffer_offset
	}, ; 107: Xamarin.Google.Guava.ListenableFuture
	%struct.CompressedAssemblyDescriptor {
		i32 165944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29307328; uint32_t buffer_offset
	}, ; 108: Xamarin.Jetbrains.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 28728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29473272; uint32_t buffer_offset
	}, ; 109: Xamarin.JSpecify
	%struct.CompressedAssemblyDescriptor {
		i32 2375680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29502000; uint32_t buffer_offset
	}, ; 110: Xamarin.Kotlin.StdLib
	%struct.CompressedAssemblyDescriptor {
		i32 27680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31877680; uint32_t buffer_offset
	}, ; 111: Xamarin.KotlinX.Coroutines.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31905360; uint32_t buffer_offset
	}, ; 112: Xamarin.KotlinX.Coroutines.Core
	%struct.CompressedAssemblyDescriptor {
		i32 568880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31921792; uint32_t buffer_offset
	}, ; 113: Xamarin.KotlinX.Coroutines.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32490672; uint32_t buffer_offset
	}, ; 114: Xamarin.KotlinX.Serialization.Core
	%struct.CompressedAssemblyDescriptor {
		i32 312376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32507088; uint32_t buffer_offset
	}, ; 115: Xamarin.KotlinX.Serialization.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32819464; uint32_t buffer_offset
	}, ; 116: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32835088; uint32_t buffer_offset
	}, ; 117: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32850720; uint32_t buffer_offset
	}, ; 118: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32866344; uint32_t buffer_offset
	}, ; 119: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32881968; uint32_t buffer_offset
	}, ; 120: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32897600; uint32_t buffer_offset
	}, ; 121: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32913232; uint32_t buffer_offset
	}, ; 122: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32928864; uint32_t buffer_offset
	}, ; 123: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32944488; uint32_t buffer_offset
	}, ; 124: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32960112; uint32_t buffer_offset
	}, ; 125: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32975744; uint32_t buffer_offset
	}, ; 126: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32991368; uint32_t buffer_offset
	}, ; 127: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33006992; uint32_t buffer_offset
	}, ; 128: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33022616; uint32_t buffer_offset
	}, ; 129: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33038240; uint32_t buffer_offset
	}, ; 130: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33053864; uint32_t buffer_offset
	}, ; 131: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33069488; uint32_t buffer_offset
	}, ; 132: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33085112; uint32_t buffer_offset
	}, ; 133: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33100736; uint32_t buffer_offset
	}, ; 134: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33116368; uint32_t buffer_offset
	}, ; 135: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33132032; uint32_t buffer_offset
	}, ; 136: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33147656; uint32_t buffer_offset
	}, ; 137: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33163288; uint32_t buffer_offset
	}, ; 138: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33178920; uint32_t buffer_offset
	}, ; 139: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33194552; uint32_t buffer_offset
	}, ; 140: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33210224; uint32_t buffer_offset
	}, ; 141: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33225856; uint32_t buffer_offset
	}, ; 142: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33241520; uint32_t buffer_offset
	}, ; 143: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33257144; uint32_t buffer_offset
	}, ; 144: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33272768; uint32_t buffer_offset
	}, ; 145: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33288392; uint32_t buffer_offset
	}, ; 146: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33304016; uint32_t buffer_offset
	}, ; 147: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33319680; uint32_t buffer_offset
	}, ; 148: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33335304; uint32_t buffer_offset
	}, ; 149: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 719360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33350936; uint32_t buffer_offset
	}, ; 150: _Microsoft.Android.Resource.Designer
	%struct.CompressedAssemblyDescriptor {
		i32 312072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34070296; uint32_t buffer_offset
	}, ; 151: Microsoft.CSharp
	%struct.CompressedAssemblyDescriptor {
		i32 429360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34382368; uint32_t buffer_offset
	}, ; 152: Microsoft.VisualBasic.Core
	%struct.CompressedAssemblyDescriptor {
		i32 17720, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34811728; uint32_t buffer_offset
	}, ; 153: Microsoft.VisualBasic
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34829448; uint32_t buffer_offset
	}, ; 154: Microsoft.Win32.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 33584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34845624; uint32_t buffer_offset
	}, ; 155: Microsoft.Win32.Registry
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34879208; uint32_t buffer_offset
	}, ; 156: System.AppContext
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34894872; uint32_t buffer_offset
	}, ; 157: System.Buffers
	%struct.CompressedAssemblyDescriptor {
		i32 89352, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34910496; uint32_t buffer_offset
	}, ; 158: System.Collections.Concurrent
	%struct.CompressedAssemblyDescriptor {
		i32 251656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34999848; uint32_t buffer_offset
	}, ; 159: System.Collections.Immutable
	%struct.CompressedAssemblyDescriptor {
		i32 48400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35251504; uint32_t buffer_offset
	}, ; 160: System.Collections.NonGeneric
	%struct.CompressedAssemblyDescriptor {
		i32 48392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35299904; uint32_t buffer_offset
	}, ; 161: System.Collections.Specialized
	%struct.CompressedAssemblyDescriptor {
		i32 113456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35348296; uint32_t buffer_offset
	}, ; 162: System.Collections
	%struct.CompressedAssemblyDescriptor {
		i32 103184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35461752; uint32_t buffer_offset
	}, ; 163: System.ComponentModel.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35564936; uint32_t buffer_offset
	}, ; 164: System.ComponentModel.DataAnnotations
	%struct.CompressedAssemblyDescriptor {
		i32 26896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35582096; uint32_t buffer_offset
	}, ; 165: System.ComponentModel.EventBasedAsync
	%struct.CompressedAssemblyDescriptor {
		i32 42800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35608992; uint32_t buffer_offset
	}, ; 166: System.ComponentModel.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 317232, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35651792; uint32_t buffer_offset
	}, ; 167: System.ComponentModel.TypeConverter
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35969024; uint32_t buffer_offset
	}, ; 168: System.ComponentModel
	%struct.CompressedAssemblyDescriptor {
		i32 19768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35985672; uint32_t buffer_offset
	}, ; 169: System.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 50952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36005440; uint32_t buffer_offset
	}, ; 170: System.Console
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36056392; uint32_t buffer_offset
	}, ; 171: System.Core
	%struct.CompressedAssemblyDescriptor {
		i32 1018632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36080208; uint32_t buffer_offset
	}, ; 172: System.Data.Common
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37098840; uint32_t buffer_offset
	}, ; 173: System.Data.DataSetExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 25864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37114976; uint32_t buffer_offset
	}, ; 174: System.Data
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37140840; uint32_t buffer_offset
	}, ; 175: System.Diagnostics.Contracts
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37157488; uint32_t buffer_offset
	}, ; 176: System.Diagnostics.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 203016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37173624; uint32_t buffer_offset
	}, ; 177: System.Diagnostics.DiagnosticSource
	%struct.CompressedAssemblyDescriptor {
		i32 30008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37376640; uint32_t buffer_offset
	}, ; 178: System.Diagnostics.FileVersionInfo
	%struct.CompressedAssemblyDescriptor {
		i32 129288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37406648; uint32_t buffer_offset
	}, ; 179: System.Diagnostics.Process
	%struct.CompressedAssemblyDescriptor {
		i32 26376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37535936; uint32_t buffer_offset
	}, ; 180: System.Diagnostics.StackTrace
	%struct.CompressedAssemblyDescriptor {
		i32 32008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37562312; uint32_t buffer_offset
	}, ; 181: System.Diagnostics.TextWriterTraceListener
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37594320; uint32_t buffer_offset
	}, ; 182: System.Diagnostics.Tools
	%struct.CompressedAssemblyDescriptor {
		i32 59144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37609944; uint32_t buffer_offset
	}, ; 183: System.Diagnostics.TraceSource
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37669088; uint32_t buffer_offset
	}, ; 184: System.Diagnostics.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 65296, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37685736; uint32_t buffer_offset
	}, ; 185: System.Drawing.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 20792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37751032; uint32_t buffer_offset
	}, ; 186: System.Drawing
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37771824; uint32_t buffer_offset
	}, ; 187: System.Dynamic.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 97544, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37788472; uint32_t buffer_offset
	}, ; 188: System.Formats.Asn1
	%struct.CompressedAssemblyDescriptor {
		i32 121616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37886016; uint32_t buffer_offset
	}, ; 189: System.Formats.Tar
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38007632; uint32_t buffer_offset
	}, ; 190: System.Globalization.Calendars
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38023768; uint32_t buffer_offset
	}, ; 191: System.Globalization.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38039392; uint32_t buffer_offset
	}, ; 192: System.Globalization
	%struct.CompressedAssemblyDescriptor {
		i32 41736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38055528; uint32_t buffer_offset
	}, ; 193: System.IO.Compression.Brotli
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38097264; uint32_t buffer_offset
	}, ; 194: System.IO.Compression.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 54072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38112928; uint32_t buffer_offset
	}, ; 195: System.IO.Compression.ZipFile
	%struct.CompressedAssemblyDescriptor {
		i32 168200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38167000; uint32_t buffer_offset
	}, ; 196: System.IO.Compression
	%struct.CompressedAssemblyDescriptor {
		i32 32560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38335200; uint32_t buffer_offset
	}, ; 197: System.IO.FileSystem.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 51976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38367760; uint32_t buffer_offset
	}, ; 198: System.IO.FileSystem.DriveInfo
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38419736; uint32_t buffer_offset
	}, ; 199: System.IO.FileSystem.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 55560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38435408; uint32_t buffer_offset
	}, ; 200: System.IO.FileSystem.Watcher
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38490968; uint32_t buffer_offset
	}, ; 201: System.IO.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 43784, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38507104; uint32_t buffer_offset
	}, ; 202: System.IO.IsolatedStorage
	%struct.CompressedAssemblyDescriptor {
		i32 50448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38550888; uint32_t buffer_offset
	}, ; 203: System.IO.MemoryMappedFiles
	%struct.CompressedAssemblyDescriptor {
		i32 78600, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38601336; uint32_t buffer_offset
	}, ; 204: System.IO.Pipelines
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38679936; uint32_t buffer_offset
	}, ; 205: System.IO.Pipes.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 67848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38703752; uint32_t buffer_offset
	}, ; 206: System.IO.Pipes
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38771600; uint32_t buffer_offset
	}, ; 207: System.IO.UnmanagedMemoryStream
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38787736; uint32_t buffer_offset
	}, ; 208: System.IO
	%struct.CompressedAssemblyDescriptor {
		i32 456968, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38803872; uint32_t buffer_offset
	}, ; 209: System.Linq.AsyncEnumerable
	%struct.CompressedAssemblyDescriptor {
		i32 575752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39260840; uint32_t buffer_offset
	}, ; 210: System.Linq.Expressions
	%struct.CompressedAssemblyDescriptor {
		i32 223496, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39836592; uint32_t buffer_offset
	}, ; 211: System.Linq.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 79112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40060088; uint32_t buffer_offset
	}, ; 212: System.Linq.Queryable
	%struct.CompressedAssemblyDescriptor {
		i32 201528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40139200; uint32_t buffer_offset
	}, ; 213: System.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 56072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40340728; uint32_t buffer_offset
	}, ; 214: System.Memory
	%struct.CompressedAssemblyDescriptor {
		i32 56584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40396800; uint32_t buffer_offset
	}, ; 215: System.Net.Http.Json
	%struct.CompressedAssemblyDescriptor {
		i32 680752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40453384; uint32_t buffer_offset
	}, ; 216: System.Net.Http
	%struct.CompressedAssemblyDescriptor {
		i32 132872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41134136; uint32_t buffer_offset
	}, ; 217: System.Net.HttpListener
	%struct.CompressedAssemblyDescriptor {
		i32 175368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41267008; uint32_t buffer_offset
	}, ; 218: System.Net.Mail
	%struct.CompressedAssemblyDescriptor {
		i32 53040, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41442376; uint32_t buffer_offset
	}, ; 219: System.Net.NameResolution
	%struct.CompressedAssemblyDescriptor {
		i32 66824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41495416; uint32_t buffer_offset
	}, ; 220: System.Net.NetworkInformation
	%struct.CompressedAssemblyDescriptor {
		i32 56080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41562240; uint32_t buffer_offset
	}, ; 221: System.Net.Ping
	%struct.CompressedAssemblyDescriptor {
		i32 109368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41618320; uint32_t buffer_offset
	}, ; 222: System.Net.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 172344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41727688; uint32_t buffer_offset
	}, ; 223: System.Net.Quic
	%struct.CompressedAssemblyDescriptor {
		i32 162056, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41900032; uint32_t buffer_offset
	}, ; 224: System.Net.Requests
	%struct.CompressedAssemblyDescriptor {
		i32 255800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42062088; uint32_t buffer_offset
	}, ; 225: System.Net.Security
	%struct.CompressedAssemblyDescriptor {
		i32 41224, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42317888; uint32_t buffer_offset
	}, ; 226: System.Net.ServerSentEvents
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42359112; uint32_t buffer_offset
	}, ; 227: System.Net.ServicePoint
	%struct.CompressedAssemblyDescriptor {
		i32 238856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42374736; uint32_t buffer_offset
	}, ; 228: System.Net.Sockets
	%struct.CompressedAssemblyDescriptor {
		i32 70920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42613592; uint32_t buffer_offset
	}, ; 229: System.Net.WebClient
	%struct.CompressedAssemblyDescriptor {
		i32 33584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42684512; uint32_t buffer_offset
	}, ; 230: System.Net.WebHeaderCollection
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42718096; uint32_t buffer_offset
	}, ; 231: System.Net.WebProxy
	%struct.CompressedAssemblyDescriptor {
		i32 52016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42741912; uint32_t buffer_offset
	}, ; 232: System.Net.WebSockets.Client
	%struct.CompressedAssemblyDescriptor {
		i32 109320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42793928; uint32_t buffer_offset
	}, ; 233: System.Net.WebSockets
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42903248; uint32_t buffer_offset
	}, ; 234: System.Net
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42920920; uint32_t buffer_offset
	}, ; 235: System.Numerics.Vectors
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42937056; uint32_t buffer_offset
	}, ; 236: System.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 41736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42952720; uint32_t buffer_offset
	}, ; 237: System.ObjectModel
	%struct.CompressedAssemblyDescriptor {
		i32 859960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42994456; uint32_t buffer_offset
	}, ; 238: System.Private.DataContractSerialization
	%struct.CompressedAssemblyDescriptor {
		i32 106248, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 43854416; uint32_t buffer_offset
	}, ; 239: System.Private.Uri
	%struct.CompressedAssemblyDescriptor {
		i32 154424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 43960664; uint32_t buffer_offset
	}, ; 240: System.Private.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 3106568, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 44115088; uint32_t buffer_offset
	}, ; 241: System.Private.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 38704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47221656; uint32_t buffer_offset
	}, ; 242: System.Reflection.DispatchProxy
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47260360; uint32_t buffer_offset
	}, ; 243: System.Reflection.Emit.ILGeneration
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47276496; uint32_t buffer_offset
	}, ; 244: System.Reflection.Emit.Lightweight
	%struct.CompressedAssemblyDescriptor {
		i32 133944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47292632; uint32_t buffer_offset
	}, ; 245: System.Reflection.Emit
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47426576; uint32_t buffer_offset
	}, ; 246: System.Reflection.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 504072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47442200; uint32_t buffer_offset
	}, ; 247: System.Reflection.Metadata
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47946272; uint32_t buffer_offset
	}, ; 248: System.Reflection.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 24880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47962408; uint32_t buffer_offset
	}, ; 249: System.Reflection.TypeExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47987288; uint32_t buffer_offset
	}, ; 250: System.Reflection
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48003936; uint32_t buffer_offset
	}, ; 251: System.Resources.Reader
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48019560; uint32_t buffer_offset
	}, ; 252: System.Resources.ResourceManager
	%struct.CompressedAssemblyDescriptor {
		i32 27400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48035696; uint32_t buffer_offset
	}, ; 253: System.Resources.Writer
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48063096; uint32_t buffer_offset
	}, ; 254: System.Runtime.CompilerServices.Unsafe
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48078720; uint32_t buffer_offset
	}, ; 255: System.Runtime.CompilerServices.VisualC
	%struct.CompressedAssemblyDescriptor {
		i32 18184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48096392; uint32_t buffer_offset
	}, ; 256: System.Runtime.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48114576; uint32_t buffer_offset
	}, ; 257: System.Runtime.Handles
	%struct.CompressedAssemblyDescriptor {
		i32 38704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48130760; uint32_t buffer_offset
	}, ; 258: System.Runtime.InteropServices.JavaScript
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48169464; uint32_t buffer_offset
	}, ; 259: System.Runtime.InteropServices.RuntimeInformation
	%struct.CompressedAssemblyDescriptor {
		i32 65288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48185096; uint32_t buffer_offset
	}, ; 260: System.Runtime.InteropServices
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48250384; uint32_t buffer_offset
	}, ; 261: System.Runtime.Intrinsics
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48268056; uint32_t buffer_offset
	}, ; 262: System.Runtime.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 145672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48284192; uint32_t buffer_offset
	}, ; 263: System.Runtime.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 66360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48429864; uint32_t buffer_offset
	}, ; 264: System.Runtime.Serialization.Formatters
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48496224; uint32_t buffer_offset
	}, ; 265: System.Runtime.Serialization.Json
	%struct.CompressedAssemblyDescriptor {
		i32 23864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48512400; uint32_t buffer_offset
	}, ; 266: System.Runtime.Serialization.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48536264; uint32_t buffer_offset
	}, ; 267: System.Runtime.Serialization.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48553432; uint32_t buffer_offset
	}, ; 268: System.Runtime.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 45368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48571104; uint32_t buffer_offset
	}, ; 269: System.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 58632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48616472; uint32_t buffer_offset
	}, ; 270: System.Security.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 55560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48675104; uint32_t buffer_offset
	}, ; 271: System.Security.Claims
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48730664; uint32_t buffer_offset
	}, ; 272: System.Security.Cryptography.Algorithms
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48748336; uint32_t buffer_offset
	}, ; 273: System.Security.Cryptography.Cng
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48764984; uint32_t buffer_offset
	}, ; 274: System.Security.Cryptography.Csp
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48781632; uint32_t buffer_offset
	}, ; 275: System.Security.Cryptography.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48797768; uint32_t buffer_offset
	}, ; 276: System.Security.Cryptography.OpenSsl
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48813944; uint32_t buffer_offset
	}, ; 277: System.Security.Cryptography.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48830120; uint32_t buffer_offset
	}, ; 278: System.Security.Cryptography.X509Certificates
	%struct.CompressedAssemblyDescriptor {
		i32 853304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48847280; uint32_t buffer_offset
	}, ; 279: System.Security.Cryptography
	%struct.CompressedAssemblyDescriptor {
		i32 38152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49700584; uint32_t buffer_offset
	}, ; 280: System.Security.Principal.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49738736; uint32_t buffer_offset
	}, ; 281: System.Security.Principal
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49754368; uint32_t buffer_offset
	}, ; 282: System.Security.SecureString
	%struct.CompressedAssemblyDescriptor {
		i32 18744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49770504; uint32_t buffer_offset
	}, ; 283: System.Security
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49789248; uint32_t buffer_offset
	}, ; 284: System.ServiceModel.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49806408; uint32_t buffer_offset
	}, ; 285: System.ServiceProcess
	%struct.CompressedAssemblyDescriptor {
		i32 743216, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49822584; uint32_t buffer_offset
	}, ; 286: System.Text.Encoding.CodePages
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50565800; uint32_t buffer_offset
	}, ; 287: System.Text.Encoding.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50581936; uint32_t buffer_offset
	}, ; 288: System.Text.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 66312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50598112; uint32_t buffer_offset
	}, ; 289: System.Text.Encodings.Web
	%struct.CompressedAssemblyDescriptor {
		i32 649520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50664424; uint32_t buffer_offset
	}, ; 290: System.Text.Json
	%struct.CompressedAssemblyDescriptor {
		i32 385288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51313944; uint32_t buffer_offset
	}, ; 291: System.Text.RegularExpressions
	%struct.CompressedAssemblyDescriptor {
		i32 34104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51699232; uint32_t buffer_offset
	}, ; 292: System.Threading.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 66832, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51733336; uint32_t buffer_offset
	}, ; 293: System.Threading.Channels
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51800168; uint32_t buffer_offset
	}, ; 294: System.Threading.Overlapped
	%struct.CompressedAssemblyDescriptor {
		i32 186120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51816304; uint32_t buffer_offset
	}, ; 295: System.Threading.Tasks.Dataflow
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52002424; uint32_t buffer_offset
	}, ; 296: System.Threading.Tasks.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 61752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52018560; uint32_t buffer_offset
	}, ; 297: System.Threading.Tasks.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 17200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52080312; uint32_t buffer_offset
	}, ; 298: System.Threading.Tasks
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52097512; uint32_t buffer_offset
	}, ; 299: System.Threading.Thread
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52113688; uint32_t buffer_offset
	}, ; 300: System.Threading.ThreadPool
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52129824; uint32_t buffer_offset
	}, ; 301: System.Threading.Timer
	%struct.CompressedAssemblyDescriptor {
		i32 45320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52145448; uint32_t buffer_offset
	}, ; 302: System.Threading
	%struct.CompressedAssemblyDescriptor {
		i32 176392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52190768; uint32_t buffer_offset
	}, ; 303: System.Transactions.Local
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52367160; uint32_t buffer_offset
	}, ; 304: System.Transactions
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52384320; uint32_t buffer_offset
	}, ; 305: System.ValueTuple
	%struct.CompressedAssemblyDescriptor {
		i32 30520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52400456; uint32_t buffer_offset
	}, ; 306: System.Web.HttpUtility
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52430976; uint32_t buffer_offset
	}, ; 307: System.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52446600; uint32_t buffer_offset
	}, ; 308: System.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52462784; uint32_t buffer_offset
	}, ; 309: System.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 22280, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52478920; uint32_t buffer_offset
	}, ; 310: System.Xml.ReaderWriter
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52501200; uint32_t buffer_offset
	}, ; 311: System.Xml.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52517848; uint32_t buffer_offset
	}, ; 312: System.Xml.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52534024; uint32_t buffer_offset
	}, ; 313: System.Xml.XPath.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52550160; uint32_t buffer_offset
	}, ; 314: System.Xml.XPath
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52566296; uint32_t buffer_offset
	}, ; 315: System.Xml.XmlDocument
	%struct.CompressedAssemblyDescriptor {
		i32 18192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52582440; uint32_t buffer_offset
	}, ; 316: System.Xml.XmlSerializer
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52600632; uint32_t buffer_offset
	}, ; 317: System.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 50952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52624448; uint32_t buffer_offset
	}, ; 318: System
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52675400; uint32_t buffer_offset
	}, ; 319: WindowsBase
	%struct.CompressedAssemblyDescriptor {
		i32 60168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52692048; uint32_t buffer_offset
	}, ; 320: mscorlib
	%struct.CompressedAssemblyDescriptor {
		i32 101176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52752216; uint32_t buffer_offset
	}, ; 321: netstandard
	%struct.CompressedAssemblyDescriptor {
		i32 244768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52853392; uint32_t buffer_offset
	}, ; 322: Java.Interop
	%struct.CompressedAssemblyDescriptor {
		i32 83528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 53098160; uint32_t buffer_offset
	}, ; 323: Mono.Android.Export
	%struct.CompressedAssemblyDescriptor {
		i32 22560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 53181688; uint32_t buffer_offset
	}, ; 324: Mono.Android.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 41459712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 53204248; uint32_t buffer_offset
	}, ; 325: Mono.Android
	%struct.CompressedAssemblyDescriptor {
		i32 55840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 94663960; uint32_t buffer_offset
	}, ; 326: System.IO.Hashing
	%struct.CompressedAssemblyDescriptor {
		i32 4999984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 94719800; uint32_t buffer_offset
	} ; 327: System.Private.CoreLib
], align 4

@uncompressed_assemblies_data_size = dso_local local_unnamed_addr constant i32 99719784, align 4

@uncompressed_assemblies_data_buffer = dso_local local_unnamed_addr global [99719784 x i8] zeroinitializer, align 1

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/darc-release/10.0.1xx-fce6efd9-cc42-423a-a4db-1a5ebe0f4ee4 @ 350a375fc202f0072ac4191624986d8c642b93fa"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
