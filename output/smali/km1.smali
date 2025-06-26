.class public final Lkm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lim1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzay;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lb20;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzay;",
            ">;",
            "Lmb3<",
            "Lb20;",
            ">;",
            "Lmb3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkm1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lkm1;->b:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lkm1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/util/zzay;

    iget-object v1, p0, Lkm1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb20;

    .line 2
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v2

    .line 3
    new-instance v3, Lim1;

    invoke-direct {v3, v0, v1, v2}, Lim1;-><init>(Lcom/google/android/gms/ads/internal/util/zzay;Lb20;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
