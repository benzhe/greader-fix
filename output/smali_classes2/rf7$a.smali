.class public final Lrf7$a;
.super Lli7;
.source "SourceFile"

# interfaces
.implements Lpb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lli7<",
        "TT;>;",
        "Lpb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final h:Z

.field public i:Ly38;

.field public j:Z


# direct methods
.method public constructor <init>(Lx38;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lli7;-><init>(Lx38;)V

    .line 2
    iput-object p2, p0, Lrf7$a;->g:Ljava/lang/Object;

    .line 3
    iput-boolean p3, p0, Lrf7$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrf7$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrf7$a;->j:Z

    .line 3
    iget-object v0, p0, Lli7;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lli7;->f:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lrf7$a;->g:Ljava/lang/Object;

    :cond_1
    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lrf7$a;->h:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lli7;->e:Lx38;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lli7;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v0}, Lli7;->g(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf7$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrf7$a;->j:Z

    .line 4
    iget-object v0, p0, Lli7;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lli7;->cancel()V

    .line 2
    iget-object v0, p0, Lrf7$a;->i:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrf7$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lli7;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lrf7$a;->j:Z

    .line 4
    iget-object p1, p0, Lrf7$a;->i:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    .line 5
    iget-object p1, p0, Lli7;->e:Lx38;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    iput-object p1, p0, Lli7;->f:Ljava/lang/Object;

    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf7$a;->i:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lrf7$a;->i:Ly38;

    .line 3
    iget-object v0, p0, Lli7;->e:Lx38;

    invoke-interface {v0, p0}, Lx38;->e(Ly38;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_0
    return-void
.end method
