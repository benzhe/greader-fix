.class public final Lwm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lrm0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Ltm0;


# direct methods
.method public constructor <init>(Ltm0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm0;->f:Ltm0;

    iput-object p2, p0, Lwm0;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwm0;->f:Ltm0;

    .line 2
    iget-object v0, v0, Ltm0;->a:Ljava/util/WeakHashMap;

    .line 3
    iget-object v1, p0, Lwm0;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm0;

    if-eqz v0, :cond_1

    .line 4
    iget-wide v1, v0, Lvm0;->a:J

    sget-object v3, Lj60;->a:Le60;

    invoke-virtual {v3}, Le60;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lum0;

    iget-object v2, p0, Lwm0;->e:Landroid/content/Context;

    iget-object v0, v0, Lvm0;->b:Lrm0;

    invoke-direct {v1, v2, v0}, Lum0;-><init>(Landroid/content/Context;Lrm0;)V

    invoke-virtual {v1}, Lum0;->e()Lrm0;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Lum0;

    iget-object v1, p0, Lwm0;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lum0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lum0;->e()Lrm0;

    move-result-object v0

    .line 8
    :goto_1
    iget-object v1, p0, Lwm0;->f:Ltm0;

    .line 9
    iget-object v1, v1, Ltm0;->a:Ljava/util/WeakHashMap;

    .line 10
    iget-object v2, p0, Lwm0;->e:Landroid/content/Context;

    new-instance v3, Lvm0;

    invoke-direct {v3, v0}, Lvm0;-><init>(Lrm0;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
