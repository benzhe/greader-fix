.class public abstract Lcom/google/android/gms/ads/internal/util/zza;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lqw;

    invoke-direct {v0, p0}, Lqw;-><init>(Lcom/google/android/gms/ads/internal/util/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zza;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract zzwp()V
.end method

.method public final zzyx()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lms0;->a:Lzv2;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zza;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lzv2;->C(Ljava/lang/Runnable;)Law2;

    move-result-object v0

    return-object v0
.end method
