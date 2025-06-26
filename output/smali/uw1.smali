.class public final synthetic Luw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lmw1;

.field public final f:Law2;

.field public final g:Law2;


# direct methods
.method public constructor <init>(Lmw1;Law2;Law2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luw1;->e:Lmw1;

    iput-object p2, p0, Luw1;->f:Law2;

    iput-object p3, p0, Luw1;->g:Law2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Luw1;->e:Lmw1;

    iget-object v1, p0, Luw1;->f:Law2;

    iget-object v2, p0, Luw1;->g:Law2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsm0;

    .line 3
    iget-object v3, v3, Lsm0;->i:Ljava/lang/String;

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 5
    iget-object v0, v0, Lmw1;->j:Ljava/util/HashMap;

    new-instance v4, Lxw1;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm0;

    invoke-direct {v4, v1, v2}, Lxw1;-><init>(Lsm0;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lts2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
