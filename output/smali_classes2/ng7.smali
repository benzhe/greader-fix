.class public final Lng7;
.super Lyf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lyf7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lvb7<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb7;Luc7;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "TT;>;",
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lvb7<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lyf7;-><init>(Lvb7;)V

    .line 2
    iput-object p2, p0, Lng7;->f:Luc7;

    return-void
.end method


# virtual methods
.method public m(Ltb7;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyf7;->e:Lvb7;

    new-instance v1, Lng7$a;

    iget-object v2, p0, Lng7;->f:Luc7;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lng7$a;-><init>(Ltb7;Luc7;Z)V

    invoke-interface {v0, v1}, Lvb7;->a(Ltb7;)V

    return-void
.end method
