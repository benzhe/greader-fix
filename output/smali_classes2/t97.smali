.class public final Lt97;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lha7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lha7;

    .line 1
    sget-object v1, Lha7;->i:Lha7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lt97;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILz97;)Ljavax/net/ssl/SSLSocket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sslSocketFactory"

    .line 1
    invoke-static {p0, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "socket"

    .line 2
    invoke-static {p2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spec"

    .line 3
    invoke-static {p5, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p2, p3, p4, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 5
    const-class p2, Ljava/lang/String;

    .line 6
    iget-object p4, p5, Lz97;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 7
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p4

    .line 8
    iget-object v2, p5, Lz97;->b:[Ljava/lang/String;

    .line 9
    invoke-static {p2, v2, p4}, Lja7;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p4, v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p5, Lz97;->c:[Ljava/lang/String;

    invoke-static {p2, v3, v2}, Lja7;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 12
    new-instance v2, Lz97$b;

    invoke-direct {v2, p5}, Lz97$b;-><init>(Lz97;)V

    .line 13
    iget-boolean v3, v2, Lz97$b;->a:Z

    if-eqz v3, :cond_d

    if-nez p4, :cond_1

    .line 14
    iput-object v1, v2, Lz97$b;->b:[Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    iput-object p4, v2, Lz97$b;->b:[Ljava/lang/String;

    .line 16
    :goto_1
    iget-boolean p4, v2, Lz97$b;->a:Z

    if-eqz p4, :cond_c

    if-nez p2, :cond_2

    .line 17
    iput-object v1, v2, Lz97$b;->c:[Ljava/lang/String;

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, v2, Lz97$b;->c:[Ljava/lang/String;

    .line 19
    :goto_2
    invoke-virtual {v2}, Lz97$b;->a()Lz97;

    move-result-object p2

    .line 20
    iget-object p4, p2, Lz97;->c:[Ljava/lang/String;

    invoke-virtual {p0, p4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 21
    iget-object p2, p2, Lz97;->b:[Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 22
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 23
    :cond_3
    sget-object p2, Lr97;->d:Lr97;

    .line 24
    iget-boolean p4, p5, Lz97;->d:Z

    if-eqz p4, :cond_4

    .line 25
    sget-object v1, Lt97;->a:Ljava/util/List;

    .line 26
    :cond_4
    invoke-virtual {p2, p0, p3, v1}, Lr97;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 27
    sget-object p4, Lt97;->a:Ljava/util/List;

    .line 28
    sget-object p5, Lha7;->f:Lha7;

    const-string v1, "http/1.0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 29
    :cond_5
    sget-object p5, Lha7;->g:Lha7;

    const-string v1, "http/1.1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    sget-object p5, Lha7;->i:Lha7;

    const-string v1, "h2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 31
    :cond_7
    sget-object p5, Lha7;->h:Lha7;

    const-string v1, "spdy/3.1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 32
    :goto_3
    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " are supported, but negotiated protocol is %s"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 33
    invoke-static {p5, p4, p2}, Lc50;->F(ZLjava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_8

    .line 34
    sget-object p1, Lba7;->a:Lba7;

    :cond_8
    const-string p2, "["

    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_9
    move-object p2, p3

    .line 37
    :goto_4
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p0

    .line 38
    :cond_a
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string p1, "Cannot verify hostname: "

    invoke-static {p1, p3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected protocol: "

    invoke-static {p1, p2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
