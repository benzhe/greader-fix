.class public final Lci2;
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
.field public a:Ll91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lpi2;Lni2;)Law2;
    .locals 0
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
    iget-object p1, p1, Lpi2;->b:Loi2;

    .line 2
    invoke-interface {p2, p1}, Lni2;->a(Loi2;)Lk91;

    move-result-object p1

    invoke-interface {p1}, Lk91;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll91;

    iput-object p1, p0, Lci2;->a:Ll91;

    .line 3
    invoke-interface {p1}, Ll91;->d()Lh71;

    move-result-object p1

    invoke-virtual {p1}, Lh71;->b()Law2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    iget-object v0, p0, Lci2;->a:Ll91;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
