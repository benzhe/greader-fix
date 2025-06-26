.class public final Lle7$a;
.super Lli7;
.source "SourceFile"

# interfaces
.implements Lpb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle7;
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
.field public final g:J

.field public final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final i:Z

.field public j:Ly38;

.field public k:J

.field public l:Z


# direct methods
.method public constructor <init>(Lx38;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lli7;-><init>(Lx38;)V

    .line 2
    iput-wide p2, p0, Lle7$a;->g:J

    .line 3
    iput-object p4, p0, Lle7$a;->h:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Lle7$a;->i:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lle7$a;->l:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lle7$a;->l:Z

    .line 3
    iget-object v0, p0, Lle7$a;->h:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lle7$a;->i:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lli7;->e:Lx38;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lli7;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lli7;->g(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lle7$a;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lle7$a;->l:Z

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
    iget-object v0, p0, Lle7$a;->j:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lle7$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lle7$a;->k:J

    .line 3
    iget-wide v2, p0, Lle7$a;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lle7$a;->l:Z

    .line 5
    iget-object v0, p0, Lle7$a;->j:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 6
    invoke-virtual {p0, p1}, Lli7;->g(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lle7$a;->k:J

    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lle7$a;->j:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lle7$a;->j:Ly38;

    .line 3
    iget-object v0, p0, Lli7;->e:Lx38;

    invoke-interface {v0, p0}, Lx38;->e(Ly38;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_0
    return-void
.end method
