.class public final Lhf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lpd0;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lpd0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lyd0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkf0;

    invoke-direct {v0}, Lkf0;-><init>()V

    sput-object v0, Lhf0;->b:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 2
    new-instance v0, Ljf0;

    invoke-direct {v0}, Ljf0;-><init>()V

    sput-object v0, Lhf0;->c:Lcom/google/android/gms/ads/internal/util/zzar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lyd0;

    sget-object v4, Lhf0;->b:Lcom/google/android/gms/ads/internal/util/zzar;

    sget-object v5, Lhf0;->c:Lcom/google/android/gms/ads/internal/util/zzar;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lyd0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzar;Lcom/google/android/gms/ads/internal/util/zzar;)V

    iput-object v6, p0, Lhf0;->a:Lyd0;

    return-void
.end method
