.class public final Lpf7$a;
.super Lnf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpf7;
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
        "Lnf7<",
        "TT;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx38;Lyi7;Ly38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;",
            "Lyi7<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ly38;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnf7;-><init>(Lx38;Lyi7;Ly38;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnf7;->o:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 2
    iget-object v0, p0, Lnf7;->m:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    sget-object v0, Lmi7;->e:Lmi7;

    invoke-virtual {p0, v0}, Loi7;->i(Ly38;)V

    .line 2
    iget-wide v0, p0, Lnf7;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iput-wide v2, p0, Lnf7;->p:J

    .line 4
    invoke-virtual {p0, v0, v1}, Loi7;->h(J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lnf7;->o:Ly38;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Ly38;->l(J)V

    .line 6
    iget-object v0, p0, Lnf7;->n:Lyi7;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    return-void
.end method
