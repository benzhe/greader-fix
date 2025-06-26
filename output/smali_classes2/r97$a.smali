.class public final Lr97$a;
.super Lr97;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, [B

    new-instance v1, Lca7;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const-string v6, "setUseSessionTickets"

    invoke-direct {v1, v4, v6, v3}, Lca7;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lr97$a;->e:Lca7;

    .line 2
    new-instance v1, Lca7;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const-string v6, "setHostname"

    invoke-direct {v1, v4, v6, v3}, Lca7;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lr97$a;->f:Lca7;

    .line 3
    new-instance v1, Lca7;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v6, "getAlpnSelectedProtocol"

    invoke-direct {v1, v0, v6, v3}, Lca7;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lr97$a;->g:Lca7;

    .line 4
    new-instance v1, Lca7;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v5

    const-string v6, "setAlpnProtocols"

    invoke-direct {v1, v4, v6, v3}, Lca7;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lr97$a;->h:Lca7;

    .line 5
    new-instance v1, Lca7;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v6, "getNpnSelectedProtocol"

    invoke-direct {v1, v0, v6, v3}, Lca7;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lr97$a;->i:Lca7;

    .line 6
    new-instance v1, Lca7;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const-string v0, "setNpnProtocols"

    invoke-direct {v1, v4, v0, v2}, Lca7;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lr97$a;->j:Lca7;

    return-void
.end method

.method public constructor <init>(Lga7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr97;-><init>(Lga7;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lha7;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object v2, Lr97$a;->e:Lca7;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lca7;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Lr97$a;->f:Lca7;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lca7;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lga7;->b(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 4
    iget-object p3, p0, Lr97;->a:Lga7;

    invoke-virtual {p3}, Lga7;->e()Lga7$e;

    move-result-object p3

    sget-object v0, Lga7$e;->e:Lga7$e;

    if-ne p3, v0, :cond_1

    .line 5
    sget-object p3, Lr97$a;->h:Lca7;

    invoke-virtual {p3, p1, p2}, Lca7;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p3, p0, Lr97;->a:Lga7;

    invoke-virtual {p3}, Lga7;->e()Lga7$e;

    move-result-object p3

    sget-object v0, Lga7$e;->g:Lga7$e;

    if-eq p3, v0, :cond_2

    .line 7
    sget-object p3, Lr97$a;->j:Lca7;

    invoke-virtual {p3, p1, p2}, Lca7;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lr97;->a:Lga7;

    invoke-virtual {v0}, Lga7;->e()Lga7$e;

    move-result-object v0

    sget-object v1, Lga7$e;->e:Lga7$e;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lr97$a;->g:Lca7;

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1, v1}, Lca7;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lja7;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lr97;->b:Ljava/util/logging/Logger;

    .line 6
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Failed calling getAlpnSelectedProtocol()"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lr97;->a:Lga7;

    invoke-virtual {v0}, Lga7;->e()Lga7$e;

    move-result-object v0

    sget-object v1, Lga7$e;->g:Lga7$e;

    if-eq v0, v1, :cond_1

    .line 8
    :try_start_1
    sget-object v0, Lr97$a;->i:Lca7;

    new-array v1, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, p1, v1}, Lca7;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lja7;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 11
    sget-object v0, Lr97;->b:Ljava/util/logging/Logger;

    .line 12
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Failed calling getNpnSelectedProtocol()"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lha7;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lr97$a;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lr97;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
