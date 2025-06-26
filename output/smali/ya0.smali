.class public final synthetic Lya0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# static fields
.field public static final a:Lkb0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lya0;

    invoke-direct {v0}, Lya0;-><init>()V

    sput-object v0, Lya0;->a:Lkb0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lyx0;

    .line 1
    sget-object v0, Lva0;->a:Lkb0;

    const-string v0, "u"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbq;

    .line 5
    invoke-interface {p1}, Lyx0;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lfy0;

    invoke-interface {p1}, Lfy0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zza;->zzyx()Law2;

    :goto_0
    return-void
.end method
