.class public final Lu37;
.super Ls47;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public final e:Ljava/net/SocketAddress;

.field public final f:Ljava/net/InetSocketAddress;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lu37$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls47;-><init>()V

    const-string p5, "proxyAddress"

    .line 2
    invoke-static {p1, p5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "targetAddress"

    .line 3
    invoke-static {p2, p5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of p5, p1, Ljava/net/InetSocketAddress;

    if-eqz p5, :cond_0

    .line 5
    move-object p5, p1

    check-cast p5, Ljava/net/InetSocketAddress;

    invoke-virtual {p5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    const-string v0, "The proxy address %s is not resolved"

    invoke-static {p5, v0, p1}, Lc50;->F(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lu37;->e:Ljava/net/SocketAddress;

    .line 7
    iput-object p2, p0, Lu37;->f:Ljava/net/InetSocketAddress;

    .line 8
    iput-object p3, p0, Lu37;->g:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lu37;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lu37;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lu37;

    .line 3
    iget-object v0, p0, Lu37;->e:Ljava/net/SocketAddress;

    iget-object v2, p1, Lu37;->e:Ljava/net/SocketAddress;

    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu37;->f:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lu37;->f:Ljava/net/InetSocketAddress;

    .line 4
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu37;->g:Ljava/lang/String;

    iget-object v2, p1, Lu37;->g:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu37;->h:Ljava/lang/String;

    iget-object p1, p1, Lu37;->h:Ljava/lang/String;

    .line 6
    invoke-static {v0, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lu37;->e:Ljava/net/SocketAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lu37;->f:Ljava/net/InetSocketAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lu37;->g:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lu37;->h:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lu37;->e:Ljava/net/SocketAddress;

    const-string v2, "proxyAddr"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    iget-object v1, p0, Lu37;->f:Ljava/net/InetSocketAddress;

    const-string v2, "targetAddr"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    iget-object v1, p0, Lu37;->g:Ljava/lang/String;

    const-string v2, "username"

    .line 6
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 7
    iget-object v1, p0, Lu37;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "hasPassword"

    .line 8
    invoke-virtual {v0, v2, v1}, Lnd5;->c(Ljava/lang/String;Z)Lnd5;

    .line 9
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
