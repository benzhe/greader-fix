.class public final Lyh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lli2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Ll91<",
        "TAdT;>;AdT:",
        "Lf61;",
        ">",
        "Ljava/lang/Object;",
        "Lli2<",
        "TR;",
        "Lbi2<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lsm2;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lrv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrv2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsm2;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzh2;

    invoke-direct {v0}, Lzh2;-><init>()V

    iput-object v0, p0, Lyh2;->c:Lrv2;

    .line 3
    iput-object p1, p0, Lyh2;->a:Lsm2;

    .line 4
    iput-object p2, p0, Lyh2;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lpi2;Lni2;)Law2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi2;",
            "Lni2<",
            "TR;>;)",
            "Law2<",
            "Lbi2<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfi2;

    iget-object v1, p0, Lyh2;->a:Lsm2;

    iget-object v2, p1, Lpi2;->b:Loi2;

    iget-object v3, p0, Lyh2;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p2, v3}, Lfi2;-><init>(Lsm2;Loi2;Lni2;Ljava/util/concurrent/Executor;)V

    .line 2
    iget-object v1, v0, Lfi2;->e:Lji2;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    goto/16 :goto_1

    .line 4
    :cond_0
    sget-object v1, Lv60;->a:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lji2;

    invoke-virtual {v0}, Lfi2;->a()Lbn2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lji2;-><init>(Lcom/google/android/gms/internal/ads/zzauj;Lbn2;Lhi2;)V

    iput-object v1, v0, Lfi2;->e:Lji2;

    .line 6
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v1

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lfi2;->c:Lni2;

    iget-object v2, v0, Lfi2;->b:Loi2;

    .line 8
    invoke-interface {v1, v2}, Lni2;->a(Loi2;)Lk91;

    move-result-object v1

    new-instance v2, Lvh2;

    iget-object v3, v0, Lfi2;->a:Lsm2;

    .line 9
    check-cast v3, Lrm2;

    .line 10
    iget-object v3, v3, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 11
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdrc;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lvh2;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-interface {v1, v2}, Lk91;->b(Lvh2;)Lk91;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Lk91;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll91;

    .line 14
    invoke-interface {v1}, Ll91;->d()Lh71;

    move-result-object v1

    iget-object v2, v0, Lfi2;->a:Lsm2;

    .line 15
    check-cast v2, Lrm2;

    .line 16
    iget-object v2, v2, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 17
    iget-object v3, v1, Lh71;->c:Lzo2;

    sget-object v4, Lap2;->z:Lap2;

    iget-object v5, v1, Lh71;->i:Lg91;

    .line 18
    invoke-virtual {v5}, Lg91;->b()Law2;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object v3

    new-instance v4, Li71;

    invoke-direct {v4, v1, v2}, Li71;-><init>(Lh71;Lcom/google/android/gms/internal/ads/zzdrc;)V

    .line 19
    iget-object v2, v3, Lqo2;->f:Lko2;

    .line 20
    iget-object v2, v2, Lko2;->a:Lzv2;

    .line 21
    invoke-virtual {v3, v4, v2}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lqo2;->e()Llo2;

    move-result-object v2

    .line 23
    new-instance v3, Ll71;

    invoke-direct {v3, v1}, Ll71;-><init>(Lh71;)V

    iget-object v1, v1, Lh71;->j:Ljava/util/concurrent/Executor;

    .line 24
    new-instance v4, Lsv2;

    invoke-direct {v4, v2, v3}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-virtual {v2, v4, v1}, Llo2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 25
    invoke-static {v2}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v1

    new-instance v2, Lki2;

    invoke-direct {v2, v0}, Lki2;-><init>(Lfi2;)V

    iget-object v3, v0, Lfi2;->d:Ljava/util/concurrent/Executor;

    .line 26
    invoke-virtual {v1, v2, v3}, Lnv2;->y(Lvs2;Ljava/util/concurrent/Executor;)Lnv2;

    move-result-object v1

    const-class v2, Lyv1;

    new-instance v3, Lhi2;

    invoke-direct {v3, v0}, Lhi2;-><init>(Lfi2;)V

    iget-object v4, v0, Lfi2;->d:Ljava/util/concurrent/Executor;

    .line 27
    new-instance v5, Lqu2;

    invoke-direct {v5, v1, v2, v3}, Lqu2;-><init>(Law2;Ljava/lang/Class;Lvs2;)V

    .line 28
    invoke-static {v4, v5}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v1, v5

    .line 29
    :goto_0
    sget-object v2, Lii2;->a:Lvs2;

    iget-object v0, v0, Lfi2;->d:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v0}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    .line 30
    :goto_1
    invoke-static {v0}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v0

    new-instance v1, Lxh2;

    invoke-direct {v1, p0, p1, p2}, Lxh2;-><init>(Lyh2;Lpi2;Lni2;)V

    iget-object p1, p0, Lyh2;->b:Ljava/util/concurrent/Executor;

    .line 31
    invoke-virtual {v0, v1, p1}, Lnv2;->z(Lcv2;Ljava/util/concurrent/Executor;)Lnv2;

    move-result-object p1

    const-class p2, Ljava/lang/Exception;

    new-instance v0, Lai2;

    invoke-direct {v0}, Lai2;-><init>()V

    iget-object v1, p0, Lyh2;->b:Ljava/util/concurrent/Executor;

    .line 32
    new-instance v2, Lqu2;

    invoke-direct {v2, p1, p2, v0}, Lqu2;-><init>(Law2;Ljava/lang/Class;Lvs2;)V

    .line 33
    invoke-static {v1, v2}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
