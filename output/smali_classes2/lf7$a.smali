.class public final Llf7$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lpb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llf7;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lpb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Loi7;

.field public final g:Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw38<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Lx38;JLoi7;Lw38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;J",
            "Loi7;",
            "Lw38<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Llf7$a;->e:Lx38;

    .line 3
    iput-object p4, p0, Llf7$a;->f:Loi7;

    .line 4
    iput-object p5, p0, Llf7$a;->g:Lw38;

    .line 5
    iput-wide p2, p0, Llf7$a;->h:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Llf7$a;->h:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 2
    iput-wide v2, p0, Llf7$a;->h:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0}, Llf7$a;->c()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Llf7$a;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llf7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v1, p0, Llf7$a;->f:Loi7;

    .line 3
    iget-boolean v1, v1, Loi7;->k:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-wide v1, p0, Llf7$a;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 5
    iput-wide v3, p0, Llf7$a;->i:J

    .line 6
    iget-object v3, p0, Llf7$a;->f:Loi7;

    invoke-virtual {v3, v1, v2}, Loi7;->h(J)V

    .line 7
    :cond_2
    iget-object v1, p0, Llf7$a;->g:Lw38;

    invoke-interface {v1, p0}, Lw38;->i(Lx38;)V

    neg-int v0, v0

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Llf7$a;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llf7$a;->i:J

    .line 2
    iget-object v0, p0, Llf7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ly38;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llf7$a;->f:Loi7;

    invoke-virtual {v0, p1}, Loi7;->i(Ly38;)V

    return-void
.end method
