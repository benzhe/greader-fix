.class public final Lwf7$a;
.super Lli7;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lli7<",
        "TU;>;",
        "Lpb7<",
        "TT;>;",
        "Ly38;"
    }
.end annotation


# instance fields
.field public g:Ly38;


# direct methods
.method public constructor <init>(Lx38;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lli7;-><init>(Lx38;)V

    .line 2
    iput-object p2, p0, Lli7;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lli7;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lli7;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lli7;->f:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lli7;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lli7;->cancel()V

    .line 2
    iget-object v0, p0, Lwf7$a;->g:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lli7;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwf7$a;->g:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lwf7$a;->g:Ly38;

    .line 3
    iget-object v0, p0, Lli7;->e:Lx38;

    invoke-interface {v0, p0}, Lx38;->e(Ly38;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_0
    return-void
.end method
