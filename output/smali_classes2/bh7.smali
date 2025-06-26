.class public final Lbh7;
.super Lvg7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lvg7<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lvg7;-><init>(Lxb7;)V

    .line 2
    iput-object p2, p0, Lbh7;->f:Luc7;

    return-void
.end method


# virtual methods
.method public f(Lyb7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvg7;->e:Lxb7;

    new-instance v1, Lbh7$a;

    iget-object v2, p0, Lbh7;->f:Luc7;

    invoke-direct {v1, p1, v2}, Lbh7$a;-><init>(Lyb7;Luc7;)V

    invoke-interface {v0, v1}, Lxb7;->e(Lyb7;)V

    return-void
.end method
