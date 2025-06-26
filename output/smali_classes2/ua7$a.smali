.class public final Lua7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj47$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lak6;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/Reference<",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lik6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lak6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lua7$a;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lak6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lua7$a;->b:Lak6;

    .line 3
    invoke-interface {p1}, Lak6;->k()Lik6;

    move-result-object p1

    iput-object p1, p0, Lua7$a;->a:Lik6;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lta7;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lta7;

    .line 3
    iget-object v0, v0, Lta7;->f:Lik6;

    .line 4
    iget-object v1, p0, Lua7$a;->a:Lik6;

    if-ne v0, v1, :cond_1

    .line 5
    :try_start_0
    move-object v0, p1

    check-cast v0, Lta7;

    .line 6
    iget-object v0, v0, Lta7;->e:Lak6;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 8
    :try_start_1
    instance-of v1, p1, Lb47;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_7

    const/high16 v3, 0x400000

    if-gt v1, v3, :cond_7

    .line 10
    sget-object v0, Lua7$a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_2

    array-length v4, v3

    if-ge v4, v1, :cond_3

    .line 11
    :cond_2
    new-array v3, v1, [B

    .line 12
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    :goto_0
    if-lez v0, :cond_5

    sub-int v4, v1, v0

    .line 13
    invoke-virtual {p1, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v4

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 14
    invoke-static {v3, v2, v1, v2}, Lri6;->g([BIIZ)Lri6;

    move-result-object v0

    goto :goto_2

    :cond_6
    sub-int p1, v1, v0

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size inaccurate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v1, :cond_8

    .line 16
    iget-object v0, p0, Lua7$a;->b:Lak6;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    .line 17
    invoke-static {p1}, Lri6;->f(Ljava/io/InputStream;)Lri6;

    move-result-object v0

    :cond_9
    const p1, 0x7fffffff

    .line 18
    iput p1, v0, Lri6;->c:I

    .line 19
    :try_start_2
    iget-object p1, p0, Lua7$a;->a:Lik6;

    sget-object v1, Lua7;->a:Lyi6;

    invoke-interface {p1, v0, v1}, Lik6;->b(Lri6;Lyi6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lak6;
    :try_end_2
    .catch Lkj6; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    :try_start_3
    invoke-virtual {v0, v2}, Lri6;->a(I)V
    :try_end_3
    .catch Lkj6; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, p1

    :goto_3
    return-object v0

    :catch_1
    move-exception v0

    .line 21
    :try_start_4
    iput-object p1, v0, Lkj6;->e:Lak6;

    .line 22
    throw v0
    :try_end_4
    .catch Lkj6; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 23
    sget-object v0, Lx47;->m:Lx47;

    const-string v1, "Invalid protobuf byte sequence"

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    invoke-virtual {p1}, Lx47;->a()Lz47;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    .line 1
    check-cast p1, Lak6;

    .line 2
    new-instance v0, Lta7;

    iget-object v1, p0, Lua7$a;->a:Lik6;

    invoke-direct {v0, p1, v1}, Lta7;-><init>(Lak6;Lik6;)V

    return-object v0
.end method
