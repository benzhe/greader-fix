.class public final Lke7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lke7$a;,
        Lke7$b;
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
.field public final g:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final h:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lqc7;

.field public final j:Lqc7;


# direct methods
.method public constructor <init>(Lmb7;Ltc7;Ltc7;Lqc7;Lqc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Ltc7<",
            "-TT;>;",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lqc7;",
            "Lqc7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lke7;->g:Ltc7;

    .line 3
    iput-object p3, p0, Lke7;->h:Ltc7;

    .line 4
    iput-object p4, p0, Lke7;->i:Lqc7;

    .line 5
    iput-object p5, p0, Lke7;->j:Lqc7;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfd7;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v7, Lke7$a;

    move-object v2, p1

    check-cast v2, Lfd7;

    iget-object v3, p0, Lke7;->g:Ltc7;

    iget-object v4, p0, Lke7;->h:Ltc7;

    iget-object v5, p0, Lke7;->i:Lqc7;

    iget-object v6, p0, Lke7;->j:Lqc7;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lke7$a;-><init>(Lfd7;Ltc7;Ltc7;Lqc7;Lqc7;)V

    invoke-virtual {v0, v7}, Lmb7;->s(Lpb7;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v7, Lke7$b;

    iget-object v3, p0, Lke7;->g:Ltc7;

    iget-object v4, p0, Lke7;->h:Ltc7;

    iget-object v5, p0, Lke7;->i:Lqc7;

    iget-object v6, p0, Lke7;->j:Lqc7;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lke7$b;-><init>(Lx38;Ltc7;Ltc7;Lqc7;Lqc7;)V

    invoke-virtual {v0, v7}, Lmb7;->s(Lpb7;)V

    :goto_0
    return-void
.end method
