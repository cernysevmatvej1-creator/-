; ModuleID = 'compressed_assemblies.x86_64.ll'
source_filename = "compressed_assemblies.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i1, ; bool loaded
	i32 ; uint32_t buffer_offset
}

@compressed_assembly_count = dso_local local_unnamed_addr constant i32 328, align 4

@compressed_assembly_descriptors = dso_local local_unnamed_addr global [328 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 287232, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 0; uint32_t buffer_offset
	}, ; 0: Group
	%struct.CompressedAssemblyDescriptor {
		i32 120616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 287232; uint32_t buffer_offset
	}, ; 1: CommunityToolkit.Mvvm
	%struct.CompressedAssemblyDescriptor {
		i32 91648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 407848; uint32_t buffer_offset
	}, ; 2: Firebase
	%struct.CompressedAssemblyDescriptor {
		i32 174128, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 499496; uint32_t buffer_offset
	}, ; 3: GoogleGson
	%struct.CompressedAssemblyDescriptor {
		i32 488960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 673624; uint32_t buffer_offset
	}, ; 4: LiteDB
	%struct.CompressedAssemblyDescriptor {
		i32 45320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1162584; uint32_t buffer_offset
	}, ; 5: Microsoft.Extensions.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 28984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1207904; uint32_t buffer_offset
	}, ; 6: Microsoft.Extensions.Configuration.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 96008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1236888; uint32_t buffer_offset
	}, ; 7: Microsoft.Extensions.DependencyInjection
	%struct.CompressedAssemblyDescriptor {
		i32 66312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1332896; uint32_t buffer_offset
	}, ; 8: Microsoft.Extensions.DependencyInjection.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 31504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1399208; uint32_t buffer_offset
	}, ; 9: Microsoft.Extensions.Diagnostics.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 23864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1430712; uint32_t buffer_offset
	}, ; 10: Microsoft.Extensions.FileProviders.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 54536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1454576; uint32_t buffer_offset
	}, ; 11: Microsoft.Extensions.Hosting.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 52016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1509112; uint32_t buffer_offset
	}, ; 12: Microsoft.Extensions.Logging
	%struct.CompressedAssemblyDescriptor {
		i32 67344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1561128; uint32_t buffer_offset
	}, ; 13: Microsoft.Extensions.Logging.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 20240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1628472; uint32_t buffer_offset
	}, ; 14: Microsoft.Extensions.Logging.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 65848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1648712; uint32_t buffer_offset
	}, ; 15: Microsoft.Extensions.Options
	%struct.CompressedAssemblyDescriptor {
		i32 45328, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1714560; uint32_t buffer_offset
	}, ; 16: Microsoft.Extensions.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 1928504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1759888; uint32_t buffer_offset
	}, ; 17: Microsoft.Maui.Controls
	%struct.CompressedAssemblyDescriptor {
		i32 135432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3688392; uint32_t buffer_offset
	}, ; 18: Microsoft.Maui.Controls.Xaml
	%struct.CompressedAssemblyDescriptor {
		i32 861696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3823824; uint32_t buffer_offset
	}, ; 19: Microsoft.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 280848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4685520; uint32_t buffer_offset
	}, ; 20: Microsoft.Maui.Essentials
	%struct.CompressedAssemblyDescriptor {
		i32 208696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4966368; uint32_t buffer_offset
	}, ; 21: Microsoft.Maui.Graphics
	%struct.CompressedAssemblyDescriptor {
		i32 712464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5175064; uint32_t buffer_offset
	}, ; 22: Newtonsoft.Json
	%struct.CompressedAssemblyDescriptor {
		i32 1344080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5887528; uint32_t buffer_offset
	}, ; 23: System.Reactive
	%struct.CompressedAssemblyDescriptor {
		i32 1175552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7231608; uint32_t buffer_offset
	}, ; 24: Xamarin.Android.Glide
	%struct.CompressedAssemblyDescriptor {
		i32 15944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8407160; uint32_t buffer_offset
	}, ; 25: Xamarin.Android.Glide.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 25632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8423104; uint32_t buffer_offset
	}, ; 26: Xamarin.Android.Glide.DiskLruCache
	%struct.CompressedAssemblyDescriptor {
		i32 63032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8448736; uint32_t buffer_offset
	}, ; 27: Xamarin.Android.Glide.GifDecoder
	%struct.CompressedAssemblyDescriptor {
		i32 186880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8511768; uint32_t buffer_offset
	}, ; 28: Xamarin.AndroidX.Activity
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8698648; uint32_t buffer_offset
	}, ; 29: Xamarin.AndroidX.Activity.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 15912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8714576; uint32_t buffer_offset
	}, ; 30: Xamarin.AndroidX.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 38432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8730488; uint32_t buffer_offset
	}, ; 31: Xamarin.AndroidX.Annotation.Experimental
	%struct.CompressedAssemblyDescriptor {
		i32 215608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8768920; uint32_t buffer_offset
	}, ; 32: Xamarin.AndroidX.Annotation.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 1293312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8984528; uint32_t buffer_offset
	}, ; 33: Xamarin.AndroidX.AppCompat
	%struct.CompressedAssemblyDescriptor {
		i32 93184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10277840; uint32_t buffer_offset
	}, ; 34: Xamarin.AndroidX.AppCompat.AppCompatResources
	%struct.CompressedAssemblyDescriptor {
		i32 38984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10371024; uint32_t buffer_offset
	}, ; 35: Xamarin.AndroidX.Arch.Core.Common
	%struct.CompressedAssemblyDescriptor {
		i32 28192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10410008; uint32_t buffer_offset
	}, ; 36: Xamarin.AndroidX.Arch.Core.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 399360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10438200; uint32_t buffer_offset
	}, ; 37: Xamarin.AndroidX.Browser
	%struct.CompressedAssemblyDescriptor {
		i32 35400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10837560; uint32_t buffer_offset
	}, ; 38: Xamarin.AndroidX.CardView
	%struct.CompressedAssemblyDescriptor {
		i32 15944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10872960; uint32_t buffer_offset
	}, ; 39: Xamarin.AndroidX.Collection
	%struct.CompressedAssemblyDescriptor {
		i32 628768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10888904; uint32_t buffer_offset
	}, ; 40: Xamarin.AndroidX.Collection.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11517672; uint32_t buffer_offset
	}, ; 41: Xamarin.AndroidX.Collection.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 36424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11533576; uint32_t buffer_offset
	}, ; 42: Xamarin.AndroidX.Concurrent.Futures
	%struct.CompressedAssemblyDescriptor {
		i32 741888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11570000; uint32_t buffer_offset
	}, ; 43: Xamarin.AndroidX.ConstraintLayout
	%struct.CompressedAssemblyDescriptor {
		i32 1466936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12311888; uint32_t buffer_offset
	}, ; 44: Xamarin.AndroidX.ConstraintLayout.Core
	%struct.CompressedAssemblyDescriptor {
		i32 102400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13778824; uint32_t buffer_offset
	}, ; 45: Xamarin.AndroidX.CoordinatorLayout
	%struct.CompressedAssemblyDescriptor {
		i32 2224640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13881224; uint32_t buffer_offset
	}, ; 46: Xamarin.AndroidX.Core
	%struct.CompressedAssemblyDescriptor {
		i32 216608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16105864; uint32_t buffer_offset
	}, ; 47: Xamarin.AndroidX.Core.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 20016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16322472; uint32_t buffer_offset
	}, ; 48: Xamarin.AndroidX.Core.ViewTree
	%struct.CompressedAssemblyDescriptor {
		i32 64040, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16342488; uint32_t buffer_offset
	}, ; 49: Xamarin.AndroidX.CursorAdapter
	%struct.CompressedAssemblyDescriptor {
		i32 74776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16406528; uint32_t buffer_offset
	}, ; 50: Xamarin.AndroidX.CustomView
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16481304; uint32_t buffer_offset
	}, ; 51: Xamarin.AndroidX.CustomView.PoolingContainer
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16496664; uint32_t buffer_offset
	}, ; 52: Xamarin.AndroidX.DrawerLayout
	%struct.CompressedAssemblyDescriptor {
		i32 62976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16554520; uint32_t buffer_offset
	}, ; 53: Xamarin.AndroidX.DynamicAnimation
	%struct.CompressedAssemblyDescriptor {
		i32 288816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16617496; uint32_t buffer_offset
	}, ; 54: Xamarin.AndroidX.Emoji2
	%struct.CompressedAssemblyDescriptor {
		i32 26144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16906312; uint32_t buffer_offset
	}, ; 55: Xamarin.AndroidX.Emoji2.ViewsHelper
	%struct.CompressedAssemblyDescriptor {
		i32 73288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16932456; uint32_t buffer_offset
	}, ; 56: Xamarin.AndroidX.ExifInterface
	%struct.CompressedAssemblyDescriptor {
		i32 375808, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17005744; uint32_t buffer_offset
	}, ; 57: Xamarin.AndroidX.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 27192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17381552; uint32_t buffer_offset
	}, ; 58: Xamarin.AndroidX.Fragment.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 26152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17408744; uint32_t buffer_offset
	}, ; 59: Xamarin.AndroidX.Interpolator
	%struct.CompressedAssemblyDescriptor {
		i32 16952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17434896; uint32_t buffer_offset
	}, ; 60: Xamarin.AndroidX.Lifecycle.Common
	%struct.CompressedAssemblyDescriptor {
		i32 71200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17451848; uint32_t buffer_offset
	}, ; 61: Xamarin.AndroidX.Lifecycle.Common.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 39464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17523048; uint32_t buffer_offset
	}, ; 62: Xamarin.AndroidX.Lifecycle.LiveData
	%struct.CompressedAssemblyDescriptor {
		i32 36936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17562512; uint32_t buffer_offset
	}, ; 63: Xamarin.AndroidX.Lifecycle.LiveData.Core
	%struct.CompressedAssemblyDescriptor {
		i32 16440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17599448; uint32_t buffer_offset
	}, ; 64: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 22584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17615888; uint32_t buffer_offset
	}, ; 65: Xamarin.AndroidX.Lifecycle.Process
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17638472; uint32_t buffer_offset
	}, ; 66: Xamarin.AndroidX.Lifecycle.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17653888; uint32_t buffer_offset
	}, ; 67: Xamarin.AndroidX.Lifecycle.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17697920; uint32_t buffer_offset
	}, ; 68: Xamarin.AndroidX.Lifecycle.Runtime.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 16456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17713824; uint32_t buffer_offset
	}, ; 69: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17730280; uint32_t buffer_offset
	}, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel
	%struct.CompressedAssemblyDescriptor {
		i32 88632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17747208; uint32_t buffer_offset
	}, ; 71: Xamarin.AndroidX.Lifecycle.ViewModel.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17835840; uint32_t buffer_offset
	}, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17852280; uint32_t buffer_offset
	}, ; 73: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
	%struct.CompressedAssemblyDescriptor {
		i32 48200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17868208; uint32_t buffer_offset
	}, ; 74: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 61440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17916408; uint32_t buffer_offset
	}, ; 75: Xamarin.AndroidX.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17977848; uint32_t buffer_offset
	}, ; 76: Xamarin.AndroidX.Navigation.Common
	%struct.CompressedAssemblyDescriptor {
		i32 233016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17993752; uint32_t buffer_offset
	}, ; 77: Xamarin.AndroidX.Navigation.Common.Android
	%struct.CompressedAssemblyDescriptor {
		i32 60960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18226768; uint32_t buffer_offset
	}, ; 78: Xamarin.AndroidX.Navigation.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18287728; uint32_t buffer_offset
	}, ; 79: Xamarin.AndroidX.Navigation.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 114688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18303656; uint32_t buffer_offset
	}, ; 80: Xamarin.AndroidX.Navigation.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 46592, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18418344; uint32_t buffer_offset
	}, ; 81: Xamarin.AndroidX.Navigation.UI
	%struct.CompressedAssemblyDescriptor {
		i32 52784, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18464936; uint32_t buffer_offset
	}, ; 82: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
	%struct.CompressedAssemblyDescriptor {
		i32 660992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18517720; uint32_t buffer_offset
	}, ; 83: Xamarin.AndroidX.RecyclerView
	%struct.CompressedAssemblyDescriptor {
		i32 30792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19178712; uint32_t buffer_offset
	}, ; 84: Xamarin.AndroidX.ResourceInspection.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 15912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19209504; uint32_t buffer_offset
	}, ; 85: Xamarin.AndroidX.SavedState
	%struct.CompressedAssemblyDescriptor {
		i32 91688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19225416; uint32_t buffer_offset
	}, ; 86: Xamarin.AndroidX.SavedState.SavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19317104; uint32_t buffer_offset
	}, ; 87: Xamarin.AndroidX.SavedState.SavedState.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 46648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19333520; uint32_t buffer_offset
	}, ; 88: Xamarin.AndroidX.Security.SecurityCrypto
	%struct.CompressedAssemblyDescriptor {
		i32 39936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19380168; uint32_t buffer_offset
	}, ; 89: Xamarin.AndroidX.SlidingPaneLayout
	%struct.CompressedAssemblyDescriptor {
		i32 31304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19420104; uint32_t buffer_offset
	}, ; 90: Xamarin.AndroidX.Startup.StartupRuntime
	%struct.CompressedAssemblyDescriptor {
		i32 67584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19451408; uint32_t buffer_offset
	}, ; 91: Xamarin.AndroidX.SwipeRefreshLayout
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19518992; uint32_t buffer_offset
	}, ; 92: Xamarin.AndroidX.Tracing.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 24104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19534384; uint32_t buffer_offset
	}, ; 93: Xamarin.AndroidX.Tracing.Tracing.Android
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19558488; uint32_t buffer_offset
	}, ; 94: Xamarin.AndroidX.Transition
	%struct.CompressedAssemblyDescriptor {
		i32 36384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19733592; uint32_t buffer_offset
	}, ; 95: Xamarin.AndroidX.VectorDrawable
	%struct.CompressedAssemblyDescriptor {
		i32 49184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19769976; uint32_t buffer_offset
	}, ; 96: Xamarin.AndroidX.VectorDrawable.Animated
	%struct.CompressedAssemblyDescriptor {
		i32 122936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19819160; uint32_t buffer_offset
	}, ; 97: Xamarin.AndroidX.VersionedParcelable
	%struct.CompressedAssemblyDescriptor {
		i32 86016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19942096; uint32_t buffer_offset
	}, ; 98: Xamarin.AndroidX.ViewPager
	%struct.CompressedAssemblyDescriptor {
		i32 64512, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20028112; uint32_t buffer_offset
	}, ; 99: Xamarin.AndroidX.ViewPager2
	%struct.CompressedAssemblyDescriptor {
		i32 271904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20092624; uint32_t buffer_offset
	}, ; 100: Xamarin.AndroidX.Window
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20364528; uint32_t buffer_offset
	}, ; 101: Xamarin.AndroidX.Window.WindowCore
	%struct.CompressedAssemblyDescriptor {
		i32 35360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20380432; uint32_t buffer_offset
	}, ; 102: Xamarin.AndroidX.Window.WindowCore.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 2773504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 20415792; uint32_t buffer_offset
	}, ; 103: Xamarin.Google.Android.Material
	%struct.CompressedAssemblyDescriptor {
		i32 102432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 23189296; uint32_t buffer_offset
	}, ; 104: Jsr305Binding
	%struct.CompressedAssemblyDescriptor {
		i32 5886976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 23291728; uint32_t buffer_offset
	}, ; 105: Xamarin.Google.Crypto.Tink.Android
	%struct.CompressedAssemblyDescriptor {
		i32 101944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29178704; uint32_t buffer_offset
	}, ; 106: Xamarin.Google.ErrorProne.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 27192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29280648; uint32_t buffer_offset
	}, ; 107: Xamarin.Google.Guava.ListenableFuture
	%struct.CompressedAssemblyDescriptor {
		i32 165944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29307840; uint32_t buffer_offset
	}, ; 108: Xamarin.Jetbrains.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 28728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29473784; uint32_t buffer_offset
	}, ; 109: Xamarin.JSpecify
	%struct.CompressedAssemblyDescriptor {
		i32 2375680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 29502512; uint32_t buffer_offset
	}, ; 110: Xamarin.Kotlin.StdLib
	%struct.CompressedAssemblyDescriptor {
		i32 27680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31878192; uint32_t buffer_offset
	}, ; 111: Xamarin.KotlinX.Coroutines.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31905872; uint32_t buffer_offset
	}, ; 112: Xamarin.KotlinX.Coroutines.Core
	%struct.CompressedAssemblyDescriptor {
		i32 568880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31922304; uint32_t buffer_offset
	}, ; 113: Xamarin.KotlinX.Coroutines.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32491184; uint32_t buffer_offset
	}, ; 114: Xamarin.KotlinX.Serialization.Core
	%struct.CompressedAssemblyDescriptor {
		i32 312376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32507600; uint32_t buffer_offset
	}, ; 115: Xamarin.KotlinX.Serialization.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32819976; uint32_t buffer_offset
	}, ; 116: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32835600; uint32_t buffer_offset
	}, ; 117: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32851232; uint32_t buffer_offset
	}, ; 118: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32866856; uint32_t buffer_offset
	}, ; 119: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32882480; uint32_t buffer_offset
	}, ; 120: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32898112; uint32_t buffer_offset
	}, ; 121: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32913744; uint32_t buffer_offset
	}, ; 122: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32929376; uint32_t buffer_offset
	}, ; 123: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32945000; uint32_t buffer_offset
	}, ; 124: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32960624; uint32_t buffer_offset
	}, ; 125: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32976256; uint32_t buffer_offset
	}, ; 126: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32991880; uint32_t buffer_offset
	}, ; 127: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33007504; uint32_t buffer_offset
	}, ; 128: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33023128; uint32_t buffer_offset
	}, ; 129: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33038752; uint32_t buffer_offset
	}, ; 130: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33054376; uint32_t buffer_offset
	}, ; 131: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33070000; uint32_t buffer_offset
	}, ; 132: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33085624; uint32_t buffer_offset
	}, ; 133: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33101248; uint32_t buffer_offset
	}, ; 134: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33116880; uint32_t buffer_offset
	}, ; 135: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33132544; uint32_t buffer_offset
	}, ; 136: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33148168; uint32_t buffer_offset
	}, ; 137: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33163800; uint32_t buffer_offset
	}, ; 138: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33179432; uint32_t buffer_offset
	}, ; 139: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33195064; uint32_t buffer_offset
	}, ; 140: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33210736; uint32_t buffer_offset
	}, ; 141: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33226368; uint32_t buffer_offset
	}, ; 142: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33242032; uint32_t buffer_offset
	}, ; 143: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33257656; uint32_t buffer_offset
	}, ; 144: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33273280; uint32_t buffer_offset
	}, ; 145: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33288904; uint32_t buffer_offset
	}, ; 146: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33304528; uint32_t buffer_offset
	}, ; 147: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33320192; uint32_t buffer_offset
	}, ; 148: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33335816; uint32_t buffer_offset
	}, ; 149: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 719360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33351448; uint32_t buffer_offset
	}, ; 150: _Microsoft.Android.Resource.Designer
	%struct.CompressedAssemblyDescriptor {
		i32 312080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34070808; uint32_t buffer_offset
	}, ; 151: Microsoft.CSharp
	%struct.CompressedAssemblyDescriptor {
		i32 429320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34382888; uint32_t buffer_offset
	}, ; 152: Microsoft.VisualBasic.Core
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34812208; uint32_t buffer_offset
	}, ; 153: Microsoft.VisualBasic
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34829880; uint32_t buffer_offset
	}, ; 154: Microsoft.Win32.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 33544, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34846056; uint32_t buffer_offset
	}, ; 155: Microsoft.Win32.Registry
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34879600; uint32_t buffer_offset
	}, ; 156: System.AppContext
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34895272; uint32_t buffer_offset
	}, ; 157: System.Buffers
	%struct.CompressedAssemblyDescriptor {
		i32 89352, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34910936; uint32_t buffer_offset
	}, ; 158: System.Collections.Concurrent
	%struct.CompressedAssemblyDescriptor {
		i32 251704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35000288; uint32_t buffer_offset
	}, ; 159: System.Collections.Immutable
	%struct.CompressedAssemblyDescriptor {
		i32 48400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35251992; uint32_t buffer_offset
	}, ; 160: System.Collections.NonGeneric
	%struct.CompressedAssemblyDescriptor {
		i32 48392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35300392; uint32_t buffer_offset
	}, ; 161: System.Collections.Specialized
	%struct.CompressedAssemblyDescriptor {
		i32 113416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35348784; uint32_t buffer_offset
	}, ; 162: System.Collections
	%struct.CompressedAssemblyDescriptor {
		i32 103224, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35462200; uint32_t buffer_offset
	}, ; 163: System.ComponentModel.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 17168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35565424; uint32_t buffer_offset
	}, ; 164: System.ComponentModel.DataAnnotations
	%struct.CompressedAssemblyDescriptor {
		i32 26888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35582592; uint32_t buffer_offset
	}, ; 165: System.ComponentModel.EventBasedAsync
	%struct.CompressedAssemblyDescriptor {
		i32 42808, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35609480; uint32_t buffer_offset
	}, ; 166: System.ComponentModel.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 317192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35652288; uint32_t buffer_offset
	}, ; 167: System.ComponentModel.TypeConverter
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35969480; uint32_t buffer_offset
	}, ; 168: System.ComponentModel
	%struct.CompressedAssemblyDescriptor {
		i32 19720, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35986128; uint32_t buffer_offset
	}, ; 169: System.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 50952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36005848; uint32_t buffer_offset
	}, ; 170: System.Console
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36056800; uint32_t buffer_offset
	}, ; 171: System.Core
	%struct.CompressedAssemblyDescriptor {
		i32 1018680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36080616; uint32_t buffer_offset
	}, ; 172: System.Data.Common
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37099296; uint32_t buffer_offset
	}, ; 173: System.Data.DataSetExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 25904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37115432; uint32_t buffer_offset
	}, ; 174: System.Data
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37141336; uint32_t buffer_offset
	}, ; 175: System.Diagnostics.Contracts
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37157984; uint32_t buffer_offset
	}, ; 176: System.Diagnostics.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 203016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37174120; uint32_t buffer_offset
	}, ; 177: System.Diagnostics.DiagnosticSource
	%struct.CompressedAssemblyDescriptor {
		i32 29960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37377136; uint32_t buffer_offset
	}, ; 178: System.Diagnostics.FileVersionInfo
	%struct.CompressedAssemblyDescriptor {
		i32 129336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37407096; uint32_t buffer_offset
	}, ; 179: System.Diagnostics.Process
	%struct.CompressedAssemblyDescriptor {
		i32 26416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37536432; uint32_t buffer_offset
	}, ; 180: System.Diagnostics.StackTrace
	%struct.CompressedAssemblyDescriptor {
		i32 32008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37562848; uint32_t buffer_offset
	}, ; 181: System.Diagnostics.TextWriterTraceListener
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37594856; uint32_t buffer_offset
	}, ; 182: System.Diagnostics.Tools
	%struct.CompressedAssemblyDescriptor {
		i32 59144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37610480; uint32_t buffer_offset
	}, ; 183: System.Diagnostics.TraceSource
	%struct.CompressedAssemblyDescriptor {
		i32 16656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37669624; uint32_t buffer_offset
	}, ; 184: System.Diagnostics.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 65288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37686280; uint32_t buffer_offset
	}, ; 185: System.Drawing.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 20744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37751568; uint32_t buffer_offset
	}, ; 186: System.Drawing
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37772312; uint32_t buffer_offset
	}, ; 187: System.Dynamic.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 97544, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37788960; uint32_t buffer_offset
	}, ; 188: System.Formats.Asn1
	%struct.CompressedAssemblyDescriptor {
		i32 121616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37886504; uint32_t buffer_offset
	}, ; 189: System.Formats.Tar
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38008120; uint32_t buffer_offset
	}, ; 190: System.Globalization.Calendars
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38024256; uint32_t buffer_offset
	}, ; 191: System.Globalization.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38039880; uint32_t buffer_offset
	}, ; 192: System.Globalization
	%struct.CompressedAssemblyDescriptor {
		i32 41736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38056064; uint32_t buffer_offset
	}, ; 193: System.IO.Compression.Brotli
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38097800; uint32_t buffer_offset
	}, ; 194: System.IO.Compression.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 54024, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38113432; uint32_t buffer_offset
	}, ; 195: System.IO.Compression.ZipFile
	%struct.CompressedAssemblyDescriptor {
		i32 168240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38167456; uint32_t buffer_offset
	}, ; 196: System.IO.Compression
	%struct.CompressedAssemblyDescriptor {
		i32 32520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38335696; uint32_t buffer_offset
	}, ; 197: System.IO.FileSystem.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 51976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38368216; uint32_t buffer_offset
	}, ; 198: System.IO.FileSystem.DriveInfo
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38420192; uint32_t buffer_offset
	}, ; 199: System.IO.FileSystem.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 55560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38435816; uint32_t buffer_offset
	}, ; 200: System.IO.FileSystem.Watcher
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38491376; uint32_t buffer_offset
	}, ; 201: System.IO.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 43784, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38507512; uint32_t buffer_offset
	}, ; 202: System.IO.IsolatedStorage
	%struct.CompressedAssemblyDescriptor {
		i32 50448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38551296; uint32_t buffer_offset
	}, ; 203: System.IO.MemoryMappedFiles
	%struct.CompressedAssemblyDescriptor {
		i32 78640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38601744; uint32_t buffer_offset
	}, ; 204: System.IO.Pipelines
	%struct.CompressedAssemblyDescriptor {
		i32 23856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38680384; uint32_t buffer_offset
	}, ; 205: System.IO.Pipes.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 67848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38704240; uint32_t buffer_offset
	}, ; 206: System.IO.Pipes
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38772088; uint32_t buffer_offset
	}, ; 207: System.IO.UnmanagedMemoryStream
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38788232; uint32_t buffer_offset
	}, ; 208: System.IO
	%struct.CompressedAssemblyDescriptor {
		i32 456968, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38804368; uint32_t buffer_offset
	}, ; 209: System.Linq.AsyncEnumerable
	%struct.CompressedAssemblyDescriptor {
		i32 575752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39261336; uint32_t buffer_offset
	}, ; 210: System.Linq.Expressions
	%struct.CompressedAssemblyDescriptor {
		i32 223504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39837088; uint32_t buffer_offset
	}, ; 211: System.Linq.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 79160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40060592; uint32_t buffer_offset
	}, ; 212: System.Linq.Queryable
	%struct.CompressedAssemblyDescriptor {
		i32 201520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40139752; uint32_t buffer_offset
	}, ; 213: System.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 56072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40341272; uint32_t buffer_offset
	}, ; 214: System.Memory
	%struct.CompressedAssemblyDescriptor {
		i32 56584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40397344; uint32_t buffer_offset
	}, ; 215: System.Net.Http.Json
	%struct.CompressedAssemblyDescriptor {
		i32 680712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40453928; uint32_t buffer_offset
	}, ; 216: System.Net.Http
	%struct.CompressedAssemblyDescriptor {
		i32 132880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41134640; uint32_t buffer_offset
	}, ; 217: System.Net.HttpListener
	%struct.CompressedAssemblyDescriptor {
		i32 175368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41267520; uint32_t buffer_offset
	}, ; 218: System.Net.Mail
	%struct.CompressedAssemblyDescriptor {
		i32 53000, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41442888; uint32_t buffer_offset
	}, ; 219: System.Net.NameResolution
	%struct.CompressedAssemblyDescriptor {
		i32 66824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41495888; uint32_t buffer_offset
	}, ; 220: System.Net.NetworkInformation
	%struct.CompressedAssemblyDescriptor {
		i32 56072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41562712; uint32_t buffer_offset
	}, ; 221: System.Net.Ping
	%struct.CompressedAssemblyDescriptor {
		i32 109328, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41618784; uint32_t buffer_offset
	}, ; 222: System.Net.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 172304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41728112; uint32_t buffer_offset
	}, ; 223: System.Net.Quic
	%struct.CompressedAssemblyDescriptor {
		i32 162056, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41900416; uint32_t buffer_offset
	}, ; 224: System.Net.Requests
	%struct.CompressedAssemblyDescriptor {
		i32 255752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42062472; uint32_t buffer_offset
	}, ; 225: System.Net.Security
	%struct.CompressedAssemblyDescriptor {
		i32 41224, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42318224; uint32_t buffer_offset
	}, ; 226: System.Net.ServerSentEvents
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42359448; uint32_t buffer_offset
	}, ; 227: System.Net.ServicePoint
	%struct.CompressedAssemblyDescriptor {
		i32 238864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42375072; uint32_t buffer_offset
	}, ; 228: System.Net.Sockets
	%struct.CompressedAssemblyDescriptor {
		i32 70920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42613936; uint32_t buffer_offset
	}, ; 229: System.Net.WebClient
	%struct.CompressedAssemblyDescriptor {
		i32 33552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42684856; uint32_t buffer_offset
	}, ; 230: System.Net.WebHeaderCollection
	%struct.CompressedAssemblyDescriptor {
		i32 23824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42718408; uint32_t buffer_offset
	}, ; 231: System.Net.WebProxy
	%struct.CompressedAssemblyDescriptor {
		i32 51976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42742232; uint32_t buffer_offset
	}, ; 232: System.Net.WebSockets.Client
	%struct.CompressedAssemblyDescriptor {
		i32 109320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42794208; uint32_t buffer_offset
	}, ; 233: System.Net.WebSockets
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42903528; uint32_t buffer_offset
	}, ; 234: System.Net
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42921200; uint32_t buffer_offset
	}, ; 235: System.Numerics.Vectors
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42937336; uint32_t buffer_offset
	}, ; 236: System.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 41744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42952960; uint32_t buffer_offset
	}, ; 237: System.ObjectModel
	%struct.CompressedAssemblyDescriptor {
		i32 859912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42994704; uint32_t buffer_offset
	}, ; 238: System.Private.DataContractSerialization
	%struct.CompressedAssemblyDescriptor {
		i32 106288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 43854616; uint32_t buffer_offset
	}, ; 239: System.Private.Uri
	%struct.CompressedAssemblyDescriptor {
		i32 154424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 43960904; uint32_t buffer_offset
	}, ; 240: System.Private.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 3106568, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 44115328; uint32_t buffer_offset
	}, ; 241: System.Private.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 38664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47221896; uint32_t buffer_offset
	}, ; 242: System.Reflection.DispatchProxy
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47260560; uint32_t buffer_offset
	}, ; 243: System.Reflection.Emit.ILGeneration
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47276696; uint32_t buffer_offset
	}, ; 244: System.Reflection.Emit.Lightweight
	%struct.CompressedAssemblyDescriptor {
		i32 133936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47292840; uint32_t buffer_offset
	}, ; 245: System.Reflection.Emit
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47426776; uint32_t buffer_offset
	}, ; 246: System.Reflection.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 504120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47442448; uint32_t buffer_offset
	}, ; 247: System.Reflection.Metadata
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47946568; uint32_t buffer_offset
	}, ; 248: System.Reflection.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 24840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47962744; uint32_t buffer_offset
	}, ; 249: System.Reflection.TypeExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47987584; uint32_t buffer_offset
	}, ; 250: System.Reflection
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48004232; uint32_t buffer_offset
	}, ; 251: System.Resources.Reader
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48019856; uint32_t buffer_offset
	}, ; 252: System.Resources.ResourceManager
	%struct.CompressedAssemblyDescriptor {
		i32 27400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48036000; uint32_t buffer_offset
	}, ; 253: System.Resources.Writer
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48063400; uint32_t buffer_offset
	}, ; 254: System.Runtime.CompilerServices.Unsafe
	%struct.CompressedAssemblyDescriptor {
		i32 17712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48079024; uint32_t buffer_offset
	}, ; 255: System.Runtime.CompilerServices.VisualC
	%struct.CompressedAssemblyDescriptor {
		i32 18184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48096736; uint32_t buffer_offset
	}, ; 256: System.Runtime.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48114920; uint32_t buffer_offset
	}, ; 257: System.Runtime.Handles
	%struct.CompressedAssemblyDescriptor {
		i32 38672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48131096; uint32_t buffer_offset
	}, ; 258: System.Runtime.InteropServices.JavaScript
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48169768; uint32_t buffer_offset
	}, ; 259: System.Runtime.InteropServices.RuntimeInformation
	%struct.CompressedAssemblyDescriptor {
		i32 65288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48185440; uint32_t buffer_offset
	}, ; 260: System.Runtime.InteropServices
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48250728; uint32_t buffer_offset
	}, ; 261: System.Runtime.Intrinsics
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48268400; uint32_t buffer_offset
	}, ; 262: System.Runtime.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 145672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48284536; uint32_t buffer_offset
	}, ; 263: System.Runtime.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 66312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48430208; uint32_t buffer_offset
	}, ; 264: System.Runtime.Serialization.Formatters
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48496520; uint32_t buffer_offset
	}, ; 265: System.Runtime.Serialization.Json
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48512664; uint32_t buffer_offset
	}, ; 266: System.Runtime.Serialization.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48536480; uint32_t buffer_offset
	}, ; 267: System.Runtime.Serialization.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 17712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48553640; uint32_t buffer_offset
	}, ; 268: System.Runtime.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 45368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48571352; uint32_t buffer_offset
	}, ; 269: System.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 58680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48616720; uint32_t buffer_offset
	}, ; 270: System.Security.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 55608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48675400; uint32_t buffer_offset
	}, ; 271: System.Security.Claims
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48731008; uint32_t buffer_offset
	}, ; 272: System.Security.Cryptography.Algorithms
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48748680; uint32_t buffer_offset
	}, ; 273: System.Security.Cryptography.Cng
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48765328; uint32_t buffer_offset
	}, ; 274: System.Security.Cryptography.Csp
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48781976; uint32_t buffer_offset
	}, ; 275: System.Security.Cryptography.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48798160; uint32_t buffer_offset
	}, ; 276: System.Security.Cryptography.OpenSsl
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48814296; uint32_t buffer_offset
	}, ; 277: System.Security.Cryptography.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48830480; uint32_t buffer_offset
	}, ; 278: System.Security.Cryptography.X509Certificates
	%struct.CompressedAssemblyDescriptor {
		i32 853264, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48847688; uint32_t buffer_offset
	}, ; 279: System.Security.Cryptography
	%struct.CompressedAssemblyDescriptor {
		i32 38200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49700952; uint32_t buffer_offset
	}, ; 280: System.Security.Principal.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49739152; uint32_t buffer_offset
	}, ; 281: System.Security.Principal
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49754784; uint32_t buffer_offset
	}, ; 282: System.Security.SecureString
	%struct.CompressedAssemblyDescriptor {
		i32 18736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49770920; uint32_t buffer_offset
	}, ; 283: System.Security
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49789656; uint32_t buffer_offset
	}, ; 284: System.ServiceModel.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49806816; uint32_t buffer_offset
	}, ; 285: System.ServiceProcess
	%struct.CompressedAssemblyDescriptor {
		i32 743176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49822992; uint32_t buffer_offset
	}, ; 286: System.Text.Encoding.CodePages
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50566168; uint32_t buffer_offset
	}, ; 287: System.Text.Encoding.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50582304; uint32_t buffer_offset
	}, ; 288: System.Text.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 66352, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50598488; uint32_t buffer_offset
	}, ; 289: System.Text.Encodings.Web
	%struct.CompressedAssemblyDescriptor {
		i32 649488, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50664840; uint32_t buffer_offset
	}, ; 290: System.Text.Json
	%struct.CompressedAssemblyDescriptor {
		i32 385288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51314328; uint32_t buffer_offset
	}, ; 291: System.Text.RegularExpressions
	%struct.CompressedAssemblyDescriptor {
		i32 34096, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51699616; uint32_t buffer_offset
	}, ; 292: System.Threading.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 66824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51733712; uint32_t buffer_offset
	}, ; 293: System.Threading.Channels
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51800536; uint32_t buffer_offset
	}, ; 294: System.Threading.Overlapped
	%struct.CompressedAssemblyDescriptor {
		i32 186128, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51816672; uint32_t buffer_offset
	}, ; 295: System.Threading.Tasks.Dataflow
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52002800; uint32_t buffer_offset
	}, ; 296: System.Threading.Tasks.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 61704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52018984; uint32_t buffer_offset
	}, ; 297: System.Threading.Tasks.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52080688; uint32_t buffer_offset
	}, ; 298: System.Threading.Tasks
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52097848; uint32_t buffer_offset
	}, ; 299: System.Threading.Thread
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52113984; uint32_t buffer_offset
	}, ; 300: System.Threading.ThreadPool
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52130120; uint32_t buffer_offset
	}, ; 301: System.Threading.Timer
	%struct.CompressedAssemblyDescriptor {
		i32 45320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52145744; uint32_t buffer_offset
	}, ; 302: System.Threading
	%struct.CompressedAssemblyDescriptor {
		i32 176392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52191064; uint32_t buffer_offset
	}, ; 303: System.Transactions.Local
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52367456; uint32_t buffer_offset
	}, ; 304: System.Transactions
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52384616; uint32_t buffer_offset
	}, ; 305: System.ValueTuple
	%struct.CompressedAssemblyDescriptor {
		i32 30512, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52400752; uint32_t buffer_offset
	}, ; 306: System.Web.HttpUtility
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52431264; uint32_t buffer_offset
	}, ; 307: System.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52446896; uint32_t buffer_offset
	}, ; 308: System.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52463032; uint32_t buffer_offset
	}, ; 309: System.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 22280, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52479168; uint32_t buffer_offset
	}, ; 310: System.Xml.ReaderWriter
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52501448; uint32_t buffer_offset
	}, ; 311: System.Xml.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52518096; uint32_t buffer_offset
	}, ; 312: System.Xml.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52534280; uint32_t buffer_offset
	}, ; 313: System.Xml.XPath.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52550424; uint32_t buffer_offset
	}, ; 314: System.Xml.XPath
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52566560; uint32_t buffer_offset
	}, ; 315: System.Xml.XmlDocument
	%struct.CompressedAssemblyDescriptor {
		i32 18184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52582736; uint32_t buffer_offset
	}, ; 316: System.Xml.XmlSerializer
	%struct.CompressedAssemblyDescriptor {
		i32 23856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52600920; uint32_t buffer_offset
	}, ; 317: System.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 50952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52624776; uint32_t buffer_offset
	}, ; 318: System
	%struct.CompressedAssemblyDescriptor {
		i32 16656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52675728; uint32_t buffer_offset
	}, ; 319: WindowsBase
	%struct.CompressedAssemblyDescriptor {
		i32 60168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52692384; uint32_t buffer_offset
	}, ; 320: mscorlib
	%struct.CompressedAssemblyDescriptor {
		i32 101168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52752552; uint32_t buffer_offset
	}, ; 321: netstandard
	%struct.CompressedAssemblyDescriptor {
		i32 244768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52853720; uint32_t buffer_offset
	}, ; 322: Java.Interop
	%struct.CompressedAssemblyDescriptor {
		i32 83528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 53098488; uint32_t buffer_offset
	}, ; 323: Mono.Android.Export
	%struct.CompressedAssemblyDescriptor {
		i32 22560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 53182016; uint32_t buffer_offset
	}, ; 324: Mono.Android.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 41459712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 53204576; uint32_t buffer_offset
	}, ; 325: Mono.Android
	%struct.CompressedAssemblyDescriptor {
		i32 55840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 94664288; uint32_t buffer_offset
	}, ; 326: System.IO.Hashing
	%struct.CompressedAssemblyDescriptor {
		i32 4964616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 94720128; uint32_t buffer_offset
	} ; 327: System.Private.CoreLib
], align 16

@uncompressed_assemblies_data_size = dso_local local_unnamed_addr constant i32 99684744, align 4

@uncompressed_assemblies_data_buffer = dso_local local_unnamed_addr global [99684744 x i8] zeroinitializer, align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/darc-release/10.0.1xx-fce6efd9-cc42-423a-a4db-1a5ebe0f4ee4 @ 350a375fc202f0072ac4191624986d8c642b93fa"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
