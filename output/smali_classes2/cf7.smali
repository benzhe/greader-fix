.class public final Lcf7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf7$a;
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
.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Lqc7;


# direct methods
.method public constructor <init>(Lmb7;IZZLqc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;IZZ",
            "Lqc7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput p2, p0, Lcf7;->g:I

    .line 3
    iput-boolean p3, p0, Lcf7;->h:Z

    .line 4
    iput-boolean p4, p0, Lcf7;->i:Z

    .line 5
    iput-object p5, p0, Lcf7;->j:Lqc7;

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
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v7, Lcf7$a;

    iget v3, p0, Lcf7;->g:I

    iget-boolean v4, p0, Lcf7;->h:Z

    iget-boolean v5, p0, Lcf7;->i:Z

    iget-object v6, p0, Lcf7;->j:Lqc7;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcf7$a;-><init>(Lx38;IZZLqc7;)V

    invoke-virtual {v0, v7}, Lmb7;->s(Lpb7;)V

    return-void
.end method
