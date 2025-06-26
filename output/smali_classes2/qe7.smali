.class public final Lqe7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe7$a;,
        Lqe7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lhe7<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final g:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Lmb7;Luc7;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lqe7;->g:Luc7;

    .line 3
    iput-boolean p3, p0, Lqe7;->h:Z

    .line 4
    iput p4, p0, Lqe7;->i:I

    .line 5
    iput p5, p0, Lqe7;->j:I

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhe7;->f:Lmb7;

    iget-object v1, p0, Lqe7;->g:Luc7;

    invoke-static {v0, p1, v1}, Ln56;->z2(Lw38;Lx38;Luc7;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lhe7;->f:Lmb7;

    iget-object v3, p0, Lqe7;->g:Luc7;

    iget-boolean v4, p0, Lqe7;->h:Z

    iget v5, p0, Lqe7;->i:I

    iget v6, p0, Lqe7;->j:I

    .line 3
    new-instance v7, Lqe7$b;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lqe7$b;-><init>(Lx38;Luc7;ZII)V

    .line 4
    invoke-virtual {v0, v7}, Lmb7;->s(Lpb7;)V

    return-void
.end method
