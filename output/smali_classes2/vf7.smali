.class public final Lvf7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvf7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb7<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lzb7;

.field public final g:J

.field public final h:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lzb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-wide p1, p0, Lvf7;->g:J

    .line 3
    iput-object p3, p0, Lvf7;->h:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lvf7;->f:Lzb7;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lvf7$a;

    invoke-direct {v0, p1}, Lvf7$a;-><init>(Lx38;)V

    .line 2
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 3
    iget-object p1, p0, Lvf7;->f:Lzb7;

    iget-wide v1, p0, Lvf7;->g:J

    iget-object v3, p0, Lvf7;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lzb7;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lyc7;->e:Lyc7;

    if-ne v0, v1, :cond_0

    .line 6
    invoke-interface {p1}, Lic7;->k()V

    :cond_0
    return-void
.end method
