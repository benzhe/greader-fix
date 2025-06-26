.class public final Lug7;
.super Lwb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lwb7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:Lvb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lxb7<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Lxb7<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lwb7;-><init>()V

    .line 2
    iput-object p1, p0, Lug7;->e:Lvb7;

    .line 3
    iput-object p2, p0, Lug7;->f:Luc7;

    return-void
.end method


# virtual methods
.method public f(Lyb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lug7$a;

    iget-object v1, p0, Lug7;->f:Luc7;

    invoke-direct {v0, p1, v1}, Lug7$a;-><init>(Lyb7;Luc7;)V

    .line 2
    invoke-interface {p1, v0}, Lyb7;->c(Lic7;)V

    .line 3
    iget-object p1, p0, Lug7;->e:Lvb7;

    invoke-interface {p1, v0}, Lvb7;->a(Ltb7;)V

    return-void
.end method
