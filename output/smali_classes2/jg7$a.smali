.class public final Ljg7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg7;
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
        "Ltb7<",
        "TT;>;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Lcc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcc7<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lic7;


# direct methods
.method public constructor <init>(Lcc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljg7$a;->e:Lcc7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lyc7;->e:Lyc7;

    iput-object v0, p0, Ljg7$a;->f:Lic7;

    .line 2
    iget-object v0, p0, Ljg7$a;->e:Lcc7;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lyc7;->e:Lyc7;

    iput-object v0, p0, Ljg7$a;->f:Lic7;

    .line 2
    iget-object v0, p0, Ljg7$a;->e:Lcc7;

    invoke-interface {v0, p1}, Lcc7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljg7$a;->f:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Ljg7$a;->f:Lic7;

    .line 3
    iget-object p1, p0, Ljg7$a;->e:Lcc7;

    invoke-interface {p1, p0}, Lcc7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljg7$a;->f:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    .line 2
    sget-object v0, Lyc7;->e:Lyc7;

    iput-object v0, p0, Ljg7$a;->f:Lic7;

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lyc7;->e:Lyc7;

    iput-object p1, p0, Ljg7$a;->f:Lic7;

    .line 2
    iget-object p1, p0, Ljg7$a;->e:Lcc7;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
