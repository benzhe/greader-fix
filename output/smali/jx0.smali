.class public final Ljx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzbft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbft;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljx0;->e:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljx0;->e:Lcom/google/android/gms/internal/ads/zzbft;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbft;->e:Lxw0;

    .line 3
    invoke-interface {v0}, Lxw0;->destroy()V

    return-void
.end method
