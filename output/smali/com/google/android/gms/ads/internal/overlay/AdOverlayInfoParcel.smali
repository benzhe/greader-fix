.class public final Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final orientation:I

.field public final url:Ljava/lang/String;

.field public final zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

.field public final zzbvf:Ljava/lang/String;

.field public final zzbwe:Ljava/lang/String;

.field public final zzchr:Ler3;

.field public final zzdic:Lra0;

.field public final zzdie:Lta0;

.field public final zzdje:Lns1;

.field public final zzdjf:Lpp2;

.field public final zzdkm:Lxw0;

.field public final zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

.field public final zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field public final zzdug:Ljava/lang/String;

.field public final zzduh:Z

.field public final zzdui:Ljava/lang/String;

.field public final zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

.field public final zzduk:I

.field public final zzdul:Ljava/lang/String;

.field public final zzdum:Lcom/google/android/gms/ads/internal/zzk;

.field public final zzdun:Lsy1;

.field public final zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

.field public final zzdup:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    .line 146
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 147
    invoke-static {p2}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ler3;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 148
    invoke-static {p3}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 149
    invoke-static {p4}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw0;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    .line 150
    invoke-static/range {p16 .. p16}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lra0;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 151
    invoke-static {p5}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lta0;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    move-object v1, p6

    .line 152
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    move v1, p7

    .line 153
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    move-object v1, p8

    .line 154
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    .line 155
    invoke-static {p9}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzx;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    move v1, p10

    .line 156
    iput v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    move v1, p11

    .line 157
    iput v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    move-object v1, p12

    .line 158
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    move-object v1, p13

    .line 159
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    move-object/from16 v1, p14

    .line 160
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 161
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    move-object/from16 v1, p17

    .line 162
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 163
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    .line 164
    invoke-static/range {p18 .. p18}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsy1;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 165
    invoke-static/range {p19 .. p19}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lns1;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 166
    invoke-static/range {p20 .. p20}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpp2;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 167
    invoke-static/range {p21 .. p21}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/util/zzbg;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    move-object/from16 v1, p23

    .line 168
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/zzbar;Lxw0;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 123
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 124
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 125
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    .line 128
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    const/4 p2, 0x0

    .line 129
    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    .line 130
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    const/4 p2, -0x1

    .line 132
    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 p2, 0x4

    .line 133
    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    .line 134
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    .line 135
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    .line 136
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    .line 138
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 141
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 142
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 143
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 144
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ILcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 29
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    .line 32
    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    .line 34
    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 36
    iput p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 p2, 0x1

    .line 37
    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    .line 40
    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 48
    iput-object p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ZILcom/google/android/gms/internal/ads/zzbar;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 52
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 53
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 55
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    .line 56
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    .line 57
    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    .line 58
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 60
    iput p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 p1, 0x2

    .line 61
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    .line 62
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    .line 66
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 69
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 70
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 71
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 72
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lra0;Lta0;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 76
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 77
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    .line 78
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 79
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    .line 80
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    .line 81
    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    .line 82
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 84
    iput p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 p1, 0x3

    .line 85
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    .line 86
    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    .line 87
    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    .line 88
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    .line 90
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 93
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 94
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 95
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 96
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lra0;Lta0;Lcom/google/android/gms/ads/internal/overlay/zzx;Lxw0;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 99
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 100
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 101
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    .line 102
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 103
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    .line 104
    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    .line 105
    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    .line 106
    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 108
    iput p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 p1, 0x3

    .line 109
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    .line 110
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    .line 111
    iput-object p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    .line 112
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    .line 114
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 117
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 118
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 119
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 120
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lxw0;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 12
    iput p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 p1, 0x5

    .line 13
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    .line 18
    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    .line 19
    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 21
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 22
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 23
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    .locals 2

    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 2
    const-class v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    .line 4
    new-instance v4, Ly20;

    invoke-direct {v4, v2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1, v1, v4, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 7
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 8
    invoke-static {p1, v1, v2, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v2, 0x5

    .line 9
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    .line 10
    new-instance v5, Ly20;

    invoke-direct {v5, v4}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-static {p1, v2, v5, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v2, 0x6

    .line 12
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    .line 13
    new-instance v5, Ly20;

    invoke-direct {v5, v4}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-static {p1, v2, v5, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v2, 0x7

    .line 15
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    invoke-static {p1, v2, v4, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v2, 0x8

    .line 16
    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    .line 17
    invoke-static {p1, v2, v1}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 18
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0x9

    .line 19
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    invoke-static {p1, v2, v4, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v2, 0xa

    .line 20
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 21
    new-instance v5, Ly20;

    invoke-direct {v5, v4}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-static {p1, v2, v5, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v2, 0xb

    .line 23
    iget v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    .line 24
    invoke-static {p1, v2, v1}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 25
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0xc

    .line 26
    iget v4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    .line 27
    invoke-static {p1, v2, v1}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xd

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x10

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x11

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x12

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    .line 34
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 35
    invoke-static {p1, p2, v2, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x13

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x14

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    .line 38
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 39
    invoke-static {p1, p2, v2, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x15

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    .line 41
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 42
    invoke-static {p1, p2, v2, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x16

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    .line 44
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 45
    invoke-static {p1, p2, v2, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x17

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 47
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 48
    invoke-static {p1, p2, v2, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x18

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x19

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 51
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
