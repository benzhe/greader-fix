.class public final Ljq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljq;->a(Lnb7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnb7;

.field public final synthetic b:Len;


# direct methods
.method public constructor <init>(Lnb7;Len;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljq$a;->a:Lnb7;

    iput-object p2, p0, Ljq$a;->b:Len;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lin;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lin;->a:I

    const-string v1, "onBillingSetupFinished response "

    const-string v2, " isReady "

    .line 2
    invoke-static {v1, v0, v2}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljq$a;->b:Len;

    invoke-virtual {v2}, Len;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc88;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Ljq$a;->a:Lnb7;

    const-string v2, "it"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lje7$a;

    invoke-virtual {v1}, Lje7$a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Ljq$a;->a:Lnb7;

    iget-object v0, p0, Ljq$a;->b:Len;

    invoke-interface {p1, v0}, Lnb7;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ljq$a;->a:Lnb7;

    invoke-static {p1}, Lmq;->a(Lin;)Lmq;

    move-result-object p1

    check-cast v0, Lje7$a;

    .line 6
    invoke-virtual {v0, p1}, Lje7$a;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Ljq$a;->b:Len;

    invoke-virtual {p1}, Len;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Ljq$a;->b:Len;

    invoke-virtual {p1}, Len;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onBillingServiceDisconnected"

    .line 1
    invoke-static {v1, v0}, Lc88;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ljq$a;->a:Lnb7;

    const-string v1, "it"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lje7$a;

    invoke-virtual {v0}, Lje7$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ljq$a;->a:Lnb7;

    invoke-interface {v0}, Lnb7;->a()V

    :cond_0
    return-void
.end method
