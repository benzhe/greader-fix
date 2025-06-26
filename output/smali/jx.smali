.class public final Ljx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld23;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljx;->e:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljx;->e:Lcom/google/android/gms/ads/internal/zzl;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzl;->e:Lcom/google/android/gms/internal/ads/zzbar;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzl;->h:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, v0, v2, v3}, Lfz2;->k(Ljava/lang/String;Landroid/content/Context;ZI)Lfz2;

    move-result-object v0

    .line 6
    new-instance v1, Ld23;

    invoke-direct {v1, v0}, Ld23;-><init>(Lws2;)V

    return-object v1
.end method
