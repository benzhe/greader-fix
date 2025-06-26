.class public final Llc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcv2<",
        "Lgc0;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzaiy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaiy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llc0;->a:Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lgc0;

    .line 2
    new-instance v0, Lxs0;

    invoke-direct {v0}, Lxs0;-><init>()V

    .line 3
    iget-object v1, p0, Llc0;->a:Lcom/google/android/gms/internal/ads/zzaiy;

    new-instance v2, Lkc0;

    invoke-direct {v2, v0}, Lkc0;-><init>(Lxs0;)V

    invoke-interface {p1, v1, v2}, Lgc0;->z6(Lcom/google/android/gms/internal/ads/zzaiy;Lec0;)V

    return-object v0
.end method
