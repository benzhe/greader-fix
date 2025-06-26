.class public Lga7$a;
.super Lga7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lca7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca7<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lga7$e;


# direct methods
.method public constructor <init>(Lca7;Lca7;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lca7;Lca7;Ljava/security/Provider;Lga7$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca7<",
            "Ljava/net/Socket;",
            ">;",
            "Lca7<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lca7<",
            "Ljava/net/Socket;",
            ">;",
            "Lca7<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/security/Provider;",
            "Lga7$e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p7}, Lga7;-><init>(Ljava/security/Provider;)V

    .line 2
    iput-object p1, p0, Lga7$a;->e:Lca7;

    .line 3
    iput-object p2, p0, Lga7$a;->f:Lca7;

    .line 4
    iput-object p5, p0, Lga7$a;->g:Lca7;

    .line 5
    iput-object p6, p0, Lga7$a;->h:Lca7;

    .line 6
    iput-object p8, p0, Lga7$a;->i:Lga7$e;

    return-void
.end method


# virtual methods
.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
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
    iget-object v2, p0, Lga7$a;->e:Lca7;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lca7;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lga7$a;->f:Lca7;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lca7;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p2, p0, Lga7$a;->h:Lca7;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lca7;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Lga7;->b(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 7
    iget-object p3, p0, Lga7$a;->h:Lca7;

    invoke-virtual {p3, p1, p2}, Lca7;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public d(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lga7$a;->g:Lca7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca7;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget-object v0, p0, Lga7$a;->g:Lca7;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lca7;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 5
    new-instance v2, Ljava/lang/String;

    sget-object v0, Lja7;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2
    return-object v2
.end method

.method public e()Lga7$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lga7$a;->i:Lga7$e;

    return-object v0
.end method
