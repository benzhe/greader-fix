.class public final Lxf7$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ly38;",
        ">;",
        "Lpb7<",
        "TT;>;",
        "Ly38;"
    }
.end annotation


# instance fields
.field public final e:Lxf7$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxf7$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:I

.field public h:Lnd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnd7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:J

.field public volatile j:Z

.field public k:I


# direct methods
.method public constructor <init>(Lxf7$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxf7$a<",
            "TT;TR;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lxf7$b;->e:Lxf7$a;

    .line 3
    iput p2, p0, Lxf7$b;->f:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lxf7$b;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lxf7$b;->j:Z

    .line 2
    iget-object v0, p0, Lxf7$b;->e:Lxf7$a;

    invoke-virtual {v0}, Lxf7$a;->b()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxf7$b;->e:Lxf7$a;

    .line 2
    iget-object v1, v0, Lxf7$a;->i:Lsi7;

    .line 3
    invoke-static {v1, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lxf7$b;->j:Z

    .line 5
    invoke-virtual {v0}, Lxf7$a;->b()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

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
    iget v0, p0, Lxf7$b;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lxf7$b;->h:Lnd7;

    invoke-interface {v0, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lxf7$b;->e:Lxf7$a;

    invoke-virtual {p1}, Lxf7$a;->b()V

    return-void
.end method

.method public e(Ly38;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lpi7;->x(Ljava/util/concurrent/atomic/AtomicReference;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lkd7;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lkd7;

    const/4 v1, 0x7

    .line 4
    invoke-interface {v0, v1}, Ljd7;->i(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Lxf7$b;->k:I

    .line 6
    iput-object v0, p0, Lxf7$b;->h:Lnd7;

    .line 7
    iput-boolean v2, p0, Lxf7$b;->j:Z

    .line 8
    iget-object p1, p0, Lxf7$b;->e:Lxf7$a;

    invoke-virtual {p1}, Lxf7$a;->b()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lxf7$b;->k:I

    .line 10
    iput-object v0, p0, Lxf7$b;->h:Lnd7;

    .line 11
    iget v0, p0, Lxf7$b;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Lth7;

    iget v1, p0, Lxf7$b;->f:I

    invoke-direct {v0, v1}, Lth7;-><init>(I)V

    iput-object v0, p0, Lxf7$b;->h:Lnd7;

    .line 13
    iget v0, p0, Lxf7$b;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_2
    return-void
.end method

.method public l(J)V
    .locals 3

    .line 1
    iget v0, p0, Lxf7$b;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-wide v0, p0, Lxf7$b;->i:J

    add-long/2addr v0, p1

    .line 3
    iget p1, p0, Lxf7$b;->g:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lxf7$b;->i:J

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly38;

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput-wide v0, p0, Lxf7$b;->i:J

    :cond_1
    :goto_0
    return-void
.end method
