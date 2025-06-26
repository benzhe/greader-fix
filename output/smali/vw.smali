.class public final synthetic Lvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvw;->e:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lvw;->e:Landroid/net/Uri;

    .line 1
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
