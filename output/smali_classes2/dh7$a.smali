.class public final Ldh7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldh7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lyb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lyb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Lxb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxb7<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final g:Lcd7;

.field public h:Z


# direct methods
.method public constructor <init>(Lyb7;Lxb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;",
            "Lxb7<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldh7$a;->e:Lyb7;

    .line 3
    iput-object p2, p0, Ldh7$a;->f:Lxb7;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ldh7$a;->h:Z

    .line 5
    new-instance p1, Lcd7;

    invoke-direct {p1}, Lcd7;-><init>()V

    iput-object p1, p0, Ldh7$a;->g:Lcd7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldh7$a;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ldh7$a;->h:Z

    .line 3
    iget-object v0, p0, Ldh7$a;->f:Lxb7;

    invoke-interface {v0, p0}, Lxb7;->e(Lyb7;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ldh7$a;->e:Lyb7;

    invoke-interface {v0}, Lyb7;->a()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldh7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldh7$a;->g:Lcd7;

    invoke-virtual {v0, p1}, Lcd7;->b(Lic7;)Z

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldh7$a;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ldh7$a;->h:Z

    .line 3
    :cond_0
    iget-object v0, p0, Ldh7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->d(Ljava/lang/Object;)V

    return-void
.end method
