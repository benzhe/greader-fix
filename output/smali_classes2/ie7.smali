.class public final Lie7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lie7$d;,
        Lie7$e;,
        Lie7$b;,
        Lie7$f;,
        Lie7$c;,
        Lie7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lhe7<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final g:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Lui7;


# direct methods
.method public constructor <init>(Lmb7;Luc7;ILui7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;I",
            "Lui7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lie7;->g:Luc7;

    .line 3
    iput p3, p0, Lie7;->h:I

    .line 4
    iput-object p4, p0, Lie7;->i:Lui7;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhe7;->f:Lmb7;

    iget-object v1, p0, Lie7;->g:Luc7;

    invoke-static {v0, p1, v1}, Ln56;->z2(Lw38;Lx38;Luc7;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lhe7;->f:Lmb7;

    iget-object v1, p0, Lie7;->g:Luc7;

    iget v2, p0, Lie7;->h:I

    iget-object v3, p0, Lie7;->i:Lui7;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 4
    new-instance v3, Lie7$c;

    invoke-direct {v3, p1, v1, v2}, Lie7$c;-><init>(Lx38;Luc7;I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Lie7$b;

    invoke-direct {v3, p1, v1, v2, v4}, Lie7$b;-><init>(Lx38;Luc7;IZ)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v3, Lie7$b;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v2, v4}, Lie7$b;-><init>(Lx38;Luc7;IZ)V

    .line 7
    :goto_0
    invoke-virtual {v0, v3}, Lmb7;->i(Lx38;)V

    return-void
.end method
