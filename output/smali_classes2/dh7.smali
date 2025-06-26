.class public final Ldh7;
.super Lvg7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldh7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lvg7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lxb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxb7<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxb7;Lxb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb7<",
            "TT;>;",
            "Lxb7<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lvg7;-><init>(Lxb7;)V

    .line 2
    iput-object p2, p0, Ldh7;->f:Lxb7;

    return-void
.end method


# virtual methods
.method public f(Lyb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ldh7$a;

    iget-object v1, p0, Ldh7;->f:Lxb7;

    invoke-direct {v0, p1, v1}, Ldh7$a;-><init>(Lyb7;Lxb7;)V

    .line 2
    iget-object v1, v0, Ldh7$a;->g:Lcd7;

    invoke-interface {p1, v1}, Lyb7;->c(Lic7;)V

    .line 3
    iget-object p1, p0, Lvg7;->e:Lxb7;

    invoke-interface {p1, v0}, Lxb7;->e(Lyb7;)V

    return-void
.end method
