.class public final Lpe7$b;
.super Lgi7;
.source "SourceFile"

# interfaces
.implements Lfd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpe7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgi7<",
        "TT;TT;>;",
        "Lfd7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Lvc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc7<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx38;Lvc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;",
            "Lvc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lgi7;-><init>(Lx38;)V

    .line 2
    iput-object p2, p0, Lpe7$b;->j:Lvc7;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lpe7$b;->f(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lgi7;->f:Ly38;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lgi7;->h:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p0, Lgi7;->i:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lgi7;->e:Lx38;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lx38;->d(Ljava/lang/Object;)V

    return v1

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Lpe7$b;->j:Lvc7;

    invoke-interface {v0, p1}, Lvc7;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lgi7;->e:Lx38;

    invoke-interface {v1, p1}, Lx38;->d(Ljava/lang/Object;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Lgi7;->c(Ljava/lang/Throwable;)V

    return v1
.end method

.method public i(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgi7;->g(I)I

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgi7;->g:Lkd7;

    .line 2
    iget-object v1, p0, Lpe7$b;->j:Lvc7;

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    invoke-interface {v1, v2}, Lvc7;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 5
    :cond_2
    iget v2, p0, Lgi7;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x1

    .line 6
    invoke-interface {v0, v2, v3}, Ly38;->l(J)V

    goto :goto_0
.end method
