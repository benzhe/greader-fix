.class public final Lof7$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Ly38;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof7;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Ly38;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Lof7$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lof7$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lof7$e;Lx38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lof7$e<",
            "TT;>;",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lof7$b;->e:Lof7$e;

    .line 3
    iput-object p2, p0, Lof7$b;->f:Lx38;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lof7$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lof7$b;->k()V

    return-void
.end method

.method public k()V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Lof7$b;->e:Lof7$e;

    invoke-virtual {v0, p0}, Lof7$e;->h(Lof7$b;)V

    .line 3
    iget-object v0, p0, Lof7$b;->e:Lof7$e;

    invoke-virtual {v0}, Lof7$e;->g()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lof7$b;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public l(J)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lpi7;->y(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Ln56;->g(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, p0, Lof7$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Ln56;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 4
    iget-object p1, p0, Lof7$b;->e:Lof7$e;

    invoke-virtual {p1}, Lof7$e;->g()V

    .line 5
    iget-object p1, p0, Lof7$b;->e:Lof7$e;

    iget-object p1, p1, Lof7$e;->e:Lof7$c;

    invoke-interface {p1, p0}, Lof7$c;->h(Lof7$b;)V

    :cond_0
    return-void
.end method
