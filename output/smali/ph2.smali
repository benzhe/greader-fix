.class public final Lph2;
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
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lli2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lli2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field public final b:Lli2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lli2<",
            "TR;",
            "Lbi2<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field public final c:Lkn2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkn2<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public d:Ll91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lli2;Lli2;Lkn2;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lli2<",
            "TR;TAdT;>;",
            "Lli2<",
            "TR;",
            "Lbi2<",
            "TAdT;>;>;",
            "Lkn2<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lph2;->a:Lli2;

    .line 3
    iput-object p2, p0, Lph2;->b:Lli2;

    .line 4
    iput-object p3, p0, Lph2;->c:Lkn2;

    .line 5
    iput-object p4, p0, Lph2;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lpi2;Lni2;)Law2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi2;",
            "Lni2<",
            "TR;>;)",
            "Law2<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lpi2;->b:Loi2;

    invoke-interface {p2, v0}, Lni2;->a(Loi2;)Lk91;

    move-result-object v0

    invoke-interface {v0}, Lk91;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll91;

    .line 2
    invoke-interface {v0}, Ll91;->b()Lll2;

    move-result-object v0

    .line 3
    iget-object v4, v0, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 4
    iget-object v5, v0, Lll2;->f:Ljava/lang/String;

    .line 5
    iget-object v7, v0, Lll2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 6
    new-instance v0, Lwh2;

    iget-object v6, p0, Lph2;->e:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lwh2;-><init>(Lni2;Lpi2;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lbn2;)V

    .line 7
    iget-object v1, p0, Lph2;->b:Lli2;

    .line 8
    invoke-interface {v1, p1, p2}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v1

    new-instance v2, Lsh2;

    invoke-direct {v2, p0, p1, v0, p2}, Lsh2;-><init>(Lph2;Lpi2;Lwh2;Lni2;)V

    iget-object p1, p0, Lph2;->e:Ljava/util/concurrent/Executor;

    .line 10
    invoke-virtual {v1, v2, p1}, Lnv2;->z(Lcv2;Ljava/util/concurrent/Executor;)Lnv2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lph2;->d:Ll91;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lcn2;Lpi2;Lni2;)Law2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn2<",
            "TAdT;>;",
            "Lpi2;",
            "Lni2<",
            "TR;>;)",
            "Law2<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lpi2;->b:Loi2;

    .line 2
    invoke-interface {p3, v0}, Lni2;->a(Loi2;)Lk91;

    move-result-object p3

    .line 3
    iget-object v0, p1, Lcn2;->c:Lf61;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p3}, Lk91;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll91;

    .line 5
    invoke-interface {p2}, Ll91;->c()Lmi2;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p1, Lcn2;->c:Lf61;

    .line 7
    iget-object p3, p3, Lf61;->e:Lmi2;

    .line 8
    invoke-interface {p2}, Ll91;->c()Lmi2;

    move-result-object p2

    invoke-interface {p3, p2}, Lmi2;->r(Lmi2;)V

    .line 9
    :cond_0
    iget-object p1, p1, Lcn2;->c:Lf61;

    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    iget-object p1, p1, Lcn2;->b:Lhl2;

    invoke-interface {p3, p1}, Lk91;->c(Lhl2;)Lk91;

    .line 11
    iget-object p1, p0, Lph2;->a:Lli2;

    new-instance v0, Lrh2;

    invoke-direct {v0, p3}, Lrh2;-><init>(Lk91;)V

    invoke-interface {p1, p2, v0}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lph2;->a:Lli2;

    invoke-interface {p2}, Lli2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll91;

    iput-object p2, p0, Lph2;->d:Ll91;

    return-object p1
.end method
