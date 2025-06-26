.class public final Lyg7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyg7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhb7;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lxb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxb7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Llb7;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Lxb7;Luc7;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Llb7;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lyg7;->a:Lxb7;

    .line 3
    iput-object p2, p0, Lyg7;->b:Luc7;

    .line 4
    iput-boolean p3, p0, Lyg7;->c:Z

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lyg7;->a:Lxb7;

    new-instance v1, Lyg7$a;

    iget-object v2, p0, Lyg7;->b:Luc7;

    iget-boolean v3, p0, Lyg7;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lyg7$a;-><init>(Ljb7;Luc7;Z)V

    invoke-interface {v0, v1}, Lxb7;->e(Lyb7;)V

    return-void
.end method
