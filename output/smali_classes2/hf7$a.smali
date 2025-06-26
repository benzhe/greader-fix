.class public final Lhf7$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf7;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Ly38;"
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

.field public final f:Lhf7$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf7$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:J


# direct methods
.method public constructor <init>(Lx38;Lhf7$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;",
            "Lhf7$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lhf7$a;->e:Lx38;

    .line 3
    iput-object p2, p0, Lhf7$a;->f:Lhf7$b;

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
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Lhf7$a;->f:Lhf7$b;

    invoke-virtual {v0, p0}, Lhf7$b;->i(Lhf7$a;)V

    .line 3
    iget-object v0, p0, Lhf7$a;->f:Lhf7$b;

    invoke-virtual {v0}, Lhf7$b;->g()V

    :cond_0
    return-void
.end method

.method public l(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ln56;->g(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    iget-object p1, p0, Lhf7$a;->f:Lhf7$b;

    invoke-virtual {p1}, Lhf7$b;->g()V

    return-void
.end method
