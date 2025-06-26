.class public final Lju1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Law2<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lzo2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lzo2;",
            ">;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lju1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lju1;->b:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lju1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzo2;

    iget-object v1, p0, Lju1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzr;->zzbi(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v1

    .line 3
    sget-object v2, Lap2;->x:Lap2;

    .line 4
    invoke-virtual {v0, v2}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object v0

    new-instance v2, Lgu1;

    invoke-direct {v2, v1}, Lgu1;-><init>(Landroid/webkit/CookieManager;)V

    .line 5
    iget-object v1, v0, Loo2;->b:Lko2;

    .line 6
    iget-object v1, v1, Lko2;->a:Lzv2;

    .line 7
    invoke-virtual {v0, v2, v1}, Loo2;->a(Ljava/util/concurrent/Callable;Lzv2;)Lqo2;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lqo2;->a(JLjava/util/concurrent/TimeUnit;)Lqo2;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Liu1;->a:Ljo2;

    .line 10
    new-instance v3, Lwo2;

    invoke-direct {v3, v2}, Lwo2;-><init>(Ljo2;)V

    invoke-virtual {v0, v1, v3}, Lqo2;->d(Ljava/lang/Class;Lcv2;)Lqo2;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lqo2;->e()Llo2;

    move-result-object v0

    return-object v0
.end method
