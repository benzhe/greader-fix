.class public final Low2;
.super Lwv2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwv2<",
        "Law2<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final h:Ldv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv2<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic i:Llw2;


# direct methods
.method public constructor <init>(Llw2;Ldv2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv2<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Low2;->i:Llw2;

    invoke-direct {p0}, Lwv2;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Low2;->h:Ldv2;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Low2;->i:Llw2;

    invoke-virtual {v0}, Lsu2;->isDone()Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Law2;

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Low2;->i:Llw2;

    invoke-virtual {p2, p1}, Lsu2;->k(Law2;)Z

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Low2;->i:Llw2;

    invoke-virtual {p1, p2}, Lsu2;->j(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Low2;->h:Ldv2;

    .line 2
    invoke-interface {v0}, Ldv2;->a()Law2;

    move-result-object v0

    iget-object v1, p0, Low2;->h:Ldv2;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {v0, v2, v1}, Lc50;->G1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Law2;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Low2;->h:Ldv2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
