.class public final Lkh7;
.super Lwb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh7$a;
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
.field public final e:Lec7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lec7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lec7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lwb7;-><init>()V

    .line 2
    iput-object p1, p0, Lkh7;->e:Lec7;

    .line 3
    iput-object p2, p0, Lkh7;->f:Luc7;

    return-void
.end method


# virtual methods
.method public f(Lyb7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkh7;->e:Lec7;

    new-instance v1, Lkh7$a;

    iget-object v2, p0, Lkh7;->f:Luc7;

    invoke-direct {v1, p1, v2}, Lkh7$a;-><init>(Lyb7;Luc7;)V

    invoke-interface {v0, v1}, Lec7;->a(Lcc7;)V

    return-void
.end method
