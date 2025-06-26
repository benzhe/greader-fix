.class public final Llf7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llf7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhe7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:J


# direct methods
.method public constructor <init>(Lmb7;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-wide p2, p0, Llf7;->g:J

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v4, Loi7;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Loi7;-><init>(Z)V

    .line 2
    invoke-interface {p1, v4}, Lx38;->e(Ly38;)V

    .line 3
    new-instance v6, Llf7$a;

    iget-wide v0, p0, Llf7;->g:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, Lhe7;->f:Lmb7;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llf7$a;-><init>(Lx38;JLoi7;Lw38;)V

    .line 4
    invoke-virtual {v6}, Llf7$a;->c()V

    return-void
.end method
