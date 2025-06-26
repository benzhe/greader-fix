.class public final Lab7$b;
.super Lab7$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lx47;


# direct methods
.method public constructor <init>(Lx47;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lab7$e;-><init>(Lab7$a;)V

    const-string v0, "status"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lab7$b;->a:Lx47;

    return-void
.end method


# virtual methods
.method public a(Lc47$f;)Lc47$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lab7$b;->a:Lx47;

    invoke-virtual {p1}, Lx47;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lc47$e;->e:Lc47$e;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lab7$b;->a:Lx47;

    invoke-static {p1}, Lc47$e;->a(Lx47;)Lc47$e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lab7$e;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lab7$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lab7$b;->a:Lx47;

    check-cast p1, Lab7$b;

    iget-object v1, p1, Lab7$b;->a:Lx47;

    invoke-static {v0, v1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lab7$b;->a:Lx47;

    .line 2
    invoke-virtual {v0}, Lx47;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lab7$b;->a:Lx47;

    invoke-virtual {p1}, Lx47;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lab7$b;

    .line 2
    new-instance v1, Lnd5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lnd5;-><init>(Ljava/lang/String;Lmd5;)V

    .line 3
    iget-object v0, p0, Lab7$b;->a:Lx47;

    const-string v2, "status"

    .line 4
    invoke-virtual {v1, v2, v0}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    invoke-virtual {v1}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
