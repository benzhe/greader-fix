.class public final Lwe7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe7;
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
        "TT;>;",
        "Ly38;"
    }
.end annotation


# instance fields
.field public final e:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public f:Lic7;


# direct methods
.method public constructor <init>(Lx38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwe7$a;->e:Lx38;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwe7$a;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwe7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwe7$a;->f:Lic7;

    .line 2
    iget-object p1, p0, Lwe7$a;->e:Lx38;

    invoke-interface {p1, p0}, Lx38;->e(Ly38;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwe7$a;->f:Lic7;

    invoke-interface {v0}, Lic7;->k()V

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
    iget-object v0, p0, Lwe7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public l(J)V
    .locals 0

    return-void
.end method
