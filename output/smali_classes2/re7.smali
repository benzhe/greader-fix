.class public final Lre7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lre7$a;
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
            "Lvb7<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:I


# direct methods
.method public constructor <init>(Lmb7;Luc7;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Lvb7<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lre7;->g:Luc7;

    .line 3
    iput-boolean p3, p0, Lre7;->h:Z

    .line 4
    iput p4, p0, Lre7;->i:I

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v1, Lre7$a;

    iget-object v2, p0, Lre7;->g:Luc7;

    iget-boolean v3, p0, Lre7;->h:Z

    iget v4, p0, Lre7;->i:I

    invoke-direct {v1, p1, v2, v3, v4}, Lre7$a;-><init>(Lx38;Luc7;ZI)V

    invoke-virtual {v0, v1}, Lmb7;->s(Lpb7;)V

    return-void
.end method
