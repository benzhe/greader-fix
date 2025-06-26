.class public final Lcg7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcg7;
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
.field public final e:Ltb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltb7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Lvc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public g:Lic7;


# direct methods
.method public constructor <init>(Ltb7;Lvc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;",
            "Lvc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcg7$a;->e:Ltb7;

    .line 3
    iput-object p2, p0, Lcg7$a;->f:Lvc7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcg7$a;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcg7$a;->g:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcg7$a;->g:Lic7;

    .line 3
    iget-object p1, p0, Lcg7$a;->e:Ltb7;

    invoke-interface {p1, p0}, Ltb7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg7$a;->g:Lic7;

    .line 2
    sget-object v1, Lyc7;->e:Lyc7;

    iput-object v1, p0, Lcg7$a;->g:Lic7;

    .line 3
    invoke-interface {v0}, Lic7;->k()V

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
    :try_start_0
    iget-object v0, p0, Lcg7$a;->f:Lvc7;

    invoke-interface {v0, p1}, Lvc7;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcg7$a;->e:Ltb7;

    invoke-interface {p1}, Ltb7;->a()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcg7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method
