.class public final Lgi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lli2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Ll91<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lli2<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lli2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lli2<",
            "TRequestComponentT;TAdT;>;"
        }
    .end annotation
.end field

.field public b:Ll91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lli2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lli2<",
            "TRequestComponentT;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgi2;->a:Lli2;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lpi2;Lni2;)Law2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi2;",
            "Lni2<",
            "TRequestComponentT;>;)",
            "Law2<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lpi2;->a:Lcom/google/android/gms/internal/ads/zzauj;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lpi2;->b:Loi2;

    .line 3
    invoke-interface {p2, v0}, Lni2;->a(Loi2;)Lk91;

    move-result-object p2

    invoke-interface {p2}, Lk91;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll91;

    iput-object p2, p0, Lgi2;->b:Ll91;

    .line 4
    invoke-interface {p2}, Ll91;->d()Lh71;

    move-result-object p2

    iget-object p1, p1, Lpi2;->a:Lcom/google/android/gms/internal/ads/zzauj;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh71;->a(Law2;)Law2;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Lh71;->c(Law2;)Law2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-object p1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgi2;->a:Lli2;

    invoke-interface {v0, p1, p2}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lgi2;->a:Lli2;

    invoke-interface {p2}, Lli2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll91;

    iput-object p2, p0, Lgi2;->b:Ll91;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    iget-object v0, p0, Lgi2;->b:Ll91;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
